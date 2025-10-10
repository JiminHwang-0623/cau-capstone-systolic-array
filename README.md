# 📋 현재 Skeleton Code 구조 분석

## 1️⃣ **sa_engine_ip_v1_0** (최상위 모듈)

```sa_engine_ip_1.0/hdl/sa_engine_ip_v1_0.v```

**역할:**
- Vivado AXI IP의 최상위 래퍼 모듈
- AXI-Lite Slave 인터페이스 (제어/상태 레지스터)
- AXI Full Master 인터페이스 (DMA 메모리 접근)
- 내부 제어 신호 연결

**현재 상태:**
- ✅ AXI-Lite Slave 모듈 (`sa_engine_ip_v1_0_S00_AXI`) 인스턴스화됨
- ✅ `sa_core_pipeline` 모듈 인스턴스화됨
- ❌ 원래 AXI Master 모듈은 주석 처리됨 (154-214줄)
- ✅ 내부 제어 신호 연결: `engine_start`, `engine_src_addr`, `engine_wgt_addr`, `engine_dst_addr`, `engine_size_param`
- ✅ 상태 신호: `engine_done`, `engine_busy`, `engine_error`

---

## 2️⃣ **sa_engine_ip_v1_0_S00_AXI** (AXI-Lite Slave)

**역할:**
- PS(Processing System, ARM CPU)에서 제어 레지스터를 읽고 쓸 수 있도록 함
- 레지스터 맵을 통해 엔진 제어 및 상태 모니터링

**레지스터 맵:**
```sa_engine_ip_1.0/hdl/sa_engine_ip_v1_0_S00_AXI.v```

| 오프셋 | 레지스터 | 기능 | 방향 |
|--------|---------|------|------|
| 0x00 | slv_reg0[0] | 시작 신호 (start) | Write |
| 0x04 | slv_reg1 | 소스 주소 (src_addr) | Write |
| 0x08 | slv_reg2 | 가중치 주소 (wgt_addr) | Write |
| 0x0C | slv_reg3 | 목적지 주소 (dst_addr) | Write |
| 0x10 | slv_reg4 | 크기 파라미터 (size_param) | Write |
| 0x3C | status_reg[0] | 완료 플래그 (done) | Read |
| 0x3C | status_reg[1] | 동작 중 플래그 (busy) | Read |
| 0x3C | status_reg[2] | 에러 플래그 (error) | Read |

**현재 상태:**
- ✅ 표준 AXI-Lite 프로토콜 구현 완료
- ✅ 제어/상태 신호 연결 완료
- ✅ 즉시 사용 가능

---

## 3️⃣ **sa_core_pipeline** (메인 파이프라인 제어기)

**역할:**
- FSM으로 전체 동작 흐름 제어: IDLE → READ → COMP → WRITE
- DMA Read, Systolic Engine, DMA Write 모듈을 연결
- AXI Stream 인터페이스로 모듈 간 데이터 전송

**FSM 동작:**
```sa_engine_ip_1.0/hdl/sa_core_pipeline.sv```

1. **IDLE**: `start_pulse` 대기
2. **READ**: DMA Read로 입력 데이터 읽기 (`rd_done` 대기)
3. **COMP**: 연산 단계로 전환 (1사이클)
4. **WRITE**: DMA Write로 결과 쓰기 (`wr_done && eng_done` 대기)

**스트림 연결:**
- DMA Read → Engine: `rd_data`, `rd_valid`, `rd_ready`
- Engine → DMA Write: `eng_data_out`, `eng_valid_out`, `eng_ready_out`

**현재 상태:**
- ✅ FSM 구조 완성
- ✅ 모듈 인스턴스화 완료
- ⚠️ **순차적 구조**: READ 완료 후에만 COMP로 진행 (파이프라이닝 없음)
- ❌ Double buffering 미구현

---

## 4️⃣ **dma_read** (DMA Read 모듈)

**역할:**
- AXI Read 채널을 통해 DRAM에서 데이터 읽기
- AXI Stream으로 데이터 출력

**현재 상태:**
```sa_engine_ip_1.0/hdl/dma_read.sv```

- ❌ **완전한 Stub 코드**: 실제 AXI 트랜잭션 없음
- ❌ AXI 신호가 모두 기본값으로 할당됨 (41-44줄)
- ❌ FSM이 있지만 더미 데이터(`'0`) 1개만 전송
- 🔴 **가장 먼저 구현해야 할 모듈**

---

## 5️⃣ **dma_write** (DMA Write 모듈)

**역할:**
- AXI Stream으로 데이터 받아서 DRAM에 쓰기
- AXI Write 채널 사용

**현재 상태:**
```sa_engine_ip_1.0/hdl/dma_write.sv```

- ❌ **완전한 Stub 코드**: 실제 AXI 트랜잭션 없음
- ❌ AXI 신호가 모두 기본값으로 할당됨 (45-52줄)
- ❌ FSM이 있지만 데이터를 받기만 하고 쓰지 않음
- 🔴 **dma_read 다음으로 구현해야 할 모듈**

---

## 6️⃣ **systolic_array_engine** (Systolic Array 엔진)

**역할:**
- 실제 행렬 곱셈 연산 수행
- 파이프라인 레이턴시 관리

