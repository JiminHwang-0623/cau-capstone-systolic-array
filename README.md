# Systolic Array Engine IP (sa_engine_ip_v1_0)

## 25.10.21 작업 내용

### sa_core baseline 수정
- **sa_core**
- **sa_controller** (이전 이름 controller)
- **sa_unit** (이전 이름 SystolicArray)
- **sa_PE_wrapper** (이전 이름 tile8x8)
- **sa_RF** (이전 이름 RF)
- **hPE**
- **X_REG**

### 주요 변경 사항
1. `sa_unit` 의 FSM 중에서 counter 기반으로 state 가 넘어가는 것 수정
-> 엄밀히 내부 모듈의 신호를 받고 넘어가는 것으로 변경함.
-> 그러나 아직 `S_STORE` state 는 수정 못함. (dpram 접근 주소 로직 변경하면서 수정할 예정)
2. `FSM.sv` 모듈 제거
-> `sa_unit` 에서 counter 기반으로 내부의 상태를 판단하는 로직밖에 없어서 제거함.
-> 곧바로 `sa_controller` 와 연결되도록 함.
3. `hPE` 로직 많이 수정
-> `A` 와 `B` 의 유효한 데이터가 8번 들어와야 누적값이 유효하다고 판단하는 로직 추가
-> 이 신호를 통해 matmul 연산을 완료했다고 `sa_controller` 가 판단할 수 있음.

### 이번 주 계획
1. `sa_core` dpram 2개 주소 접근 로직 수정
2. Weight stationary 및 Dataflow 관련 논문 search (Tiling 컨셉)
3. 변경된 baseline의 functionality를 검증하는 testbench 작성 및 시뮬레이션

---

## 📋 프로젝트 개요 (여기서부터는 GPT가 작성. 참고만... (변경 사항 최신화X))

**PYNQ-Z2 보드용 8x8 Systolic Array 가속기**

본 IP는 Zynq-7000 SoC (ARM Cortex-A9 + FPGA)에서 INT8 행렬 곱셈 연산을 하드웨어 가속하기 위한 AXI4 기반 커스텀 IP입니다. 딥러닝 추론 가속을 목표로 하며, 대회에서 검증된 코드를 기반으로 작성되었습니다.

### 주요 특징
- **8x8 Systolic Array** 구조 (64개 PE, MAC 연산)
- **INT8 quantization** 지원 (입력/가중치/출력)
- **AXI4-Full Master** 인터페이스 (DDR 메모리 직접 접근)
- **AXI4-Lite Slave** 인터페이스 (제어 레지스터)
- **내부 DPRAM 2개** (입력/출력 버퍼, 각 1280x32-bit)
- **Weight Stationary** 데이터플로우
- **Block-wise DMA** 전송 (버스트 전송 최적화)

---

## 🏗️ 시스템 아키텍처

