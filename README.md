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
- [v] AXI4-Lite: No protocol violations
- [v] AXI4-Full Read: No protocol violations (AxCACHE warnings observed)
- [v] AXI4-Full Write: No protocol violations (AxCACHE warnings observed)
- [ ] Burst alignment 체크
- [ ] Response 체크 (RESP = OKAY)

Note: Xilinx AXI VIP reported AxCACHE narrow-support warnings on AR/AW; no ERROR/FATAL observed in this run.

#### 기능 검증 (Manual)
- [v] 레지스터 read/write 정확도
- [ ] DMA read 주소 정확도
- [ ] DMA write 주소 정확도
- [ ] Matrix multiplication 결과 정확도
- [ ] 타이밍 (latency 측정)

#### Waveform 확인
- [ ] `sa_core.c_state` FSM 확인인
- [ ] `M_AXI_ARADDR`, `M_AXI_ARVALID`, `M_AXI_ARREADY`
- [ ] `M_AXI_RDATA`, `M_AXI_RVALID`, `M_AXI_RLAST`
- [ ] `M_AXI_AWADDR`, `M_AXI_WDATA`, `M_AXI_WLAST`
- [ ] `dpram_in`, `dpram_out` 내부 메모리 상태

---

## 6. 앞으로 해야 할 작업들

### 6.1 현재 문제점 개선
- [ ] DMA Write가 64B만 쓰는 이슈 해결 (256B 전체 쓰기)
  - `sa_engine_ip_1.0/hdl/sa_core_pipeline.sv`의 고정값 제거: `num_trans`/`max_req_blk_idx`를 AXI‑Lite 레지스터(`i_num_trans_param`, `i_max_blk_param`)에 연결
  - `sa_engine_ip_1.0/hdl/axi_dma_ctrl.sv` 쓰기 FSM의 블록 반복 조건(`(max_req_blk_idx>>1)`) 정합성 재검토 → 읽기와 대칭적으로 총 64워드가 쓰이도록 조정
  - 검증: `M_AXI_AWLEN`/`M_AXI_WLAST`/`M_AXI_AWADDR` 파형으로 버스트 수/주소 증가 확인, 결과 64개 PASS 확인
- [ ] AXI VIP 경고(AxCACHE narrow-support) 제거
  - `dma_read.sv`/`dma_write.sv`의 `AR/ARCACHE`, `AW/AWCACHE`를 권장값(예: `4'b0011`)으로 설정하거나, VIP 체크 완화 API 사용
  - 경고 Zero 기준이면 README 체크리스트 업데이트
- [ ] 문서/체크리스트 동기화
  - Output 메모리 레이아웃(현재 0x3F까지만 실쓰기) → 이슈 해결 후 `write_base_addr + 0x00 ~ 0xFF`로 갱신
  - 5.2의 Burst alignment/RESP OKAY 항목은 파형/로그로 근거 확보 후 체크

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

**End of Document**

Last Updated: 2025-11-04  
Version: 1.0  
Author: Jimin Hwang 
Project: Chung-Ang University Capstone Design