# 🧩 Step 1 — Lightweight Handshake Integration  
**(Prefetch Handshake + DMA Read Trigger Migration)**  

---

## 🎯 목적
기존 시스템은 `sa_core` 모듈이 직접 `axi_dma_ctrl`에 **Read/Write 트리거(`start_rd_wr`)** 를 전달하여  
데이터 전송을 순차적으로 수행하고 있었다.  

**Step 1** 의 목표는 이후 단계에서 “연산–전송 병렬화 (Pipelining)”를 구현하기 위한 사전작업으로,  
연산 모듈과 DMA 제어부 간에 **경량 핸드셰이크 신호 (prefetch / compute)** 를 새로 추가하고,  
DMA Read FSM의 **시작 트리거를 prefetch 요청 신호로 교체**하는 것이다.  

이 단계에서는 **기능 변화 없이** 기존 동작과 동일하게 동작하도록 배선만 구성하며,  
추후 단계(스케줄러 FSM 및 오버랩 구현)를 위한 구조적 기반을 마련한다.

---

## ⚙️ 수정 내역

### 🔹 `sa_core_pipeline.sv`
- **신규 내부 신호 추가**
  - `prefetch_req` : DMA Read 요청 (pipeline → DMA)
  - `prefetch_done` : DMA Read 완료 (DMA → pipeline)
  - `compute_req` : 연산 시작 (pipeline → sa_core)
  - `compute_done` : 연산 완료 (sa_core → pipeline)