```
┌─────────────────────────────────────────────────────────────────┐
│                     sa_engine_ip_v1_0 (Top)                     │
│                                                                 │
│  ┌───────────────┐           ┌──────────────────────────────┐  │
│  │  S00_AXI      │           │   sa_core_pipeline           │  │
│  │  (AXI-Lite    │  Control  │   (Main Engine Wrapper)      │  │
│  │   Slave)      ├──────────►│                              │  │
│  │               │           │  ┌────────────────────────┐  │  │
│  │ Register Map: │           │  │  axi_dma_ctrl          │  │  │
│  │ - slv_reg0    │           │  │  (Block Addr Mgmt)     │  │  │
│  │ - slv_reg1    │           │  └──────┬─────────────────┘  │  │
│  │ - slv_reg2    │           │         │                    │  │
│  │ - slv_reg3    │           │  ┌──────▼──────┐  ┌─────────▼┐│ │
│  │ - slv_reg4    │           │  │  dma_read   │  │ dma_write││ │
│  │ - status_reg  │           │  │  (AXI Read) │  │(AXI Write││ │
│  └───────────────┘           │  └──────┬──────┘  └─────▲────┘│ │
│                              │         │               │      │ │
│                              │    ┌────▼───────────────┴───┐  │ │
│                              │    │      sa_core            │  │ │
│                              │    │  (Verified 8x8 Core)    │  │ │
│                              │    │                         │  │ │
│                              │    │  ┌──────────────────┐   │  │ │
│                              │    │  │ DPRAM_IN (1280x32│   │  │ │
│                              │    │  │ Input Buffer)    │   │  │ │
│                              │    │  └──────────────────┘   │  │ │
│                              │    │  ┌──────────────────┐   │  │ │
│                              │    │  │ FSM Controller   │   │  │ │
│                              │    │  │ (9-state FSM)    │   │  │ │
│                              │    │  └──────────────────┘   │  │ │
│                              │    │  ┌──────────────────┐   │  │ │
│                              │    │  │ Systolic Array   │   │  │ │
│                              │    │  │ 8x8 (64 PEs)     │   │  │ │
│                              │    │  └──────────────────┘   │  │ │
│                              │    │  ┌──────────────────┐   │  │ │
│                              │    │  │ DPRAM_OUT(1280x32│   │  │ │
│                              │    │  │ Output Buffer)   │   │  │ │
│                              │    │  └──────────────────┘   │  │ │
│                              │    └─────────────────────────┘  │ │
│                              └──────────────┬──────────────────┘ │
│                                             │                    │
│                                    M00_AXI (AXI4-Full Master)    │
└─────────────────────────────────────┬───────────────────────────┘
                                      │
                                      ▼
                              ┌──────────────┐
                              │  DDR Memory  │
                              │  (PS DRAM)   │
                              └──────────────┘
```

---

## 📦 모듈 설명

### 1. **sa_engine_ip_v1_0** (Top Module)
- S00_AXI와 sa_core_pipeline을 연결하는 최상위 래퍼
- 제어 신호와 상태 신호를 중계

### 2. **sa_engine_ip_v1_0_S00_AXI** (Control Interface)
- AXI4-Lite Slave 인터페이스
- 16개의 32-bit 제어 레지스터 제공
- PS(ARM)에서 제어 명령 전달 및 상태 읽기

### 3. **sa_core_pipeline** (Main Engine Wrapper)
- AXI4-Full Master 인터페이스 구현
- DMA 컨트롤러 및 sa_core 통합
- 대회 검증 코드 구조 그대로 사용

### 4. **axi_dma_ctrl** (DMA Controller)
- 블록 단위 주소 계산 및 관리
- Read/Write FSM으로 DMA 흐름 제어
- Burst 전송 최적화

### 5. **dma_read** (AXI Read Master)
- AXI4 Read 채널 구현
- DDR에서 데이터 읽기 (버스트 전송)
- 256 beat 버스트 지원

### 6. **dma_write** (AXI Write Master)
- AXI4 Write 채널 구현
- 연산 결과를 DDR에 쓰기
- Write response 처리

### 7. **sa_core** (Verified 8x8 Systolic Array Core)
**대회 검증 완료 모듈 (ChipTop.v 기반)**

#### 내부 구조:
- **DPRAM_IN**: 1280x32-bit (입력 행렬 A, B 저장)
- **DPRAM_OUT**: 1280x32-bit (결과 행렬 C 저장)
- **FSM Controller**: 9-state FSM으로 전체 흐름 제어
- **Systolic Array 8x8**: 64개 PE로 병렬 MAC 연산

