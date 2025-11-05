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
6. [작업 순서](#6-작업-순서)
7. [실행 방법](#7-실행-방법)
8. [트러블슈팅](#8-트러블슈팅)

---

## 1. 프로젝트 개요

### 1.1 설계 목표
- **8x8 Systolic Array 기반 Matrix Multiplication IP**
- 연산은 unsigned int8 대상! (signed X)
- **INT8 정밀도** (입력), **INT32 출력** (누적 결과)
- **Custom DMA Controller** (AXI4-Full Master)
- **AXI4-Lite Slave Interface** (레지스터 제어)

### 1.2 핵심 기능
```
Input:  Matrix A (8x8 INT8), Matrix B (8x8 INT8)
Output: Matrix C (8x8 INT32) = A × B

Memory Layout:
- Input:  DRAM[read_base_addr + 0x00 ~ 0x7F]  (128 bytes)
- Output: DRAM[write_base_addr + 0x00 ~ 0xFF] (256 bytes)
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
   - Transfer: Matrix A + B (128 bytes)

3. Systolic Array Computation
   - FSM: S_IDLE → S_DATA_LOAD → S_WRITE_A → S_WRITE_B 
         → S_LOAD → S_MATMUL → S_STORE → S_OUT

4. DMA Write: Internal DPRAM → DRAM
   - Burst length: 16 beats
   - Transfer: Matrix C (256 bytes)

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
            └─ 64 PEs (Processing Elements)
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

---

## 3. 파일 구조

### 3.1 최종 디렉토리 구조

```
sa_engine_ip_1.0/
│
├── hdl/                                    ← 합성 가능한 RTL만
│   ├── sa_engine_ip_v1_0.v                 (Top wrapper)
│   ├── sa_engine_ip_v1_0_S00_AXI.v         (AXI-Lite Slave)
│   ├── sa_engine_ip_v1_0_M00_AXI.v         (사용 안함)
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
│   │   ├── sa_matmul_tb.sv                 ← 메인 TB (example_designs에서 복사)
│   │   ├── tb_tasks.svh                    ← 헬퍼 태스크 모음
│   │   └── axi_vip_config.svh              ← VIP 설정 (복사)
│   │
│   ├── data/                               ← 테스트 데이터 (UINT8/UINT32)
│   │   ├── matrix_A_B.hex                  ← A(64B)+B(64B) 결합, 한 줄 2바이트(LO-HI)
│   │   ├── matrix_a.hex                    ← A만, 한 줄 2바이트(LO-HI)
│   │   ├── matrix_b.hex                    ← B만, 한 줄 2바이트(LO-HI)
│   │   ├── matrix_a.mem                    ← A만, 한 줄 1바이트(옵션)
│   │   ├── matrix_b.mem                    ← B만, 한 줄 1바이트(옵션)
│   │   └── golden_result.hex               ← 기대 결과 64개(INT32, 8헥사)
│   │
│   ├── scripts/                            ← Python/TCL 스크립트
│   │   ├── generate_test_vectors.py        ← 테스트 벡터 생성 (UINT8/스왑 반영)
│   │   ├── create_bd_with_vip.tcl          ← AXI VIP 포함 BD 자동 생성
│   │   └── setup_sim.tcl                   ← 시뮬 파일셋/옵션 세팅
│   │
│   └── legacy/                             ← 기존 파일들 (참고용)
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
│       └── sa_vip_test.runs/               ← 생성된 컴파일 캐시 (직접 수정 금지)
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
- **절대 수정 금지**: `hdl/` 아래의 모든 파일은 합성 대상
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
├────────────────────────────────────────────────────────────────┤
│                                                                 │
│  초기화 & 제어 로직 (initial block)                             │
│  1. Master VIP 메모리 초기화                                    │
│  2. Slave VIP로 레지스터 제어                                   │
│  3. Done 대기 & 결과 검증                                       │
│                                                                 │
│            ┌──────────────┴──────────────┐                     │
│            ↓                              ↓                     │
│  ┌─────────────────┐            ┌─────────────────┐           │
│  │   Slave VIP     │            │   Master VIP    │           │
│  │ (PS 제어 역할)   │            │  (DRAM 역할)    │           │
│  │                 │            │                 │           │
│  │ - AXI4-Lite     │            │ - AXI4-Full     │           │
│  │ - Master로 동작  │            │ - Slave로 동작   │           │
│  │ - Register      │            │ - Memory Model  │           │
│  │   Write/Read    │            │ - 연관 배열     │           │
│  └────────┬────────┘            └────────┬────────┘           │
│           │                              │                     │
│           │    ┌──────────────────────┐  │                     │
│           └───►│   DUT (Your IP)      │◄─┘                     │
│                │ sa_engine_ip_v1_0    │                        │
│                │                      │                        │
│                │ S00_AXI ◄─ Slave VIP │                        │
│                │ M00_AXI ─► Master VIP│                        │
│                └──────────────────────┘                        │
│                                                                 │
│  ※ Slave VIP와 Master VIP는 직접 연결되지 않음                 │
│     각각 DUT의 S00_AXI, M00_AXI에 연결됨                        │
│                                                                 │
│  모니터링 & 검증                                                 │
│  - AXI transaction logger                                      │
│  - Protocol violation checker (VIP 자동)                       │
│  - Result comparison (golden vs. actual)                      │
└────────────────────────────────────────────────────────────────┘
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

테스트 벡터는 UINT8 기준이며, 하드웨어가 2바이트 쌍을 [lo,hi]로 읽은 뒤 내부에서 [hi,lo]로 재해석하는 규칙을 반영함. `generate_test_vectors.py` 요약:

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
- 결과는 64개 INT32를 8헥사로 `golden_result.hex`에 기록.

---

## 5. 검증 항목

### 5.1 Layer별 검증

```
┌─────────────────────────────────────────────────────────────┐
│ Level 1: AXI4-Lite (S00_AXI) 프로토콜                       │
│  ✅ AWVALID/AWREADY 핸드셰이크                              │
│  ✅ WVALID/WREADY 핸드셰이크                                │
│  ✅ BVALID/BREADY 응답                                      │
│  ✅ ARVALID/ARREADY 핸드셰이크                              │
│  ✅ RVALID/RREADY 데이터 전송                               │
│  ✅ Register Write → 내부 신호 전파                         │
│  ✅ Status Register Read 정확도                             │
├─────────────────────────────────────────────────────────────┤
│ Level 2: AXI4-Full Read (M00_AXI → DRAM)                   │
│  ✅ ARVALID/ARREADY 핸드셰이크                              │
│  ✅ ARLEN = 15 (16 beats burst)                            │
│  ✅ ARSIZE = 2 (4 bytes per beat)                          │
│  ✅ ARBURST = INCR                                          │
│  ✅ RDATA 수신 정확도                                        │
│  ✅ RLAST 신호 (마지막 beat)                                │
│  ✅ 내부 DPRAM에 데이터 저장 확인                            │
├─────────────────────────────────────────────────────────────┤
│ Level 3: AXI4-Full Write (DRAM ← M00_AXI)                  │
│  ✅ AWVALID/AWREADY 핸드셰이크                              │
│  ✅ AWLEN = 15 (16 beats burst)                            │
│  ✅ WVALID/WREADY 핸드셰이크                                │
│  ✅ WDATA 전송 정확도                                        │
│  ✅ WLAST 신호 (마지막 beat)                                │
│  ✅ BVALID/BREADY 응답 수신                                 │
│  ✅ VIP 메모리에 올바른 주소 저장                            │
├─────────────────────────────────────────────────────────────┤
│ Level 4: Functional Correctness                            │
│  ✅ FSM State Transition                                    │
│     S_IDLE → S_DATA_LOAD → S_WRITE_A → S_WRITE_B          │
│     → S_LOAD → S_MATMUL → S_STORE → S_OUT                  │
│  ✅ Matrix A/B Loading to Controller                       │
│  ✅ Systolic Array 계산 (PE MAC 동작)                       │
│  ✅ Output C = A × B 정확도                                 │
│  ✅ Golden Model 비교 (모든 원소 일치)                       │
│  ✅ Done 신호 타이밍                                         │
└─────────────────────────────────────────────────────────────┘
```

### 5.2 체크리스트

#### 프로토콜 검증 (VIP 자동)
- [ ] AXI4-Lite: No protocol violations
- [ ] AXI4-Full Read: No protocol violations
- [ ] AXI4-Full Write: No protocol violations
- [ ] Burst alignment 체크
- [ ] Response 체크 (RESP = OKAY)

#### 기능 검증 (Manual)
- [ ] 레지스터 read/write 정확도
- [ ] DMA read 주소 정확도
- [ ] DMA write 주소 정확도
- [ ] Matrix multiplication 결과 정확도
- [ ] 타이밍 (latency 측정)

#### Waveform 확인
- [ ] `sa_core.c_state` FSM 천이
- [ ] `M_AXI_ARADDR`, `M_AXI_ARVALID`, `M_AXI_ARREADY`
- [ ] `M_AXI_RDATA`, `M_AXI_RVALID`, `M_AXI_RLAST`
- [ ] `M_AXI_AWADDR`, `M_AXI_WDATA`, `M_AXI_WLAST`
- [ ] `dpram_in`, `dpram_out` 내부 메모리 상태

---

## 6. 작업 순서

### Phase 1: 환경 준비 (Day 1)

#### Step 1.1: 디렉토리 구조 생성
```powershell
cd C:\Users\sudea\capstone_design_final\sa_engine_ip_1.0

# 새 디렉토리 생성
mkdir src\tb
mkdir src\data
mkdir src\scripts
mkdir src\legacy

# 기존 파일 이동
move src\sa_engine_tb.v src\legacy\
move src\axi_slave_if_sync.v src\legacy\
move src\axi_sram_if.v src\legacy\
move src\sram.v src\legacy\
move src\sram_ctrl.v src\legacy\
move src\sync_reg_fifo.v src\legacy\
move src\matrix_A_B.hex src\legacy\
```

#### Step 1.2: 파일 복사
```powershell
# TB 템플릿 복사 (이름 변경)
copy example_designs\bfm_design\sa_engine_ip_v1_0_tb.sv src\tb\sa_matmul_tb.sv

# VIP 설정 복사 (이름 변경)
copy example_designs\bfm_design\sa_engine_ip_v1_0_tb_include.svh src\tb\axi_vip_config.svh
```

#### Step 1.3: Python 환경 확인
```bash
# NumPy 설치 확인
python -c "import numpy; print(numpy.__version__)"

# 없으면 설치
pip install numpy
```

---

### Phase 2: 테스트 벡터 생성 (Day 1)

#### Step 2.1: Python 스크립트 작성
파일: `src/scripts/generate_test_vectors.py`

이미 구현된 스크립트를 사용합니다. UINT8 입력(0..255)과 2바이트 쌍 스왑 규칙을 반영해 아래 파일들을 생성합니다.

- `data/matrix_A_B.hex` (A+B 결합, 2바이트/라인 LO-HI)
- `data/matrix_a.hex`, `data/matrix_b.hex` (옵션)
- `data/matrix_a.mem`, `data/matrix_b.mem` (옵션)
- `data/golden_result.hex` (UINT32 결과)

#### Step 2.2: 실행
```bash
cd src/scripts
python generate_test_vectors.py
```

**예상 출력:**
```
✅ Test vectors generated successfully!
   Matrix A shape: (8, 8)
   Matrix B shape: (8, 8)
   Result C shape: (8, 8)

   Sample 출력은 스크립트 실행 로그 참고
```

---

### Phase 3: Testbench 작성 (Day 2)

#### Step 3.1: `sa_matmul_tb.sv` 수정

주요 수정 사항:
1. 모듈명 변경: `sa_engine_ip_v1_0_tb` → `sa_matmul_tb`
2. Include 경로 수정: `axi_vip_config.svh`
3. Master VIP 메모리 초기화 추가
4. 테스트 시나리오 수정
5. Golden result 비교 로직 추가

#### Step 3.2: `tb_tasks.svh` 작성

헬퍼 태스크 모음:
```systemverilog
// Helper tasks for testbench

// Write to AXI-Lite register
task automatic write_register(
  input [31:0] addr,
  input [31:0] data,
  ref sa_engine_ip_v1_0_bfm_1_slave_0_0_mst_t agent
);
  axi_transaction wr_trans;
  xil_axi_resp_t resp;
  
  wr_trans = agent.wr_driver.create_transaction("write_reg");
  wr_trans.set_write_cmd(addr, XIL_AXI_BURST_TYPE_INCR, 0, 0, xil_axi_size_t'(2));
  wr_trans.set_data_block(data);
  agent.wr_driver.send(wr_trans);
  
  $display("[%0t] Write Reg[0x%0h] = 0x%0h", $time, addr, data);
endtask

// Read from AXI-Lite register
task automatic read_register(
  input [31:0] addr,
  output [31:0] data,
  ref sa_engine_ip_v1_0_bfm_1_slave_0_0_mst_t agent
);
  axi_transaction rd_trans;
  xil_axi_data_beat [31:0] rdata;
  
  rd_trans = agent.rd_driver.create_transaction("read_reg");
  rd_trans.set_read_cmd(addr, XIL_AXI_BURST_TYPE_INCR, 0, 0, xil_axi_size_t'(2));
  agent.rd_driver.send(rd_trans);
  agent.rd_driver.wait_rsp(rd_trans);
  rd_trans.get_data_block(rdata);
  data = rdata[0];
  
  $display("[%0t] Read Reg[0x%0h] = 0x%0h", $time, addr, data);
endtask

// Load matrix data to VIP memory
task automatic load_matrix_data(
  input string filename,
  input [63:0] base_addr,
  ref sa_engine_ip_v1_0_bfm_1_master_0_0_slv_mem_t agent
);
  bit [7:0] mem_data[$];
  int fd;
  string line;
  bit [7:0] byte_val;
  
  // Read .mem file
  fd = $fopen(filename, "r");
  if (fd == 0) begin
    $error("Cannot open file: %s", filename);
    return;
  end
  
  while (!$feof(fd)) begin
    $fgets(line, fd);
    if ($sscanf(line, "%h", byte_val) == 1) begin
      mem_data.push_back(byte_val);
    end
  end
  $fclose(fd);
  
  // Write to VIP memory
  for (int i = 0; i < mem_data.size(); i++) begin
    agent.mem_model.backdoor_memory_write(
      .addr(base_addr + i),
      .data(mem_data[i]),
      .strb(1'b1)
    );
  end
  
  $display("[%0t] Loaded %0d bytes from %s to 0x%0h", 
           $time, mem_data.size(), filename, base_addr);
endtask
```

---

### Phase 4: 시뮬레이션 실행 (Day 2-3)

#### Step 4.1: BD/시뮬 환경 스크립트
파일: `src/scripts/create_bd_with_vip.tcl`, `src/scripts/setup_sim.tcl`

```tcl
# 1) AXI VIP 포함 Block Design 생성
source ../../sa_engine_ip_1.0/src/scripts/create_bd_with_vip.tcl

# 2) TB 파일 추가 및 시뮬 옵션 적용
source ../../sa_engine_ip_1.0/src/scripts/setup_sim.tcl

# (GUI에서) Simulation 실행: Flow Navigator → Run Behavioral Simulation
```

#### Step 4.2: 실행 방법

**방법 A: Vivado GUI**
```bash
cd C:\Users\sudea\capstone_design_final\sa_engine_ip_1.0\src\scripts

vivado -mode gui
# GUI에서:
# Tcl Console에서 두 스크립트 실행 (create_bd_with_vip.tcl, setup_sim.tcl)
```

**방법 B: Batch Mode**
```bash
cd C:\Users\sudea\capstone_design_final\sa_engine_ip_1.0\src\scripts

# 배치 실행은 별도 제공하지 않음 (GUI 권장)
```

#### Step 4.3: 파형 확인

시뮬레이션이 열리면 다음 신호들을 추가:

**Top Level:**
```
clock
reset
DUT/u_core/ap_start
DUT/u_core/o_done
DUT/u_core/o_busy
```

**S00_AXI (Control):**
```
DUT/s00_axi_awaddr
DUT/s00_axi_awvalid
DUT/s00_axi_awready
DUT/s00_axi_wdata
DUT/s00_axi_wvalid
DUT/s00_axi_wready
```

**M00_AXI Read:**
```
DUT/m00_axi_araddr
DUT/m00_axi_arvalid
DUT/m00_axi_arready
DUT/m00_axi_arlen
DUT/m00_axi_rdata
DUT/m00_axi_rvalid
DUT/m00_axi_rready
DUT/m00_axi_rlast
```

**M00_AXI Write:**
```
DUT/m00_axi_awaddr
DUT/m00_axi_awvalid
DUT/m00_axi_awready
DUT/m00_axi_wdata
DUT/m00_axi_wvalid
DUT/m00_axi_wready
DUT/m00_axi_wlast
```

**Internal FSM:**
```
DUT/u_core/u_sa_core/c_state
DUT/u_core/u_sa_core/dma_cnt
```

---

### Phase 5: 결과 분석 (Day 3)

#### Step 5.1: 시뮬레이션 로그 확인

**예상 출력:**
```
[0ns] Initializing VIP agents...
[200ns] Reset released
[250ns] Loading test vectors...
[300ns] Loaded 128 bytes from matrix_A_B.hex to 0x00000000
[400ns] Write Reg[0x04] = 0x00000000
[450ns] Write Reg[0x08] = 0x00000400
[500ns] Write Reg[0x00] = 0x00000001
[550ns] Starting computation...
[15us] Read Reg[0x00] = 0x00000002 (DONE)
[15.5us] Verifying results...
[16us] ✅ Result C[0][0]: Expected=0x00000929, Got=0x00000929 ✅
[16us] ✅ Result C[0][1]: Expected=0x00002694, Got=0x00002694 ✅
...
[20us] ✅ ALL TESTS PASSED! (64/64 matched)
```

#### Step 5.2: 프로토콜 위반 체크

VIP가 자동으로 체크:
```
# 정상 케이스:
[INFO] No AXI protocol violations detected

# 오류 케이스 예시:
[ERROR] AXI Protocol Violation: AWVALID asserted without AWREADY
[ERROR] AXI Protocol Violation: WLAST not asserted on last beat
```

#### Step 5.3: 타이밍 측정

```systemverilog
// Testbench에 추가
time start_time, end_time;

start_time = $time;
write_register(0x00, 32'h1);  // Start

wait(done_signal);
end_time = $time;

$display("⏱️  Latency: %0t ns (%0d cycles)", 
         end_time - start_time, 
         (end_time - start_time) / 10);
```

---

## 7. 실행 방법

### 7.1 Quick Start

```bash
# 1. 디렉토리 구조 생성 및 파일 복사
cd C:\Users\sudea\capstone_design_final\sa_engine_ip_1.0
powershell -ExecutionPolicy Bypass -File setup_structure.ps1

# 2. 테스트 벡터 생성
cd src\scripts
python generate_test_vectors.py

# 3. Block Design/TB 세팅 (GUI)
vivado -mode gui
# Tcl Console에서 다음 실행
source $env(HOME)/capstone_design_final/sa_engine_ip_1.0/src/scripts/create_bd_with_vip.tcl
source $env(HOME)/capstone_design_final/sa_engine_ip_1.0/src/scripts/setup_sim.tcl
# 이후 Run Behavioral Simulation

# 4. 결과 확인
type ..\..\vivado.log | findstr "PASSED\|FAILED"
```

### 7.2 단계별 실행 (디버깅용)

#### Step 1: Vivado GUI 열기
```bash
cd C:\Users\sudea\capstone_design_final
vivado capstone_design_final.xpr
```

#### Step 2: IP Packager 열기
```
Tools → Create and Package New IP → Edit Packaged IP
```

#### Step 3: 시뮬레이션 설정
```
Flow Navigator → Settings → Simulation
- Top Module: sa_matmul_tb
- Simulation Run Time: 100us
```

#### Step 4: 시뮬 실행
```
Flow Navigator → Simulation → Run Behavioral Simulation
```

#### Step 5: Waveform 설정
```
Scope → sa_matmul_tb → DUT
(우클릭) → Add to Wave Window
```

---

## 8. 트러블슈팅

### 8.1 일반적인 문제

#### Q1: "Package 'sa_engine_ip_v1_0_bfm_1_slave_0_0_pkg' not found"
**원인:** Block Design가 생성되지 않음

**해결:**
```tcl
# example_designs/bfm_design/design.tcl 실행
cd example_designs/bfm_design
vivado -mode batch -source design.tcl
```

#### Q2: "Cannot open file: ../data/matrix_A_B.hex"
**원인:** 테스트 벡터 미생성 또는 경로 오류

**해결:**
```bash
cd src/scripts
python generate_test_vectors.py

# 경로 확인
ls ../data/
```

#### Q3: 시뮬레이션이 무한 루프
**원인:** Done 신호가 안 옴

**해결:**
1. Waveform에서 FSM state 확인
2. `sa_core.c_state`가 `S_IDLE`에서 멈춰있으면:
   - `ap_start` 신호 확인
   - S00_AXI write가 제대로 되었는지 확인
3. 특정 state에서 멈춰있으면:
   - 해당 state의 천이 조건 확인
   - `read_done`, `write_done` 신호 확인

#### Q4: 결과 불일치 (Mismatch)
**원인:** 계산 오류 또는 데이터 로딩 오류

**해결:**
1. Master VIP 메모리 확인:
   ```tcl
   # Vivado Tcl Console
   examine mst_agent_0.mem_model.mem
   ```
2. DPRAM 내용 확인:
   ```
   Waveform → DUT/u_core/u_sa_core/dpram_in
   ```
3. Systolic Array 입력 확인:
   ```
   DUT/u_core/u_sa_core/u_sa_controller/MAT_A0[0]
   ```

### 8.2 성능 이슈

#### Slow Simulation
**원인:** VIP logging overhead

**해결:**
```systemverilog
// Testbench에서 verbosity 낮추기
slv_agent_0.set_verbosity(0);  // 0 = minimal
mst_agent_0.set_verbosity(0);
```

#### Large Waveform File
**원인:** 모든 신호 기록

**해결:**
```tcl
# (필요시) 시뮬 옵션 조정
set_property -name {xsim.simulate.log_all_signals} -value {false}

# 필요한 신호만 선택적으로 로깅
log_wave -recursive [get_objects DUT/u_core/u_sa_core/c_state]
```

---

## 9. 다음 단계 (실제 보드 검증)

### 9.1 ILA (Integrated Logic Analyzer) 삽입

시뮬레이션 통과 후:
```tcl
# Vivado Synthesis 후
create_ip -name ila -vendor xilinx.com
set_property CONFIG.C_NUM_OF_PROBES 16 [get_ips ila_0]

# 모니터링할 신호 연결
connect_debug_port ila_0/probe0 [get_nets M_AXI_ARADDR]
connect_debug_port ila_0/probe1 [get_nets M_AXI_ARVALID]
# ...
```

### 9.2 PYNQ Python 테스트

```python
from pynq import Overlay
import numpy as np

ol = Overlay("sa_engine.bit")
dma = ol.sa_engine_ip_0

# Test (UINT8)
A = np.random.randint(0, 256, (8,8), dtype=np.uint8)
B = np.random.randint(0, 256, (8,8), dtype=np.uint8)
C_golden = A.astype(np.uint32) @ B.astype(np.uint32)

# ... (DMA 전송 코드)

assert np.allclose(C_hw, C_golden)
print("✅ Hardware test PASSED!")
```

---

## 10. 참고 자료

### 10.1 Xilinx 문서
- [UG1037: AXI VIP User Guide](https://www.xilinx.com/support/documentation/ip_documentation/axi_vip/v1_1/pg267-axi-vip.pdf)
- [UG1119: Vivado Design Suite User Guide - Creating and Packaging Custom IP](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2021_1/ug1119-vivado-creating-packaging-ip-tutorial.pdf)

### 10.2 AXI Protocol
- [IHI0022E: AMBA AXI Protocol Specification](https://developer.arm.com/documentation/ihi0022/e/)

### 10.3 PYNQ
- [PYNQ Documentation](http://pynq.readthedocs.io/)
- [PYNQ-Z2 Board Reference Manual](https://reference.digilentinc.com/reference/programmable-logic/pynq-z2/reference-manual)

---

## 📝 체크리스트

### 환경 준비
- [ ] 디렉토리 구조 생성 완료
- [ ] 파일 복사 완료
- [ ] Python NumPy 설치 확인

### 테스트 벡터
- [ ] `generate_test_vectors.py` 실행
- [ ] `matrix_A_B.hex` 생성 확인 (A+B 결합)
- [ ] `matrix_a.hex`/`matrix_b.hex` 생성 확인 (옵션)
- [ ] `golden_result.hex` 생성 확인

### Testbench
- [ ] `sa_matmul_tb.sv` 수정 완료
- [ ] `tb_tasks.svh` 작성 완료
- [ ] `axi_vip_config.svh` 복사 완료

### 시뮬레이션
- [ ] Block Design 생성 완료
- [ ] Compilation 성공
- [ ] Elaboration 성공
- [ ] Simulation 실행 완료
- [ ] No protocol violations
- [ ] Result matched with golden

### 문서화
- [ ] Waveform 캡처 (주요 신호)
- [ ] 시뮬레이션 로그 저장
- [ ] 검증 리포트 작성

---

**End of Document**

Last Updated: 2025-11-04  
Version: 1.0  
Author: Jimin Hwang 
Project: PYNQ-Z2 Systolic Array Matrix Multiplication IP

