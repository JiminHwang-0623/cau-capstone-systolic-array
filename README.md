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
```

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
```

#### ③ Read 주소 생성부 치환

Read 주소 생성부의 base 주소를 기존의 `dram_base_addr_rd` 대신  
`base_addr_current`로 변경하여, 타일 경계 시 자동으로 새로운 base 주소에서  
데이터를 읽어올 수 있도록 수정한다.

```verilog
// 기존 코드
assign read_addr = dram_base_addr_rd + {req_blk_idx_rd, 6'b0};

// 변경 코드 (Step 2 적용)
assign read_addr = base_addr_current + {req_blk_idx_rd, 6'b0};
```

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


# ⚙️ Step 3 — Lightweight Scheduler FSM (WARMUP → STEADY → DRAIN)

---

## 🎯 목적
이 단계의 목표는 **연산–데이터 전송의 오버랩(Overlap)** 을 구현하는 것입니다.  
즉, 이전 타일을 **연산(Compute)** 하는 동안 다음 타일 데이터를 **프리패치(Prefetch)** 하여  
**데이터 로드 지연(latency)** 을 숨기는 경량 스케줄러 FSM을 구축합니다.

Step 1~2 단계에서 구축된 핸드셰이크(`prefetch_req`, `prefetch_done`, `compute_req`, `compute_done`)와  
주소 더블버퍼링(`base_addr_current`, `base_addr_next`)을 기반으로 FSM을 추가합니다.

---

## 🧠 동작 개념
FSM은 3 단계로 구성됩니다:

| 상태 | 역할 | 설명 |
|------|------|------|
| **SCH_WARMUP** | 초기 준비 | 첫 타일 데이터를 프리패치(`prefetch_req`)하고 준비 완료 후 `compute_req` 1회 발행 |
| **SCH_STEADY** | 오버랩 구간 | 코어는 계속 연산 중이며, DMA는 이전 타일이 끝나는 즉시 다음 타일을 프리패치 |
| **SCH_DRAIN** | 마지막 타일 마무리 | 마지막 타일의 연산만 남은 상태로 새로운 프리패치는 없음 |

FSM은 다음 규칙으로 동작합니다:
- `prefetch_req` 발행 → DMA Read 시작(`i_prefetch_req`)  
- DMA Read FSM 내부에서 모든 블록 전송이 끝나면 `o_prefetch_done` 1 펄스 발생  
- `prefetch_done` 발생 후 `prefetch_inflight` 0 → 다음 타일 예약 (`prefetch_req`)  
- `tile_current_index` 는 `prefetch_done` 시 +1 되어 타일 경계 추적  
- 마지막 타일이면 `has_next_tile = 0` → 프리패치 중단, `SCH_DRAIN` 진입

---

## 🧩 주요 수정 내용

### 1️⃣ FSM 정의 추가 (`sa_core_pipeline.sv`)
```verilog
typedef enum logic [1:0] {SCH_WARMUP, SCH_STEADY, SCH_DRAIN} sch_e;
sch_e sstate, sstate_n;

logic prefetch_inflight;
logic [15:0] tile_current_index_q;
parameter int unsigned NUM_TILES_P = 8;
wire [15:0] num_tiles_w = NUM_TILES_P;
wire has_next_tile = (tile_current_index_q < (num_tiles_w - 16'd1));
```

## 2️⃣ 상태 / 토큰 갱신

FSM의 현재 상태(`sstate`), 프리패치 토큰(`prefetch_inflight`),  
그리고 타일 인덱스(`tile_current_index_q`)를 매 클럭마다 갱신합니다.

- `prefetch_req` 발생 시 → inflight=1  
- `prefetch_done` 발생 시 → inflight=0  
- `prefetch_done` 발생 시 → 타일 인덱스 +1  
- 리셋 시 모든 값 초기화

```verilog
always_ff @(posedge clk or negedge rst_n) begin
  if (!rst_n) begin
    sstate <= SCH_WARMUP;
    prefetch_inflight <= 1'b0;
    tile_current_index_q <= '0;
  end else begin
    sstate <= sstate_n;
    if (prefetch_req)  prefetch_inflight <= 1'b1;
    if (prefetch_done) prefetch_inflight <= 1'b0;
    if (prefetch_done) tile_current_index_q <= tile_current_index_q + 16'd1;
  end
end
```

## 3️⃣ FSM 동작 논리

FSM은 **3단계**로 동작합니다:  
`SCH_WARMUP` → `SCH_STEADY` → `SCH_DRAIN`.

- **WARMUP** : 첫 타일 준비 및 연산 시작 (`compute_req` 1회)  
- **STEADY** : 프리패치–컴퓨트 오버랩 반복  
- **DRAIN** : 마지막 타일, 추가 프리패치 없음