#### FSM 상태:
1. `S_IDLE`: 대기 상태
2. `S_DATA_LOAD`: DRAM에서 데이터 로드 (? cycles)
3. `S_WRITE_A`: 행렬 A를 내부 레지스터에 쓰기 (? cycles)
4. `S_WRITE_B`: 행렬 B를 내부 레지스터에 쓰기 (? cycles)
5. `S_LOAD`: Systolic Array 로드 (? cycles)
6. `S_INTERRUPT_BUF`: 버퍼 상태
7. `S_MATMUL`: 행렬 곱셈 실행 (? cycles)
8. `S_STORE`: 결과 저장 (? cycles)
9. `S_OUT`: DRAM에 결과 쓰기 (? cycles)

#### Systolic Array 구조:
```
       W0  W1  W2  W3  W4  W5  W6  W7
       ↓   ↓   ↓   ↓   ↓   ↓   ↓   ↓
X0 → [PE][PE][PE][PE][PE][PE][PE][PE]
X1 → [PE][PE][PE][PE][PE][PE][PE][PE]
X2 → [PE][PE][PE][PE][PE][PE][PE][PE]
X3 → [PE][PE][PE][PE][PE][PE][PE][PE]
X4 → [PE][PE][PE][PE][PE][PE][PE][PE]
X5 → [PE][PE][PE][PE][PE][PE][PE][PE]
X6 → [PE][PE][PE][PE][PE][PE][PE][PE]
X7 → [PE][PE][PE][PE][PE][PE][PE][PE]
```

각 PE(Processing Element)는:
- **MAC (Multiply-Accumulate)**: `ACC = ACC + (A * B)`
- **19-bit accumulator** (INT8 입력 → INT19 누적)
- **Pipelining**: 데이터는 한 칸씩 이동

### 8. **하위 모듈들**

#### **FSM** (Systolic Array FSM Controller)
- Load/MatMul 카운터 관리
- Interrupt 신호 생성 (상태 전환 알림)

#### **controller** (Matrix Data Controller)
- 8x8 행렬 A, B, C를 내부 메모리에 관리
- Systolic Array와 데이터 교환

#### **SystolicArray** (8x8 Array Wrapper)
- Register File과 tile8x8 연결

#### **tile8x8** (64 PE Tile)
- 8x8 격자로 배열된 64개 PE
- 행/열 방향 데이터 전파

#### **RF** (Register File)
- 16개의 X_REG로 구성
- 자동 shifting 기능

#### **X_REG** (Shifting Register)
- 32-deep FIFO 형태
- Write 모드: 데이터 저장
- Read 모드: 매 클록 한 칸씩 이동

#### **hPE** (Hardware Processing Element)
- INT8 × INT8 → INT19 MAC 연산
- 레지스터 기반 파이프라인

#### **dpram_wrapper** (Dual-Port RAM)
- 동시 읽기/쓰기 지원
- 시뮬레이션/합성 분기 처리

---

## 📝 Register Map (S00_AXI)

### Base Address
AXI4-Lite Slave Base Address (Vivado에서 자동 할당, 예: `0x43C0_0000`)

### Control Registers (Write)

| Offset | Name | Bits | Description |
|--------|------|------|-------------|
| `0x00` | **CTRL_REG** | [31:0] | 제어 레지스터 |
| | | [0] | **START**: 연산 시작 (Rising edge trigger) |
| | | [31:1] | Reserved (미사용) |
| `0x04` | **READ_BASE_ADDR** | [31:0] | **읽기 베이스 주소**: DRAM에서 입력 데이터 읽을 시작 주소<br/>- Matrix A, B가 연속된 메모리에 저장<br/>- 32-byte aligned 권장 |
| `0x08` | **WRITE_BASE_ADDR** | [31:0] | **쓰기 베이스 주소**: DRAM에 결과 데이터 쓸 시작 주소<br/>- Matrix C 저장 위치<br/>- 32-byte aligned 권장 |
| `0x0C` | **NUM_TRANS** | [31:0] | **DMA 전송 워드 수**: 한 번에 전송할 32-bit word 개수<br/>- 현재 고정값: `16` (8x8 행렬 = 16 words)<br/>- 향후 확장 가능 |
| `0x10` | **MAX_BLK_IDX** | [31:0] | **최대 블록 인덱스**: 전송할 총 블록 수<br/>- 현재 고정값: `2` (Matrix A + B)<br/>- 향후 확장 가능 |
| `0x14` | REG5 | [31:0] | Reserved (파이프라이닝, 캐시 파라미터용 예비) |
| `0x18` | REG6 | [31:0] | Reserved |
| `0x1C` | REG7 | [31:0] | Reserved |
| `0x20` | REG8 | [31:0] | Reserved |
| `0x24` | REG9 | [31:0] | Reserved |
| `0x28` | REG10 | [31:0] | Reserved |
| `0x2C` | REG11 | [31:0] | Reserved |
| `0x30` | REG12 | [31:0] | Reserved |
| `0x34` | REG13 | [31:0] | Reserved |
| `0x38` | REG14 | [31:0] | Reserved |