**현재 상태:**
```sa_engine_ip_1.0/hdl/systolic_array_engine.sv```

- ⚠️ **파이프라인 구조만 존재**: 실제 systolic array 연산 로직 없음
- ✅ 스트림 인터페이스 구현됨
- ✅ FSM: IDLE → RUN → FLUSH → DONE
- ❌ **실제 연산은 단순 파이프라인 통과**: 입력 데이터를 8사이클 지연 후 그대로 출력
- 🟡 **DMA 구현 후 실제 연산 로직 추가해야 함**

---

# 🎯 권장 작업 우선순위

분석 결과, **현재 skeleton code는 동작하지 않습니다**. 다음 순서로 구현하는 것을 강력히 권장합니다:

## **Phase 1: 기본 동작 구현 (필수)** 🔥

### 1-1. DMA Read 모듈 구현
- AXI Read Address 채널 구현
- AXI Read Data 채널 구현
- Burst 전송 기능 (단순 고정 길이부터 시작)
- **목표**: DRAM에서 실제 데이터를 읽어서 스트림으로 출력

### 1-2. DMA Write 모듈 구현
- AXI Write Address 채널 구현
- AXI Write Data 채널 구현
- Write Response 처리
- **목표**: 스트림 데이터를 받아서 DRAM에 실제로 쓰기

### 1-3. 간단한 연산 검증
- Systolic array 대신 간단한 연산 (예: 데이터 복사, +1 연산)으로 먼저 검증
- PS에서 데이터 쓰고 → 연산 → 결과 읽기 전체 플로우 확인


---

## **Phase 2: Systolic Array 구현** 🟢

### 2-1. 작은 크기로 시작 (4x4 또는 8x8)
- PE (Processing Element) 설계
- 데이터플로우 선택: Weight Stationary 권장
- 간단한 INT8 MAC (Multiply-Accumulate)

### 2-2. 검증 및 디버깅
- 작은 행렬로 기능 검증
- 자원 사용량 확인 (DSP, BRAM, LUT)

---

## **Phase 3: 최적화 (연구 과제 시작)** ⚡

이제 사용자가 제시한 연구 과제를 순차적으로 진행:

### 3-1. **DRAM 접근 최적화** (가장 먼저!)
**이유**: 
- 메모리 병목이 가장 큰 성능 저하 요인
- DMA가 이미 구현되어 있어야 실험 가능
- 다른 최적화의 기반이 됨

**실험:**
1. Burst 크기 변경 (16, 32, 64, 128...)
2. 주소 정렬 (4K alignment 등)
3. 읽기/쓰기 동시 실행 가능성 검토

### 3-2. **연산-전송 파이프라이닝 + Double Buffering**
**이유**:
- DRAM 최적화 후 idle time이 명확히 보임
- 구현 난이도가 상대적으로 낮음
- 성능 향상 효과가 크고 측정하기 쉬움

**구현:**
1. BRAM 버퍼 2개 설계 (ping-pong)
2. FSM 수정: READ와 COMP 오버랩
3. 동기화 로직 추가

### 3-3. **BRAM 캐시 + Tiling**
**이유**:
- Double buffering이 구현되어 있어야 효과적
- Weight Stationary 데이터플로우와 결합
- 큰 행렬 연산에 필수

**구현:**
1. 가중치를 BRAM에 미리 로드
2. 입력 데이터를 타일 단위로 처리
3. DRAM 접근 횟수 측정 및 비교

### 3-4. **Systolic Array 크기 및 데이터플로우 실험**
**이유**:
- 모든 기반 구조가 완성되어야 의미 있는 실험 가능
- 자원 제약을 고려한 최적화

**실험:**
1. 8x8 → 12x12 → 16x16 크기 변경
2. Weight Stationary vs Output Stationary 비교
3. DSP 자원 활용률 분석

---

# 📊 전체 로드맵

```
[현재 상태]
Skeleton only (동작 불가)
         ↓
[Phase 1] 기본 동작 구현 (2-3주)
- DMA Read/Write 완전 구현
- End-to-end 데이터 전송 검증
         ↓
[Phase 2] Systolic Array 구현 (2-3주)
- 4x4 또는 8x8 크기
- Weight Stationary
- 기능 검증
         ↓
[Phase 3-1] DRAM 최적화 (1-2주)
- Burst 크기 실험
- 메모리 대역폭 측정
         ↓
[Phase 3-2] 파이프라이닝 (1-2주)
- Double buffering
- Idle time 감소
         ↓
[Phase 3-3] BRAM 캐싱 (1-2주)
- Tiling 구현
- 가중치 재사용
         ↓
[Phase 3-4] 구조 최적화 (2-3주)
- Array 크기 실험
- 데이터플로우 비교
```

---

# 💡 추천

**지금 당장 시작해야 할 것:**

1. **DMA Read 모듈 완전 구현** - AXI 프로토콜 공부하면서
2. **간단한 테스트벤치 작성** - Vivado 시뮬레이션으로 검증
3. **DMA Write 모듈 완전 구현**
4. **PYNQ-Z2에서 실제 테스트** - 작은 데이터로 복사 테스트

skeleton code는 구조만 잡혀 있고 실제 동작하는 코드가 거의 없습니다. 최적화는 **일단 동작하는 버전**을 만든 후에 진행해야 의미가 있습니다.