```verilog
always_comb begin
  sstate_n = sstate;
  prefetch_req = 1'b0;
  compute_req  = 1'b0;

  unique case (sstate)
    // --- 초기 준비 ---
    SCH_WARMUP: begin
      if (has_next_tile && !prefetch_inflight)
        prefetch_req = 1'b1;          // 첫 타일 프리패치
      if (prefetch_done) begin
        compute_req = 1'b1;           // 코어 전체 스타트(1회)
        if (has_next_tile && !prefetch_inflight)
          prefetch_req = 1'b1;        // 다음 타일 예약
        sstate_n = (num_tiles_w == 16'd1) ? SCH_DRAIN : SCH_STEADY;
      end
    end

    // --- 오버랩 구간 ---
    SCH_STEADY: begin
      if (has_next_tile && !prefetch_inflight)
        prefetch_req = 1'b1;          // 다음 타일 프리패치
      if (tile_current_index_q == (num_tiles_w - 16'd1))
        sstate_n = SCH_DRAIN;
    end

    // --- 마지막 타일 ---
    SCH_DRAIN: begin
      // 프리패치 없음, compute만 지속
    end
  endcase
end
```

## 4️⃣ DMA 제어 수정 (`axi_dma_ctrl.sv`)

기존에는 `o_prefetch_done`이 단일 read 블록(`i_read_done`) 기준이었지만,  
Step 3에서는 **타일 전체 완료 시점(ctrl_read_done)** 을 기준으로 수정해야 한다.

```diff
- assign o_prefetch_done = i_read_done;
+ assign o_prefetch_done = ctrl_read_done;   // 타일 전체 완료 펄스로 변경
```

---

## 🧪 검증 포인트 (시뮬레이션)

| 항목 | 기대 결과 |
|------|-------------|
| FSM 전이 | `SCH_WARMUP → SCH_STEADY → SCH_DRAIN` |
| Prefetch 요청 | 타일 수(`NUM_TILES_P`) 만큼 반복 발행 |
| `prefetch_inflight` | 1 → 0 → 1 → 0 패턴 반복 |
| `tile_current_index_q` | 0 → 7 까지 타일 단위 증가 |
| `base_addr_current` | `0x00 → 0x80 → 0x100 → ...` 타일마다 1회 증가 |
| DMA Read FSM | 각 타일마다 0→2→0 사이클 반복 |
| 마지막 타일 | `has_next_tile=0`, FSM=`SCH_DRAIN`, 프리패치 중단 확인 |

🧩 **파형 예시 주요 신호**
- `prefetch_req`, `prefetch_done`, `prefetch_inflight`
- `i_prefetch_req`, `o_prefetch_done`
- `o_ctrl_read`, `o_read_addr`, `base_addr_current`, `base_addr_next`
- `tile_current_index_q`, `current_state`

📘 **검증 성공 기준**
> 타일 수만큼 `prefetch_req`와 `prefetch_done`이 교대로 발생하고,  
> `base_addr_current`가 stride(0x80) 단위로 증가하며,  
> 마지막 타일에서 FSM이 `SCH_DRAIN`으로 전이되면 Step 3 성공.

## ✅ 결과 요약

- FSM 스케줄러가 **연산–프리패치 오버랩 구조**로 정상 동작함을 확인.  
- `prefetch_req` / `prefetch_done` / `compute_req` 의 타이밍이 정확히 일치.  
- DMA Read 주소(`o_read_addr`)가 타일당 stride(0x80)씩 증가.  
- `prefetch_inflight` 토큰과 `has_next_tile` 조건이 정상적으로 프리패치 중복을 방지.  
- 마지막 타일에서 자동으로 `SCH_DRAIN`으로 전이되며 프리패치 중단.  

📈 **결론:**  
> Step 3에서 연산과 DMA 전송이 완전히 겹치는  
> **Lightweight Pipeline Scheduler FSM** 이 구현되었다.  
> 이후 Step 4(미리시작 큐) 및 Step 5(파이프라인 오케스트레이션) 개발의 기반이 마련됨.

# 🧩 Step 4 — DMA Read 1-Entry Prefetch Queue (Pending Mechanism)

---

## 🎯 목적
Step 3에서 DMA Read FSM은 정상적인 타일 단위 동작을 수행하지만,  
프리패치(`prefetch_req`)가 FSM 활성 중(`rd_active = 1`)에 겹치는 **경계 공백 상황**이 생길 수 있다.

Step 4의 목표는 DMA가 아직 바쁜 상태에서도 새로운 프리패치 요청을 놓치지 않도록,  
**1-entry pending 큐 (`rd_pending`)** 를 두어 요청을 임시 저장하고 IDLE 또는 DONE 진입 직후 즉시 집행하도록 하는 것이다.