### Status Register (Read-Only)

| Offset | Name | Bits | Description |
|--------|------|------|-------------|
| `0x3C` | **STATUS_REG** | [31:0] | 상태 레지스터 (읽기 전용) |
| | | [0] | **DONE**: 연산 완료 플래그<br/>- `0`: 진행 중 또는 대기<br/>- `1`: 연산 완료 |
| | | [1] | **BUSY**: 연산 진행 중 플래그<br/>- `0`: IDLE<br/>- `1`: 연산 실행 중 |
| | | [2] | **ERROR**: 에러 플래그<br/>- `0`: 정상<br/>- `1`: 에러 발생 (현재 미사용) |
| | | [31:3] | Reserved |

---

## 🔄 동작 흐름

### 1. 초기화 단계 (PS - ARM에서 실행)

```c
// 1. 입력 데이터 준비 (DDR 메모리)
uint32_t *input_matrix  = 0x10000000;  // Matrix A, B 저장 영역
uint32_t *output_matrix = 0x11000000;  // Matrix C 저장 영역

// 2. 레지스터 설정
volatile uint32_t *axi_base = 0x43C00000;  // AXI-Lite base

axi_base[0x04/4] = (uint32_t)input_matrix;   // READ_BASE_ADDR
axi_base[0x08/4] = (uint32_t)output_matrix;  // WRITE_BASE_ADDR
axi_base[0x0C/4] = 16;                        // NUM_TRANS (고정)
axi_base[0x10/4] = 2;                         // MAX_BLK_IDX (고정)

// 3. 연산 시작
axi_base[0x00/4] = 0x00000001;  // START bit set
```

### 2. 하드웨어 동작 흐름

