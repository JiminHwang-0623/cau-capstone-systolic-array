# 🎯 Systolic Array Matrix Multiplication IP 검증 계획

> **Last Updated**: 2025-11-04  
> **Target Board**: PYNQ-Z2 (Zynq-7000)  
> **Protocol**: AXI4-Lite (Control) + AXI4-Full (Memory)

---

## 📋 목차

1. [프로젝트 개요](#1-프로젝트-개요)
2. [현재 설계 구조](#2-현재-설계-구조)
3. [파일 구조](#3-파일-구조)
4. [Testbench 전략](#4-testbench-전략)
5. [검증 항목](#5-검증-항목)
6. [앞으로 해야 할 작업들](#6-앞으로-해야-할-작업들)

---

## 1. 프로젝트 개요

### 1.1 설계 목표
- **8x8 Systolic Array 기반 Matrix Multiplication IP**
- 연산은 **unsigned int8** 대상! (signed X)
- **INT8 정밀도** (입력), **INT32 출력** (누적 결과)
- **Custom DMA Controller** (AXI4-Full Master)
- **AXI4-Lite Slave Interface** (레지스터 제어)

### 1.2 핵심 기능
```
Input:  Matrix A (8x8 INT8), Matrix B (8x8 INT8)
Output: Matrix C (8x8 INT32) = A × B

Memory Layout:
- Input:  DRAM[read_base_addr + 0x00 ~ 0x7F]  (128 bytes)
- Output: DRAM[write_base_addr + 0x00 ~ 0xFF] (256 bytes) -> 현재는 0x3F까지만 써지고 있음
```

### 1.3 동작 흐름
```
1. PS (ARM) writes control registers via S00_AXI
   ├─ 0x00: Start/Status
   ├─ 0x04: Read Base Address
   ├─ 0x08: Write Base Address
   └─ 0x0C: Reserved

2. DMA Read: DRAM → Internal DPRAM
   - Burst length: 16 beats
   - Transfer: Matrix A + B (128 bytes) -> 한 줄에 2byte, 64줄 (matrix_A_B.hex 사용 중)

3. Systolic Array Computation
   - FSM: S_IDLE → S_DATA_LOAD → S_WRITE_A → S_WRITE_B 
         → S_LOAD → S_MATMUL → S_STORE → S_OUT

4. DMA Write: Internal DPRAM → DRAM
   - Burst length: 16 beats
   - Transfer: Matrix C (256 bytes) -> 한 줄에 4byte (INT32라서) -> 64줄

5. Interrupt/Done signal to PS
```

---

## 2. 현재 설계 구조

### 2.1 계층 구조

```
sa_engine_ip_v1_0 (Top)
│
├─ S00_AXI Slave (AXI4-Lite)
│  └─ sa_engine_ip_v1_0_S00_AXI
│     ├─ Control Registers (0x00 ~ 0x10)
│     └─ Status Registers (busy, done, error)
│
└─ sa_core_pipeline (Main Engine)
   │
   ├─ axi_dma_ctrl
   │  ├─ Read address generation
   │  └─ Write address generation
   │
   ├─ dma_read (M00_AXI Read Channel)
   │  └─ AXI4-Full Master Read
   │
   ├─ dma_write (M00_AXI Write Channel)
   │  └─ AXI4-Full Master Write
   │
   └─ sa_core
      ├─ dpram_wrapper (Input Buffer)
      ├─ dpram_wrapper (Output Buffer)
      │
      └─ sa_controller
         └─ sa_unit (8x8 Systolic Array)
            ├─ sa_PE_wrapper (Processing Elements Wrapper)
            │ └─ 64 hPE (Processing Elements)
            └─ sa_RF (Processing Elements Buffer Wrapper)
              └─ 64 X_REG (Processing Elements Buffer)
      
```

### 2.2 주요 모듈 설명

| 모듈 | 파일 | 역할 |
|------|------|------|
| **Top Wrapper** | `sa_engine_ip_v1_0.v` | IP 최상위, AXI 인터페이스 연결 |
| **AXI-Lite Slave** | `sa_engine_ip_v1_0_S00_AXI.v` | 레지스터 맵 구현 |
| **Pipeline Core** | `sa_core_pipeline.sv` | DMA + Compute 통합 제어 |
| **FSM + Buffer** | `sa_core.sv` | 내부 FSM, DPRAM 관리 |
| **SA Controller** | `sa_controller.sv` | Systolic Array 데이터 로딩 |
| **Systolic Array** | `sa_unit.sv` | 8x8 PE 배열 |
| **DMA Read** | `dma_read.sv` | AXI4 Master Read 구현 |
| **DMA Write** | `dma_write.sv` | AXI4 Master Write 구현 |
| **DMA Control** | `axi_dma_ctrl.sv` | 주소 생성, 카운터 관리 |

### 2.3 레지스터 맵

| Offset | Name | Access | Description |
|--------|------|--------|-------------|
| 0x00 | CTRL/STATUS | R/W | bit[0]: Start, bit[1]: Done (R), bit[2]: Busy (R), bit[3]: Error (R) |
| 0x04 | READ_BASE | W | DMA Read Base Address |
| 0x08 | WRITE_BASE | W | DMA Write Base Address |
| 0x0C | NUM_TRANS | W | DMA transfer size (words). 현재 파이프라인에서 미사용 |
| 0x10 | MAX_BLK | W | 최대 블록 수. 현재 파이프라인에서 미사용 |

-> 현재는 0x00, 0x04, 0x08 만 사용 중중

---

## 3. 파일 구조

### 3.1 최종 디렉토리 구조

```
sa_engine_ip_1.0/
│
├── hdl/                                    ← 실제 합성할 RTL (우리가 작업하는 main IP)
│   ├── sa_engine_ip_v1_0.v                 (Top wrapper)
│   ├── sa_engine_ip_v1_0_S00_AXI.v         (AXI-Lite Slave)
│   ├── sa_engine_ip_v1_0_M00_AXI.v         (사용 안함, custom DMA 모듈들로 대체)
│   ├── sa_core_pipeline.sv                 (Main engine)
│   ├── sa_core.sv                          (FSM + DPRAM)
│   ├── sa_controller.sv                    (Systolic Array 제어)
│   ├── sa_unit.sv                          (8x8 PE Array)
│   ├── sa_PE_wrapper.sv                    (PE + Register File wrapper)
│   ├── sa_RF.sv                            (Register File, 입력 데이터 저장)
│   ├── X_REG.sv                            (X direction 레지스터)
│   ├── hPE.sv                              (Processing Element, MAC 연산)
│   ├── dpram_wrapper.sv                    (Dual-port RAM wrapper)
│   ├── axi_dma_ctrl.sv                     (DMA 제어 FSM)
│   ├── dma_read.sv                         (AXI4 Master Read)
│   └── dma_write.sv                        (AXI4 Master Write)
│
├── src/                                    ← 시뮬레이션 전용
│   ├── tb/                                 ← Testbench 파일들
│   │   ├── sa_matmul_tb.sv                 ← 메인 TB (Vivado가 제공하는 example_designs 코드에서 수정정)
│   │   ├── tb_tasks.svh                    ← 메인 TB에서 사용하는 테스트 함수들들
│   │   └── axi_vip_config.svh              ← VIP 설정
│   │
│   ├── data/                               ← 테스트 데이터 (UINT8/UINT32)
│   │   ├── matrix_A_B.hex                  ← A(64B)+B(64B) 결합, 한 줄 2바이트(LO-HI) (현재 사용 중)
│   │   ├── matrix_a.hex                    ← A만, 한 줄 2바이트(LO-HI)
│   │   ├── matrix_b.hex                    ← B만, 한 줄 2바이트(LO-HI)
│   │   ├── matrix_a.mem                    ← A만, 한 줄 1바이트(옵션)
│   │   ├── matrix_b.mem                    ← B만, 한 줄 1바이트(옵션)
│   │   └── golden_result.hex               ← 기대 결과 64개(INT32, 8헥사) (현재 사용 중)
│   │
│   ├── scripts/                            ← Python/TCL 스크립트 
│   │   ├── generate_test_vectors.py        ← 테스트 벡터 생성 (UINT8/스왑 반영) (이건 사용!!)
│   │   ├── create_bd_with_vip.tcl          ← AXI VIP 포함 BD 자동 생성 (사용X... 시뮬 환경 세팅할 때 사용함)
│   │   └── setup_sim.tcl                   ← 시뮬 파일셋/옵션 세팅 (사용X... 시뮬 환경 세팅할 때 사용함)
│   │
│   └── legacy/                             ← 기존 파일들 (이전 AIX 대회에서 사용한 시뮬 파일들)
│       ├── sa_engine_tb.v                  ← 예전 AXI3 TB
│       ├── axi_slave_if_sync.v
│       ├── axi_sram_if.v
│       ├── sram.v
│       ├── sram_ctrl.v
│       └── sync_reg_fifo.v
│
├── sim_projects/                           ← Vivado xsim 프로젝트 보관
│   └── sa_vip_test/                        ← AXI VIP 기반 시뮬 프로젝트
│       ├── sa_vip_test.xpr                 ← Vivado 프로젝트 파일
│       ├── sa_vip_test.sim/                ← xsim 실행 산출물
│       └── sa_vip_test.runs/               ← 생성된 컴파일 캐시
│
├── example_designs/                        ← Vivado 자동 생성 (건들지 않음)
│   └── bfm_design/                         ← 참고용으로만 사용
│       ├── sa_engine_ip_v1_0_tb.sv         ← 원본 TB (복사 소스)
│       ├── sa_engine_ip_v1_0_tb_include.svh
│       ├── design.tcl
│       └── bd/
│           └── sa_engine_ip_v1_0_bfm_1.bd  ← Block Design
│
├── component.xml                           ← IP 메타데이터
├── xgui/                                   ← IP GUI 정의
└── PLAN.md                                 ← 이 문서
```

### 3.2 파일 역할 요약

#### HDL (합성용)
- `hdl/` 아래의 모든 파일은 합성 대상
- 시뮬레이션 전용 코드는 `src/`에 위치

#### SRC (시뮬레이션)
- **tb/**: Testbench SystemVerilog 파일
- **data/**: 입력 데이터 및 Golden reference
- **scripts/**: 자동화 스크립트
- **legacy/**: 기존 파일 보관 (참고용)

#### Example Designs
- **Vivado IP Packager가 자동 생성**
- Block Design + VIP 포함
- **원본 유지, 복사해서 사용**

#### Sim Projects
- **Vivado 시뮬 프로젝트 스냅샷**: `sim_projects/sa_vip_test`에 xsim 설정과 wave 구성을 보관
- **자동 생성 산출물**: `.sim/`, `.runs/` 등은 Vivado에서 다시 생성되므로 직접 편집하지 않음
- **복구 용도**: GUI 설정이 꼬였을 때 이 프로젝트를 열어 baseline 환경을 복원

---

## 4. Testbench 전략

### 4.1 시뮬레이션 환경 구조

```
┌────────────────────────────────────────────────────────────────┐
│                    sa_matmul_tb.sv                             │
│  (Testbench - SystemVerilog 코드)                              │
├───────────────────────────────────────────────────────────────┤
│                                                               │
│  초기화 & 제어 로직 (initial block)                             │
│  1. Master VIP 메모리 초기화                                    │
│  2. Slave VIP로 레지스터 제어                                   │
│  3. Done 대기 & 결과 검증                                       │
│                                                               │
│            ┌                                                  │
│            ↓                                                  │
│  ┌─────────────────┐            ┌─────────────────┐           │
│  │   Slave VIP     │            │   Master VIP    │           │
│  │ (PS 제어 역할)   │            │  (DRAM 역할)     │           │
│  │                 │            │                 │           │
│  │ - AXI4-Lite     │            │ - AXI4-Full     │           │
│  │ - Master로 동작  │            │ - Slave로 동작   │◄─┐         │
│  │ - Register      │            │ - Memory Model  │  │        │
│  │   Write/Read    │            │ - 연관 배열      │  │        │
│  └────────┬────────┘            └─────────────────┘  │        │
│           │                                          │         │
│           │    ┌──────────────────────┐              │         │
│           └───►│   DUT (Your IP)      │──────────────└        │
│                │ sa_engine_ip_v1_0    │                       │
│                │                      │                       │
│                │ S00_AXI ◄─ Slave VIP │                       │
│                │ M00_AXI ─► Master VIP│                       │
│                └──────────────────────┘                       │
│                                                               │
│  ※ Slave VIP와 Master VIP는 직접 연결되지 않음                  │
│     각각 DUT의 S00_AXI, M00_AXI에 연결됨                        │
│                                                               │
│  모니터링 & 검증                                                │
│  - AXI transaction logger                                     │
│  - Protocol violation checker (VIP 자동)                       │
│  - Result comparison (golden vs. actual)                      │
└───────────────────────────────────────────────────────────────┘
```

### 4.2 VIP (Verification IP) 설명

#### Xilinx AXI VIP란?
- **Xilinx 공식 검증 IP** (무료, Vivado 포함)
- AXI 프로토콜 준수 여부 자동 체크
- 메모리 모델 내장 (연관 배열 기반)

#### VIP 동작 모드

| VIP 이름 | 모드 | 연결 | TB 관점 | 역할 |
|---------|------|------|---------|------|
| **slave_0** | Master | S00_AXI | 제어 송신 | PS(ARM) 역할, 레지스터 read/write |
| **master_0** | Slave | M00_AXI | 메모리 응답 | DDR DRAM 역할, read/write 요청 처리 |

### 4.3 테스트 시나리오

```systemverilog
// 의사 코드 (실제 구현은 sa_matmul_tb.sv)

initial begin
  // 1. Reset
  reset = 0;
  #200ns reset = 1;
  
  // 2. Master VIP 메모리 초기화 (A+B 결합 파일, 2바이트/라인 LO-HI)
  load_matrix_file("matrix_A_B.hex", 64'h0000_0000, mst_agent_0);
  
  // 3. Control Register 설정 (Slave VIP 사용)
  write_register(0x04, 32'h0000_0000);   // READ_BASE
  write_register(0x08, 32'h0000_0400);   // WRITE_BASE
  
  // 4. Start
  write_register(0x00, 32'h0000_0001);   // START = 1
  
  // 5. Done 대기
  do begin
    read_register(0x00, status);
    #100ns;
  end while (status[1] == 0);  // Wait for DONE
  
  // 6. 결과 검증 (VIP 메모리 백도어 읽기 vs golden_result.hex)
  verify_results("golden_result.hex", 64'h0000_0400, 64, mst_agent_0);
  
  // 7. 종료
  if (pass) $display("✅ TEST PASSED");
  else      $error("❌ TEST FAILED");
  $finish;
end
```

### 4.4 Golden Model

테스트 벡터는 UINT8 기준, 하드웨어가 2바이트 쌍을 [lo,hi]로 읽은 뒤 내부에서 [hi,lo]로 재해석하는 규칙을 반영함. `generate_test_vectors.py` 요약:

```python
import numpy as np, os

def swap_pairs_as_hw(x: np.ndarray) -> np.ndarray:
    flat = x.flatten(); swapped = np.empty_like(flat)
    swapped[0::2] = flat[1::2]; swapped[1::2] = flat[0::2]
    return swapped.reshape(8,8)

np.random.seed(42)
A = np.random.randint(0, 256, (8,8), dtype=np.uint8)  # UINT8
B = np.random.randint(0, 256, (8,8), dtype=np.uint8)  # UINT8
A_hw, B_hw = swap_pairs_as_hw(A), swap_pairs_as_hw(B)
C = A_hw.astype(np.uint32) @ B_hw.astype(np.uint32)   # UINT32 누적

# A+B 결합(2B/라인, LO-HI), 분리 hex/mem, golden_result.hex 생성
```

Note:
- 입력 데이터 파일은 on-wire 기준 2바이트/라인 LO-HI 형식(`*.hex`)을 사용하며, DUT는 내부에서 [hi,lo]로 재배치해 연산함.

비고:
- on-wire 파일은 2바이트/라인 LO-HI로 저장되며, DUT는 내부에서 [hi,lo]로 재배치해 연산.
- 결과는 64개 INT32를 hex 형식으로 `golden_result.hex`에 기록.

---

## 5. 검증 항목

### 5.1 Layer별 검증

```
┌─────────────────────────────────────────────────────────────┐
│ Level 1: AXI4-Lite (S00_AXI) 프로토콜                        │
│  ✅ AWVALID/AWREADY 핸드셰이크                               │
│  ✅ WVALID/WREADY 핸드셰이크                                 │
│  ✅ BVALID/BREADY 응답                                      │
│  ✅ ARVALID/ARREADY 핸드셰이크                               │
│  ✅ RVALID/RREADY 데이터 전송                                │
│  ✅ Register Write → 내부 신호 전파                          │
│  ✅ Status Register Read 정확도                             │
├────────────────────────────────────────────────────────────┤
│ Level 2: AXI4-Full Read (M00_AXI → DRAM)                   │
│  ✅ ARVALID/ARREADY 핸드셰이크                              │
│  ✅ ARLEN = 15 (16 beats burst)                           │
│  ✅ ARSIZE = 2 (4 bytes per beat)                         │
│  ✅ ARBURST = INCR                                        │
│  ✅ RDATA 수신 정확도                                       │
│  ✅ RLAST 신호 (마지막 beat)                                │
│  ✅ 내부 DPRAM에 데이터 저장 확인                             │
├────────────────────────────────────────────────────────────┤
│ Level 3: AXI4-Full Write (DRAM ← M00_AXI)                  │
│  ✅ AWVALID/AWREADY 핸드셰이크                              │
│  ✅ AWLEN = 15 (16 beats burst)                           │
│  ✅ WVALID/WREADY 핸드셰이크                                │
│  ✅ WDATA 전송 정확도                                       │
│  ✅ WLAST 신호 (마지막 beat)                                │
│  ✅ BVALID/BREADY 응답 수신                                 │
│  ✅ VIP 메모리에 올바른 주소 저장                             │
├────────────────────────────────────────────────────────────┤
│ Level 4: Functional Correctness                            │
│  ✅ FSM State Transition                                  │
│     S_IDLE → S_DATA_LOAD → S_WRITE_A → S_WRITE_B           │
│     → S_LOAD → S_MATMUL → S_STORE → S_OUT                  │
│  ✅ Matrix A/B Loading to Controller                      │
│  ✅ Systolic Array 계산 (PE MAC 동작)                      │
│  ✅ Output C = A × B 정확도                                │
│  ✅ Golden Model 비교 (모든 원소 일치)                       │
│  ✅ Done 신호 타이밍                                        │
└────────────────────────────────────────────────────────────┘
```

### 5.2 체크리스트

#### 프로토콜 검증 (VIP 자동)
- [x] AXI4-Lite: No protocol violations
- [x] AXI4-Full Read: No protocol violations (AxCACHE warnings observed)
- [x] AXI4-Full Write: No protocol violations (AxCACHE warnings observed)
- [x] Burst alignment 체크
- [x] Response 체크 (RESP = OKAY)

Note: Xilinx AXI VIP reported AxCACHE narrow-support warnings on AR/AW; no ERROR/FATAL observed in this run.

#### 기능 검증 (Manual)
- [x] 레지스터 read/write 정확도
- [x] DMA read 주소 정확도
- [x] DMA write 주소 정확도
- [x] Matrix multiplication 결과 정확도
- [x] 타이밍 (latency 측정)

#### Waveform 확인
- [x] `sa_core.c_state` FSM 확인인
- [x] `M_AXI_ARADDR`, `M_AXI_ARVALID`, `M_AXI_ARREADY`
- [x] `M_AXI_RDATA`, `M_AXI_RVALID`, `M_AXI_RLAST`
- [x] `M_AXI_AWADDR`, `M_AXI_WDATA`, `M_AXI_WLAST`
- [x] `dpram_in`, `dpram_out` 내부 메모리 상태

---

## 6. 앞으로 해야 할 작업들

### 6.1 현재 문제점 개선
- [x] DMA Write가 64B만 쓰는 이슈 해결 (256B 전체 쓰기)
  - [x] `sa_engine_ip_1.0/hdl/sa_core_pipeline.sv`의 고정값 제거: `num_trans`/`max_req_blk_idx`를 AXI‑Lite 레지스터(`i_num_trans_param`, `i_max_blk_param`)에 연결
  - [x] `sa_engine_ip_1.0/hdl/axi_dma_ctrl.sv` 쓰기 FSM의 블록 반복 조건(`(max_req_blk_idx>>1)`) 정합성 재검토 → 읽기와 대칭적으로 총 64워드가 쓰이도록 조정
  - [x] 검증: `M_AXI_AWLEN`/`M_AXI_WLAST`/`M_AXI_AWADDR` 파형으로 버스트 수/주소 증가 확인, 결과 64개 PASS 확인
- [x] AXI VIP 경고(AxCACHE narrow-support) 제거
  - [x] `dma_read.sv`/`dma_write.sv`의 `AR/ARCACHE`, `AW/AWCACHE`를 권장값(예: `4'b0011`)으로 설정하거나, VIP 체크 완화 API 사용
  - [x] 경고 Zero 기준이면 README 체크리스트 업데이트
- [x] 문서/체크리스트 동기화
  - [x] Output 메모리 레이아웃(현재 0x3F까지만 실쓰기) → 이슈 해결 후 `write_base_addr + 0x00 ~ 0xFF`로 갱신
  - [x] 5.2의 Burst alignment/RESP OKAY 항목은 파형/로그로 근거 확보 후 체크

### 6.2 sedong 브랜치 내용 반영
- [ ] `sedong` 브랜치 변경점 리뷰/merge (충돌 해결 포함)
- [ ] 시뮬 재생성(`sa_engine_ip_1.0/example_designs/bfm_design/design.tcl`) 및 BFM 회귀 통과
- [ ] 관련 문서(레지스터/데이터 형식/성능 수치) 업데이트

### 6.3 FPGA 보드 올려보기 (PYNQ‑Z2)
- [ ] 하드웨어 디자인 재빌드/비트스트림 생성
  - 명령: `vivado -mode batch -source sa_engine_ip_1.0/example_designs/debug_hw_design/design.tcl`
- [ ] 보드 프로그래밍 및 AXI‑Lite 드라이버 테스트(레지스터 R/W, DONE 인터럽트 확인)
- [ ] DDR 트래픽/성능 계측(주기/지연, 초당 전송량) 및 결과 검증

### 6.4 Multi‑Head Attention Layer 가속
- [ ] GEMM 타일링/스케줄러 설계(쿼리/키/밸류 경로, 8×8 타일 매핑)
- [ ] 소프트맥스/스케일 및 정규화 처리 전략 수립(정밀도/범위)
- [ ] DMA 레이아웃/버스트 계획(연속 접근, 4KB 경계, 캐시 속성)
- [ ] 기능/성능 검증 벤치 및 골든 생성 스크립트 확장

---

## 7. 생각 중인 구조

### 7-1. Maybe..?
```
sa_engine_ip_1.0/
│
├── rtl/                                 # (합성 대상 RTL 전체, 기존 hdl/를 대체/흡수)
│   ├── top/
│   │   └── sa_engine_ip_v1_0.v          (Top wrapper: AXI-Lite/IRQ/클럭/리셋 묶음)
│   │
│   ├── axi/                             # (버스·DMA 주변)
│   │   ├── s00_axi_lite.v               (AXI-Lite Slave: 레지스터 맵)
│   │   ├── axi_dma_ctrl.sv              (DMA 제어 FSM: 블록/타일 스케줄 신호 생성)
│   │   ├── dma_read.sv                  (AXI4 Master Read: A/B 스트림 인)
│   │   ├── dma_write.sv                 (AXI4 Master Write: C 스트림 아웃)
│   │   └── axi_addr_gen.sv              (주소 생성기: N,K,M·stride·burst 길이 계산)
│   │
│   ├── core/                            # (타일 스케줄·계산 코어)
│   │   ├── sa_core_pipeline.sv          (메인 엔진: tile orchestrator + DMA 파이프 조율)
│   │   ├── tile_orchestrator.sv         (Block/TILE 루프 FSM, update_A/경계 타일 핸들)
│   │   ├── tile_loader.sv               (A/B 타일 로드, ping-pong 버퍼 스위칭)
│   │   ├── tile_compute.sv              (PE array 구동, K-loop 누적 타이밍 제어)
│   │   └── tile_store.sv                (C 타일 write-back 및 완료 핸드셰이크)
│   │
│   ├── pe/                              # (시소릭 연산 유닛)
│   │   ├── pe_array_8x8.sv              (8×8 PE 배열 토폴로지·경로/레지스터 정렬)
│   │   ├── pe_int8_dsp.sv               (PE: INT8×INT8→INT32 MAC, DSP48E1 활용 버전)
│   │   ├── pe_int8_lut.sv               (PE: LUT 기반 버전, 옵션/비교용)
│   │   ├── sa_controller.sv             (SA 구동 신호 생성: shift/load/hold/clear)
│   │   ├── sa_PE_wrapper.sv             (PE wrapper: 입력 정렬·경계 zero-pad)
│   │   ├── sa_RF.sv                     (레지스터 파일: 행/열 피드용 입력 저장)
│   │   └── X_REG.sv                     (X 방향 파이프 레지스터, 타이밍/데이터 정렬)
│   │
│   ├── mem/                             # (온칩 버퍼)
│   │   ├── dpram_wrapper.sv             (듀얼포트 RAM 래퍼: A/B/C 타일 버퍼 공통화)
│   │   └── bram_pingpong.sv             (A 고정/ B 블록 스트리밍용 ping-pong 버퍼)
│   │
│   ├── pkg/                             # (공용 정의)
│   │   ├── sa_params_pkg.sv             (파라미터: TILE_SIZE, BLOCK_M, 폭/뎁스 등)
│   │   └── axi_regs_pkg.sv              (레지스터 맵/비트필드/기본값 상수)
│   │
│   └── include/
│       ├── sa_defs.svh                  (`define/어서션 매크로)
│       └── addr_map.svh                 (AXI-Lite 오프셋, update_A/N,K,M 등)
│
├── sim/                                 # (시뮬 전용; 기존 src/ 하위 재정리)
│   ├── tb/
│   │   ├── sa_matmul_tb.sv              (메인 TB: AXI VIP, 시나리오 드라이브)
│   │   ├── tb_tasks.svh                 (공용 태스크/체크/스코어보드)
│   │   └── axi_vip_config.svh           (VIP 설정)
│   ├── vectors/                         (테스트 벡터: hex/mem)
│   │   ├── matrix_A_B.hex
│   │   ├── matrix_a.hex / matrix_b.hex
│   │   ├── matrix_a.mem / matrix_b.mem
│   │   └── golden_result.hex
│   └── agents/                          (선택: monitor/driver/scoreboard 분리 시)
│
├── scripts/
│   ├── generate_test_vectors.py         (테스트 벡터 생성)
│   ├── create_bd_with_vip.tcl           (TB BD 자동 생성)
│   └── setup_sim.tcl                    (시뮬 세팅 도우미)
│
├── pynq/                                # (보드 통합/호스트)
│   ├── overlay.tcl                      (IP 통합 TCL; Z2용 BD/클럭/HP포트 설정)
│   ├── call_fpga.py                     (버퍼 할당/레지스터 셋/시작/검증 파이프)
│   └── notebook.ipynb                   (데모 노트북: Q/K/V 한 사이클 호출 예)
│
├── constraints/
│   └── pynq_z2.xdc                      (100 MHz 클럭/false-path/CDC 등 제약)
│
├── docs/
│   ├── INTERFACE.md                     (포트/레지스터/시퀀스 다이어그램)
│   ├── REGISTER_MAP.md                  (AXI-Lite 레지스터 상세표)
│   ├── DATAFLOW.md                      (Block/TILE/K-loop 파이프 설계 문서)
│   └── PLAN.md                          (로드맵/To-do)
│
├── example_designs/                     (Vivado 자동 생성, 그대로 유지)
├── component.xml
└── xgui/
```  
  
### 7-2. 각 모듈 설명

A) 기존 파일 -> 제안 구조(경로/이름) 매핑  

* `sa_engine_ip_v1_0.v` → `rtl/top/sa_engine_ip_v1_0.v`
  (Top wrapper 그대로, 위치만 이동)

* `sa_engine_ip_v1_0_S00_AXI.v` → `rtl/axi/s00_axi_lite.v`
  (AXI-Lite 슬레이브, 파일명만 짧고 명확하게)

* `sa_engine_ip_v1_0_M00_AXI.v` → **제거(보류 폴더로 이동 가능)**
  (현재 미사용. 필요시 `rtl/axi/`에 보관)

* `sa_core_pipeline.sv` → `rtl/core/sa_core_pipeline.sv`
  (메인 엔진 그대로, 이후 타일 FSM 분리 시 호출자 역할)

* `axi_dma_ctrl.sv` → `rtl/axi/axi_dma_ctrl.sv`
  (DMA 제어 FSM, 위치만 이동)

* `dma_read.sv` → `rtl/axi/dma_read.sv`
  (AXI4 Master Read, 위치만 이동)

* `dma_write.sv` → `rtl/axi/dma_write.sv`
  (AXI4 Master Write, 위치만 이동)

* `sa_core.sv` → `rtl/core/sa_core.sv` (**사용 X, 변경 예정**)
  (현재 FSM+DPRAM 혼재. 점진적으로 타일 컴퓨트/버퍼 관리 쪽으로 축소)

* `dpram_wrapper.sv` → `rtl/mem/dpram_wrapper.sv`
  (DPRAM 래퍼, 메모리 계층 폴더로 이동)

* `sa_controller.sv` → `rtl/pe/sa_controller.sv`
  (SA 구동 제어 신호, PE 계층으로 이동)

* `sa_unit.sv` → `rtl/pe/pe_array_8x8.sv`
  (8×8 배열 토폴로지, 이름을 역할 중심으로 변경)

* `sa_PE_wrapper.sv` → `rtl/pe/sa_PE_wrapper.sv`
  (PE 래퍼, 위치만 이동)

* `sa_RF.sv` → `rtl/pe/sa_RF.sv`
  (레지스터 파일, 위치만 이동)

* `X_REG.sv` → `rtl/pe/X_REG.sv`
  (X방향 파이프 레지스터, 위치만 이동)

* `hPE.sv` → `rtl/pe/pe_int8_lut.sv` **(+ 추가: `rtl/pe/pe_int8_dsp.sv`)**
  (현행 LUT 곱산 버전은 pe_int8_lut로 리네임, DSP 버전은 새 파일 추가)

* `src/tb/*` → `sim/tb/*`
  (TB, 태스크, VIP 설정을 sim 전용 디렉토리로 이동)

* `src/data/*` → `sim/vectors/*`
  (테스트 벡터 전용 폴더로 이동)

* `scripts/*` → `scripts/*` (그대로)
  (생성/세팅 스크립트는 유지)

* `example_designs/*`, `component.xml`, `xgui/` → 그대로
  (Vivado 자동 생성/메타데이터는 유지)

---

B) 새로 생기는 파일(추가) & 역할  

* `rtl/axi/axi_addr_gen.sv` (AXI 주소 생성/stride, burst 길이 계산 유틸)
* `rtl/core/tile_orchestrator.sv` (Block/TILE/K-loop 상위 FSM, update_A/경계 타일 처리)
* `rtl/core/tile_loader.sv` (A 고정 + B 블록 ping-pong 로드 제어)
* `rtl/core/tile_store.sv` (C 타일 write-back 및 완료 핸드셰이크)
* `rtl/mem/bram_pingpong.sv` (2-bank ping-pong 버퍼 래퍼)
* `rtl/pkg/sa_params_pkg.sv` (TILE_SIZE, BLOCK_M 등 전역 파라미터)
* `rtl/pkg/axi_regs_pkg.sv` (레지스터 맵/비트필드 상수)
* `rtl/include/sa_defs.svh` (공용 매크로/어설션)
* `rtl/include/addr_map.svh` (AXI-Lite 오프셋·기본값)
* `pynq/call_fpga.py`, `pynq/overlay.tcl` (호스트 호출/보드 BD 스크립트)
* `constraints/pynq_z2.xdc` (클럭, false-path/CDC, 핀/HP포트 제약)
* `docs/*` (인터페이스/데이터플로/레지스터 문서)

---

C) DSP 0% → DSP 쓰도록 하는 최소 변경 포인트  

1. **DSP 버전 PE 추가**: `rtl/pe/pe_int8_dsp.sv` 작성 후 Top 파라미터 `USE_DSP`로 `pe_int8_lut`/`pe_int8_dsp` 선택.
2. **연산 한 문장으로 합치기**:

   ```verilog
   (* use_dsp = "yes" *) always_ff @(posedge clk) begin
     // 8b → 18/25b 확장으로 DSP 폭 맞추기
     p <= $signed({{17{1'b0}}, a}) * $signed({{10{1'b0}}, b}) + c;
   end
   ```

   * DSP48E1(25×18) 폭에 정렬, MREG/AREG/BREG/PREG 파이프라인 2~3단계.
3. **누적도 DSP로**(선택): MACC 모드/캐스케이드로 누적까지 DSP 내부 처리 → LUT 가산 감소.
4. **빌드 옵션**: Synthesis “Use DSP”=Yes/Auto, `report_dsp_utilization`로 사용량 확인.

---

## 7. sa_core 없는 파이프라인 전환 계획 (RTL/sim 리팩터)

본 섹션은 기존 `sa_core` 내부 FSM에 의존하던 구조를 타일 단위 파이프라인(Loader/Compute/Store)로 분해하고, `rtl/`·`sim/` 재구성에 맞춘 개발 순서와 완료 기준을 정리합니다.

### 7.1 요구 스펙 요약
- 보드/클럭: PYNQ‑Z2, PL 100 MHz
- 정밀도: INT8×INT8 → INT32 누적
- 버스: AXI4‑Lite(제어), AXI4‑Full(읽기/쓰기)
- 스케줄: 2‑레벨 타일링 + on‑chip A 상주(update_A) + B ping‑pong 스트리밍 + READ/COMPUTE/WRITE 오버랩

### 7.2 인스턴스 트리(목표)
```
sa_engine_ip_v1_0
└─ sa_core_pipeline (sa_core 제거 버전)
   ├─ axi_dma_ctrl
   │  ├─ axi_addr_gen (READ)
   │  └─ axi_addr_gen (WRITE)
   ├─ dma_read
   ├─ dma_write
   ├─ tile_orchestrator      // Block→Tile→K-loop FSM, 경계/마스크
   ├─ tile_loader            // A 상주 + B ping-pong 버퍼 채움
   │  ├─ dpram_wrapper : A_persist_buf
   │  └─ bram_pingpong : B_buf0 / B_buf1
   ├─ tile_compute           // 8×8 연산 및 K 축 누적 제어
   │  └─ sa_controller → pe_array_8x8 (pe_int8_lut/dsp)
   └─ tile_store             // C 타일 write-back
      └─ dpram_wrapper : C_tile_buf
```

### 7.3 디렉토리/파일 구조(현행)
```
sa_engine_ip_1.0/
├── rtl/
│   ├── top/        : sa_engine_ip_v1_0.v
│   ├── axi/        : axi_dma_ctrl.sv, dma_read.sv, dma_write.sv, axi_addr_gen.sv
│   ├── core/       : sa_core_pipeline.sv, tile_{orchestrator,loader,compute,store}.sv (신규)
│   ├── pe/         : pe_array_8x8.sv, pe_int8_{lut,dsp}.sv, sa_controller.sv, sa_PE_wrapper.sv, sa_RF.sv, X_REG.sv
│   ├── mem/        : dpram_wrapper.sv, bram_pingpong.sv
│   ├── pkg/        : sa_params_pkg.sv, axi_regs_pkg.sv
│   └── include/    : sa_defs.svh, addr_map.svh
└── sim/
    ├── tb/         : sa_matmul_tb.sv, tb_tasks.svh, axi_vip_config.svh
    ├── data/       : matrix_*.hex, *.mem, golden_result.hex
    └── scripts/    : generate_test_vectors.py, create_bd_with_vip.tcl, setup_sim.tcl
```

### 7.4 데이터플로(의사코드)
```
if (update_A)  load A_block → A_persist_buf
for col_blk in 0..M step BLOCK_M:
  preload B_block into ping-pong
  for i in 0..N step TILE_SIZE:
    for j in col_blk..col_blk+BLOCK_M step TILE_SIZE:
      clear C_tile
      for k in 0..K step TILE_SIZE:
        load A_tile (from A_persist_buf)
        load B_tile (from ping-pong)
        compute 8×8 tile (K-TILE accumulate, II=1)
      store C_tile (burst write)
```

### 7.5 작업 순서(스텝별, 작은 단위)
1) 패키지/헤더 확정: `sa_params_pkg.sv`, `axi_regs_pkg.sv`, `addr_map.svh`, `sa_defs.svh`에 파라미터·오프셋·매크로 정의  [완료]
2) 스텁 포트 확정: `tile_*`, `axi_addr_gen`, `bram_pingpong`, `pe_*`의 입출력·핸드셰이크만 정의(기능 없이 컴파일 가능)  [완료]
3) 주소 생성기: `axi_addr_gen.sv`에 base/stride/연속 버스트(`ARLEN/AWLEN`) 계산(4B 정렬·경계 고려)  [완료]
4) 핑퐁 버퍼: `bram_pingpong.sv` 더블버퍼 구현(채움/소비 req/done, `bank_sel`)  [완료]
5) 로더: `tile_loader.sv`에서 `axi_dma_ctrl`/`dma_read` 연동, A 상주·B ping-pong 채움, 경계 마스크 생성  [작업중]
6) PE 선택: `pe_int8_{lut,dsp}.sv`와 `pe_array_8x8.sv` 구현, `USE_DSP` 파라미터 도입
7) 컴퓨트: `tile_compute.sv`에서 K‑loop 누적·파이프 딜레이 보정, 경계 zero‑pad/mask
8) 스토어: `tile_store.sv`에서 C 타일 버퍼→`dma_write` 연속 버스트 아웃
9) 오케스트레이터: `tile_orchestrator.sv` Block→Tile→K FSM, 초기 비‑오버랩→오버랩 확장
10) 파이프라인 통합: `sa_core_pipeline.sv`에서 신규 `tile_*`와 DMA를 직접 배선(기존 경로는 파라미터로 보존)
11) TB 보강: 신규 레지스터 시퀀스(update_A/N/K/M/stride)와 경계 케이스(13×13 등) 추가
12) 합성/리포트: `USE_DSP=1`로 합성 후 DSP 사용률/타이밍 확인

### 7.6 레지스터 맵(요약)
- CONTROL(0x00): `start[0]`, `update_A[1]`, `irq_en[2]`
- STATUS(0x04): `busy[0]`, `done[1]`, `error[2]`
- `N(0x08)`, `K(0x0C)`, `M(0x10)`
- `TILE_SIZE(0x14)`, `BLOCK_M(0x18)`
- `base_A(0x1C)`, `base_B(0x20)`, `base_C(0x24)`
- 옵션: `stride_A(0x28)`, `stride_B(0x2C)`, `stride_C(0x30)`, perf(`burst_cnt`, `stall_cycles`)

### 7.7 완료 기준
- 시뮬: 8×8·16×16 golden match, READ/COMPUTE/WRITE 오버랩 파형/버스트 로그 확인
- 합성: 빌드 성공, `USE_DSP=1`에서 DSP 사용률 > 0%
- 기능: `update_A=1`에서 A 재로드 없이 반복 호출 정상

### 7.8 DistilBERT 기준 컨텍스트 & 요구사항
- 보드/버스/정밀도
  - PYNQ-Z2 (XC7Z020), PL 100 MHz
  - AXI4-Lite(제어) + AXI4-Full(읽기/쓰기), 데이터폭 32b(=4 B/beat)
  - INT8×INT8 → INT32 누적, TILE_SIZE T=8 (8×8 시소릭 고정)
- 타깃 행렬곱(반드시 지원)
  - DistilBERT FFN: A 64×768, B 768×3072, C 64×3072
  - Sanity: (8×8)×(8×8), (16×16)×(16×16, 경계 없음), (13×13)×(13×13, 경계 타일)
- 타일/데이터플로 불변 조건
  - 2‑레벨: column‑block(BLOCK_M) → (i,j) tile(8×8) → K‑tile(8) 누적
  - A full‑persist: j‑block 동안 on‑chip 상주(가능 시 A 전체 64×768≈49,152 B 상주)
  - B ping‑pong: `B_buf0/1` 더블버퍼로 READ↔COMPUTE 오버랩
  - C write‑back: 8×8 INT32 = 256 B = 16‑beat×4 연속 버스트
  - AXI 정책(V1): INCR, ARSIZE/AWSIZE=2, ARLEN/AWLEN=15(16‑beat), base 4B 정렬
- 타일 바이트(T=8, AXI32b)
  - A_tile 64 B(=16‑beat×1), B_tile 64 B(=16‑beat×1), C_tile 256 B(=16‑beat×4)
- DistilBERT 정확 카운트(N=64, K=768, M=3072, T=8)
  - i‑tiles=8, k‑tiles=96, j‑tiles=384
  - A full‑persist: 총 A‑reads = 8×96=768 bursts(각 64 B) → 49,152 B
  - B i‑reuse: 총 B‑reads = 384×96=36,864 bursts(각 64 B) → 2,359,296 B
  - C writes: 타일 8×384=3,072개 ×4 bursts = 12,288 bursts → 786,432 B
  - 로그/카운터로 위 burst 개수·총 bytes 일치 검증 필수 (B 재사용 미구현 시 트래픽 8배 증가)
- 어드레싱(row‑major, 바이트 stride)
  - stride_A_row=K×1, stride_A_col=1; stride_B_row=M×1, stride_B_col=1; stride_C_row=M×4, stride_C_col=4
  - A_tile_base = base_A + (i0*T)*stride_A_row + (k0*T)*stride_A_col
  - B_tile_base = base_B + (k0*T)*stride_B_row + (j0*T)*stride_B_col
  - C_tile_base = base_C + (i0*T)*stride_C_row + (j0*T)*stride_C_col
- (i0,j0) 타일당 스케줄(요지)
  - for k0 in 0..K‑1 step 8: A_tile(상주/필요 시 64B read), B_tile(64B read, i‑tiles 재사용), 누적 compute
  - 완료 후 C_tile 256B를 16‑beat×4로 write‑back
- 모듈/인터페이스(요약, sa_core 없음)
  - tile_orchestrator: j‑block→i→j→k 순회, A full‑persist/B i‑reuse 강제
  - tile_loader: A bulk/타일 로드, B 타일별 로드, ping‑pong 운용, addr_gen 구동
  - tile_compute: 8×8 SA 구동, K‑loop 누적, 경계 마스크(13×13 등)
  - tile_store: C_tile 4×16‑beat write
  - axi_addr_gen: V1 고정 16‑beat 청커(4B align), 입력(base, bytes_total)→{addr,len=15} 시퀀스, V2 부분 버스트
- 테스트 매트릭스(순차 실행)
  - Case‑A (8×8)×(8×8): A/B 각 1×read, C 4×write → 총 6 bursts
  - Case‑B (16×16)×(16×16): 타일4개×(A2+B2+C4) → 총 32 bursts
  - Case‑C (13×13)×(13×13): V1 padding 시 Case‑B와 동일 패턴
  - DistilBERT (64×768)×(768×3072): A 768, B 36,864, C 12,288 bursts
- 제약
  - `sa_core.sv` 신규 생성 금지. `sa_core_pipeline` 아래에 `tile_*` 직접 배선
  - 8×8 PE는 기존 구현 유지, `pe_int8_dsp.sv`는 `USE_DSP` 파라미터로 선택

### 7.9 BRAM Strategy (KB, 최종 확정: B 블록 더블버퍼 + C 더블버퍼)
- 단위: KB = 1000 Bytes (SI). B=Byte, b=bit.
- A/B/C 버퍼 크기(고정 파라미터)
  - A persist(전체): 64×768 B = 49.152 KB
  - C 타일 더블버퍼: 256 B ×2 = 0.512 KB
- B 블록 상주(V2, 더블버퍼) — 열 블록 폭 = `BLOCK_M`
  - B 블록(더블): 1.536×`BLOCK_M` KB  (K=768 → 768×BLOCK_M/1000×2)
  - 총합(최종 채택): 49.152 + (1.536×`BLOCK_M`) + 0.512 = 49.664 + 1.536×`BLOCK_M` KB
  - 보드 용량: 630 KB (문서 기준)
  - 예) `BLOCK_M=256` → 총합 = 49.664 + 393.216 = 442.880 KB
    • 여유 용량 = 630 − 442.880 ≈ 187.120 KB (≈30% 여유)
- 비고
  - B는 “블록 단위 ping‑pong(더블버퍼)”로 bank0/bank1에 교대로 상주.
  - C는 “타일 단위 ping‑pong(더블버퍼)”로 연산/저장을 오버랩.
  - A는 전역 상주(DPRAM)로 j‑block 전 구간에서 재사용.

### 7.10 유닛 테스트(모듈 단위)
- 주소 생성기: `sim/tb/unit/tb_axi_addr_gen.sv`  [PASS]
  - S1: 64B 1버스트, S2: 256B 4버스트, S3: 백프레셔, S4: 0B
- BRAM pingpong: `sim/tb/unit/tb_bram_pingpong.sv`  [PASS]
  - B 블록 모드(외부 commit) 기본/오버랩, C 타일 모드(내부 카운팅)

---

**End of Document**

Last Updated: 2025-11-07  
Version: 2.2  
Author: Jimin Hwang  
Project: Chung-Ang University Capstone Design