- **임시 매핑 (기능 동일 유지)**  
  기존 신호를 그대로 재사용하여 동작 변화 없음:
  ```verilog
  assign compute_req   = ap_start;
  assign compute_done  = done_core;
  assign prefetch_req  = (start_rd_wr == 2'b10);
  // prefetch_done은 컨트롤러에서 올라오는 완료 신호와 맵핑
  // assign prefetch_done = read_done; // 또는 u_dma_ctrl.o_prefetch_done

# 🧩 Step 2 — 주소 더블링(Address Double-Buffering) + buf_idx 토글

---

## 🎯 목적

**Step 2**의 목표는 **DMA Read 경로에서 주소 더블버퍼 구조를 도입**하여  
각 타일의 데이터 로드가 끝나자마자 다음 타일의 메모리 주소로 자동 전환되도록 만드는 것이다.  
이때 추가적인 DMA 채널은 만들지 않으며, 기존 FSM을 유지한 채 **주소 관리만 확장**한다.

---

## ⚙️ 수정 내역

### 🔹 대상 파일
`axi_dma_ctrl.sv` (DMA 제어부)

---

### 🔹 변경 개요

| 구분 | 내용 |
|------|------|
| 신규 신호 | `base_addr_current`, `base_addr_next`, `tile_current_index`, `buf_idx`, `tile_stride_rd` |
| 핵심 개념 | 타일 단위 주소 더블링 (한 타일 종료 시 `base_addr_current` ← `base_addr_next`) |
| 영향 범위 | DMA Read 경로 (Write FSM은 변경 없음) |
| 기존 FSM | 유지 (`ST_IDLE`, `ST_DMA`, `ST_DMA_WAIT`, `ST_DMA_SYNC`, `ST_DMA_DONE`) |

---

### 🔹 수정 상세

#### ① 내부 신호 추가
```verilog
logic        buf_idx;                   // 0/1 토글
logic [31:0] base_addr_current;         // 현재 타일 base 주소
logic [31:0] base_addr_next;            // 다음 타일 base 주소(예측)
logic [15:0] tile_current_index;        // 현재 타일 인덱스
wire [31:0]  tile_stride_rd = {max_req_blk_idx, 6'b0}; // 블록 수 * 64B

#### ② 단일 always 블록에서 리셋/예측/롤오버 통합
```verilog
wire last_read_of_tile = (req_blk_idx_rd == max_req_blk_idx - 16'd1);
wire tile_read_done    = (read_done && last_read_of_tile);

always_ff @(posedge clk or negedge rstn) begin
  if(~rstn) begin
    buf_idx            <= 1'b0;
    tile_current_index <= '0;
    base_addr_current  <= dram_base_addr_rd;
    base_addr_next     <= dram_base_addr_rd + tile_stride_rd;
  end else begin
    // 프리패치 들어올 때 다음 타일 base 예측
    if (i_prefetch_req)
      base_addr_next <= base_addr_current + tile_stride_rd;

    // 타일 경계에서 롤오버 및 buf_idx 토글
    if (tile_read_done) begin
      buf_idx            <= ~buf_idx;
      base_addr_current  <= base_addr_next;
      tile_current_index <= tile_current_index + 16'd1;
    end
  end
end

#### ③ Read 주소 생성부 치환

Read 주소 생성부의 base 주소를 기존의 `dram_base_addr_rd` 대신  
`base_addr_current`로 변경하여, 타일 경계 시 자동으로 새로운 base 주소에서  
데이터를 읽어올 수 있도록 수정한다.

```verilog
// 기존 코드
assign read_addr = dram_base_addr_rd + {req_blk_idx_rd, 6'b0};

// 변경 코드 (Step 2 적용)
assign read_addr = base_addr_current + {req_blk_idx_rd, 6'b0};

## 🧠 동작 개념 요약

| 타이밍 | 동작 |
|--------|------|
| **Reset 후** | `base_addr_current` = 시작 주소, `base_addr_next` = base + stride |
| **i_prefetch_req ↑** | 다음 타일 base를 예측 (`base_addr_next = base_addr_current + stride`) |
| **타일 내부** | `req_blk_idx_rd`가 0 → `max_req_blk_idx-1`까지 증가하며 블록 단위 Read 수행 |
| **타일 경계 (tile_read_done)** | `base_addr_current ← base_addr_next`, `buf_idx` 토글, `tile_current_index++` |
| **이후 Read** | 새로운 base 주소에서 다시 시작 (`o_read_addr` base 변경) |

📘 **요약 설명:**  
- Step 2는 기존 DMA FSM을 변경하지 않고, **주소 계산 구조만 이중화(double buffering)** 했다.  
- 한 타일의 Read가 끝나는 시점(`tile_read_done`)마다 자동으로 **다음 타일 base 주소로 전환**된다.  
- `buf_idx`는 단순히 현재/다음 버퍼의 교대 여부를 표시하며, 이후 단계(버퍼링 최적화)에 사용된다.

## ✅ 검증 포인트 (시뮬레이션 기준)

| 항목 | 기대 결과 |
|------|------------|
| **① i_prefetch_req** | 프리패치 요청 시점마다 `base_addr_next`가 갱신 (`current + stride`) |
| **② tile_read_done** | `req_blk_idx_rd == max_req_blk_idx-1` & `i_read_done` 시점에서 펄스 발생 |
| **③ base_addr_current** | 타일 경계 직후 `base_addr_next` 값으로 롤오버 |
| **④ buf_idx** | 타일 경계마다 0↔1 토글 |
| **⑤ tile_current_index** | 타일 경계마다 +1 증가 |
| **⑥ o_read_addr** | 새 base 주소(예: 0x00000000 → 0x00000080)에서 다시 시작 |
| **⑦ o_prefetch_done** | `i_read_done` 싸이클과 동일하게 1클럭 펄스 발생 |

🧩 **검증 조건:**  
- 최소 2타일 이상의 시나리오에서 시뮬레이션 수행.  
- 파형에 `base_addr_current`, `base_addr_next`, `buf_idx`, `tile_current_index`를 포함.  
- 타일 경계 시점(`tile_read_done`)에서 위 조건들이 동시에 충족되면 **Step 2 완료**로 간주.

## 🧩 현재 검증 상태

✅ **Step 2 시뮬레이션 완료 (정상 동작)**  

| 신호 | 관찰 결과 | 설명 |
|------|------------|------|
| `base_addr_current` | 타일 경계에서 `0x00 → 0x80` 롤오버 | stride(0x80)만큼 주소 전환 |
| `base_addr_next` | 0x80으로 유지 (2타일 시나리오 기준) | 다음 타일 주소 예측 정상 |
| `buf_idx` | 경계마다 0↔1 토글 | 버퍼 교대 플래그 정상 |
| `tile_current_index` | 타일마다 +1 증가 | 타일 인덱스 정상 증가 |
| `o_read_addr` | 새 base 주소에서 재시작 | 주소 더블버퍼링 동작 확인 |

📘 **요약:**  
- 2타일 기준으로 Step 2의 주소 전환 및 토글 동작이 정상 확인되었다.  
- 다음 단계(Step 3)에서 다중 프리패치(`base_addr_next` = 0x100, 0x180 …) 로직이 추가될 예정이며,  
  이를 통해 연산–전송 오버랩이 구현된다.