```
┌────────────────────────────────────────────────────────────┐
│ 1. IDLE → DATA_LOAD (DMA Read 시작)                        │
│    - axi_dma_ctrl에 start_rd_wr[1:0] = 2'b10 전송          │
│    - dma_read가 DDR에서 32 words 읽기 (Matrix A, B)        │
│    - DPRAM_IN에 저장 (32 cycles)                           │
└──────────────────┬─────────────────────────────────────────┘
                   │
┌──────────────────▼─────────────────────────────────────────┐
│ 2. WRITE_A (64 cycles)                                     │
│    - DPRAM_IN에서 Matrix A 읽기                            │
│    - controller의 MAT_A0~A7에 쓰기                         │
│    - 8x8 = 64 elements, 각 4 cycles                       │
└──────────────────┬─────────────────────────────────────────┘
                   │
┌──────────────────▼─────────────────────────────────────────┐
│ 3. WRITE_B (64 cycles)                                     │
│    - DPRAM_IN에서 Matrix B 읽기                            │
│    - controller의 MAT_B0~B7에 쓰기 (Transpose)             │
└──────────────────┬─────────────────────────────────────────┘
                   │
┌──────────────────▼─────────────────────────────────────────┐
│ 4. LOAD (9 cycles)                                         │
│    - Register File(RF)에서 Systolic Array로 데이터 로드    │
│    - X_REG가 자동으로 shifting                             │
└──────────────────┬─────────────────────────────────────────┘
                   │
┌──────────────────▼─────────────────────────────────────────┐
│ 5. MATMUL (24 cycles)                                      │
│    - 64개 PE가 병렬로 MAC 연산 수행                        │
│    - 각 PE: ACC += A * B                                   │
│    - 19-bit accumulator (INT8 × INT8 → INT19)             │
└──────────────────┬─────────────────────────────────────────┘
                   │
┌──────────────────▼─────────────────────────────────────────┐
│ 6. STORE (64 cycles)                                       │
│    - Systolic Array 결과(MAT_C0~C7)를 읽기                 │
│    - INT19 → INT8 변환 (Scaling & Saturation)             │
│    - DPRAM_OUT에 저장                                      │
└──────────────────┬─────────────────────────────────────────┘
                   │
┌──────────────────▼─────────────────────────────────────────┐
│ 7. OUT (DMA Write)                                         │
│    - axi_dma_ctrl에 start_rd_wr[1:0] = 2'b11 전송          │
│    - dma_write가 DPRAM_OUT에서 16 words 읽기               │
│    - DDR에 쓰기 (Matrix C)                                 │
└──────────────────┬─────────────────────────────────────────┘
                   │
┌──────────────────▼─────────────────────────────────────────┐
│ 8. DONE & Interrupt                                        │
│    - status_reg[0] = 1 (DONE)                             │
│    - PS로 인터럽트 전달 (옵션)                             │
└────────────────────────────────────────────────────────────┘
```

### 3. 결과 확인 (PS - ARM)

```c
// 상태 폴링
while ((axi_base[0x3C/4] & 0x1) == 0) {
    // DONE bit가 1이 될 때까지 대기
}

// 결과 읽기
uint32_t *result = output_matrix;
for (int i = 0; i < 16; i++) {
    printf("C[%d] = %d\n", i, result[i]);
}
```

---

## ⏱️ 성능 분석

### Latency (8x8 행렬 곱셈 1회)
| 단계 | Cycles | 비고 |
|------|--------|------|
| DATA_LOAD | ? | DMA Read |
| WRITE_A | ? | Matrix A 로딩 |
| WRITE_B | ? | Matrix B 로딩 |
| LOAD | ? | Systolic Array 로딩 |
| MATMUL | ? | 병렬 MAC 연산 |
| STORE | ? | 결과 저장 + Quantization |
| OUT | ? | DMA Write |
| **Total** | **? cycles** | @ ? MHz = ? μs |

### Throughput
- **MAC Operations**: 8×8×8 = 512 MACs
- **Cycles**: ? cycles
- **Efficiency**: ? / ? ≈ **? MACs/cycle**
- **Peak Performance** (? MHz): ? MMAC/s

### 최적화 포인트
1. **DMA Burst 크기 증가**: 현재 16 words → 256 words (하드웨어 지원됨)
2. **Double Buffering**: 연산 중 다음 데이터 프리로드
3. **Array 크기 확장**: 8×8 → 16×16 (DSP 자원 허용 시)
4. **Tiling**: 큰 행렬을 8×8 블록으로 나눠 반복 연산



## 🧪 시뮬레이션 환경

- `capstone_design_final.srcs` 아래 BFM 기반 프로젝트에서 `sa_engine_tb` 구동을 확인했으며, 세찬이가 구성한 테스트 벤치를 그대로 활용합니다.
- 현재 시뮬레이션 탑 모듈은 `sa_core_pipeline` 하나이며, block design 탑인 `sa_engine_ip_v1_0`은 아직 통합 검증을 진행하지 않았습니다.
- 향후 연구와 실험은 본 시뮬레이션 환경을 기준으로 진행하면 됩니다. HDL 수정 후에는 `vivado -mode batch -source sa_engine_ip_1.0/example_designs/bfm_design/design.tcl` 명령으로 프로젝트를 재생성하세요.
- `sa_engine_top.sv`는 이전 AXI3 기반 BFM과의 호환을 위해 AXI4 포트를 AXI3 시그널링으로 감싸는 래퍼(wrapper) 역할을 합니다.