> ✅ 즉, DMA Read의 타이밍 여유를 조금 줄여도 프리패치 누락이 발생하지 않도록 하는 안전장치 역할이다.

---

## ⚙️ 수정 내용 (`axi_dma_ctrl.sv`)

| 항목 | 설명 |
|------|------|
| `rd_pending` 신호 추가 | 바쁠 때(`rd_active = 1`) 들어온 `i_prefetch_req` 1회 저장 |
| `rd_active` 신호 추가 | FSM 이 IDLE이 아닐 때 1 (디버그 용도) |
| FSM 전이 보강 | `ST_IDLE`: `(i_prefetch_req || rd_pending)` 이면 착수<br>`ST_DMA_DONE`: `rd_pending` 있으면 바로 재시작 |
| 외부 I/F | 추가 포트 없음 (`i_prefetch_req`/`o_prefetch_done` 그대로 사용) |

핵심 동작 요약:
```verilog
// pending queue logic
if (i_prefetch_req && rd_active)
  rd_pending <= 1'b1;
if ((cstate_rd == ST_IDLE && i_prefetch_req) ||
    (cstate_rd == ST_DMA_DONE && rd_pending))
  rd_pending <= 1'b0;

// FSM 전이
ST_IDLE: if (i_prefetch_req || rd_pending) nstate_rd = ST_DMA;
ST_DMA_DONE: nstate_rd = (rd_pending) ? ST_DMA : ST_IDLE;
```

## 🧠 동작 개념

| 시점 | 동작 |
|------|------|
| DMA 활성 중 (`rd_active = 1`) | 새로운 `prefetch_req` 발생 시 `rd_pending = 1` 로 저장 |
| DMA 완료 (`ST_DMA_DONE`) → IDLE 복귀 | `rd_pending = 1`이면 바로 다음 클럭에 재착수 (`ST_DMA`) |
| IDLE 상태에서 요청 발생 | 기존과 동일하게 즉시 착수 (`ctrl_read = 1`) |
| Reset 또는 Drain 진입 | `rd_pending <= 0` 으로 초기화 |

📘 **요약**  
> Step 4의 pending 큐는 DMA가 바쁠 때 들어온 요청을 1회 저장했다가,  
> IDLE 또는 DONE으로 전환되자마자 즉시 집행함으로써 **요청 누락을 방지**하고  
> DMA Read의 **경계 공백을 최소화**한다.

## ✅ 시뮬레이션 관찰 포인트

| 신호 | 기대 동작 |
|------|------------|
| `rd_pending` | 기본 상황에서는 0 유지 (스케줄러가 안전하게 타이밍 보장) |
| `i_prefetch_req && rd_active` 발생 시 | `rd_pending = 1` → 다음 착수 시 0으로 소진 |
| `ST_DMA_DONE → ST_DMA` 전이 | `rd_pending`이 있을 때 gap 없이 재착수 |
| `o_ctrl_read` | 이전과 동일한 주소/버스트 시퀀스(0x80 stride) 유지 |
| `o_prefetch_done` | 타일 단위 완료 펄스 그대로 유지 |

🧩 **관찰 팁**  
> 파형에서 `rd_pending`이 거의 0이라면 정상이며,  
> DMA와 스케줄러가 완벽히 동기화된 상태임을 의미한다.

## 🔎 현재 검증 상황

- 스케줄러가 `prefetch_req`를 항상 DMA IDLE 타이밍에 내보내므로  
  `rd_pending`은 활성화되지 않음.  
- 이는 **정상 동작이며**, Step 4의 큐 가드가 실제로는 필요 없는 상태임을 의미한다.  
- 즉, `rd_pending`은 **비상용 안전장치**로만 존재하며,  
  향후 스케줄링이 더 촘촘하거나 비동기적일 때 효과가 나타난다.  

📘 **요약**  
> 현재 파형은 DMA와 스케줄러의 타이밍 정합이 완벽히 이루어진 상태이며,  
> Step 4는 안정성을 강화하는 구조적 여유 확보 단계로 기능한다.

## 📈 결과 요약

- DMA Read FSM에 **1-entry pending 큐**가 추가되어,  
  프리패치 요청이 DMA 활성 중일 때도 손실 없이 처리 가능.  
- Step 4는 실질적인 성능 향상보다는 **경계 안정성 강화 및 요청 누락 방지** 목적.  
- 시뮬레이션 결과, 기존 동작에 영향 없이 안정적으로 통합 완료됨.  
- 향후 더 타이트한 파이프라이닝이나 AXI 트래픽 혼잡 상황에서도  
  안정적 DMA Read 오버랩이 유지될 것으로 예상됨.  

✅ **결론**  
> Step 4 완료 — DMA Read 경계 공백 보호용 pending 메커니즘이 정상 추가되었으며,  
> 기존 기능과 타이밍은 그대로 유지됨.