---


## 🔬 검증 상태

- ✅ **sa_core_pipeline 검증 완료**: `capstone_design_final.srcs` 시뮬레이션에서 `sa_engine_tb`를 기준으로 정상 동작 확인
- ⚠️ **블록 디자인 탑 미검증**: `sa_engine_ip_v1_0` + PS 통합 흐름은 추가 시뮬레이션 및 HW bring-up 필요
- 🔁 **재실행 가이드**: HDL 변경 시 BFM 디자인 TCL을 다시 실행해 환경을 최신 상태로 유지
- ℹ️ **래퍼 구조**: `sa_engine_top.sv`가 AXI4 포트를 AXI3와 호환시키는 중간 계층을 제공

---

## 🚀 연구 로드맵

### 1. DRAM 접근 최적화
- **목표**: 메모리 대역폭 병목을 줄이고 DMA 전송 구조를 효율화
- **해야 할 일**
  - AXI DMA 전송 패턴 실험 (Burst 크기, 주소 정렬, 패딩 방식 적용)
  - 메모리 전송 전·후 속도 및 지연 시간 측정
  - 최적화 전후 throughput 등 성능 비교·분석

### 2. BRAM 캐시 활용 + Tiling
- **목표**: 내부 BRAM을 캐시와 버퍼로 활용해 DRAM 접근을 최소화
- **해야 할 일**
  - 입력 데이터 및 가중치를 BRAM에 미리 적재하는 구조 설계
  - Weight stationary 데이터플로우 우선 적용 (가중치 재사용 극대화)
  - 캐시 적용 전후 메모리 접근 횟수와 성능 변화 실험

### 3. 연산-전송 파이프라이닝 + Scheduling
- **목표**: 연산과 데이터 전송을 동시에 수행해 idle time 최소화
- **해야 할 일**
  - Double buffering 구조 설계 (연산 중 다음 데이터 전송 준비)
  - DMA 제어 코드 수정 후 연산·전송 동기화 실험
  - 파이프라이닝 적용 전후 idle cycle 비교

### 4. Systolic Array 구조 및 데이터플로우 분석
- **목표**: Array 크기 및 데이터 흐름 구조에 따른 성능·자원 효율 비교
- **해야 할 일**
  - Array 크기 변경 실험 (예: 8×8 → 16×16)
  - DSP 자원 활용 방식 실험 (INT8 병렬 연산 최적화 등)
  - 다양한 데이터플로우 구조 비교 (Weight stationary vs Output stationary)

---

## 📘 공통 기술 노트

- **PYNQ-Z2 보드 자원**: Zynq-7000 SoC 구조(ARM Cortex-A9 + FPGA), BRAM 약 630KB, DSP 220개
- **AXI 인터페이스 & DMA**: AXI4, AXI-Lite, AXI-Stream 차이, DMA의 DDR↔FPGA 전송 원리, Burst 전송 개념
- **Systolic Array 기본**: PE(MAC) 내부 동작, 데이터가 한 칸씩 이동하는 파이프라인 구조, 현행 아키텍처 이해
- **데이터플로우 전략**: Weight/Output/Row/Column stationary 방식의 장단점
- **성능 지표**: Latency, Throughput(FPS), Bandwidth(MB/s), Idle cycle, Utilization

---

## 📧 Contact

- **Project**: Capstone Design (졸업작품)
- **Board**: PYNQ-Z2 (Zynq-7000)
- **Last Updated**: 2025-10-17
- **Email**: sudeangi0623@cau.ac.kr

---

## 📄 License

Academic Use Only (Capstone Design Project)

