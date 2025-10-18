# DRAM Access Optimization – Day 1~2 Log

본 문서는 **systolic array DRAM 접근 최적화 실험**의 초기 단계 (Day 1~2) 과정을 정리한 것입니다.  
시뮬레이션 환경을 구축하고, 기준선 성능을 측정하여 이후 최적화(버스트, 정렬, 캐싱 등)의 비교 지표로 활용합니다.

---

## 🧩 Day 1 — Simulation 환경 세팅

### 🎯 목표
- `sa_engine_ip` 의 **M_AXI 마스터 포트**가 실제로 DDR(AXI Slave 모델)과 통신하는지 확인
- Read / Write 트랜잭션과 FSM 완료(`network_done`) 동작 검증

### ⚙️ 환경 구성
| 항목 | 내용 |
|------|------|
| Tool | Vivado 2023.1 |
| Board | PYNQ-Z2 (시뮬레이션 전용, 실제 보드 없음) |
| Top | `sa_engine_tb` |
| Simulation | XSIM (Behavioral Simulation) |
| Clock | 100 MHz (`CLK_PERIOD = 10ns`) |

### ✅ Block Design 구성
- **processing_system7_0** : Zynq PS, 내부 DDR 포함  
- **sa_engine_ip_0** : Custom IP, AXI-Lite + AXI Master 인터페이스  
- **axi_mem_intercon** : M_AXI ↔ DDR 연결  
- 별도의 AXI DMA IP 없음 (커스텀 DMA 로직 내장형 구조)

### 🧪 수행 내용
1. Vivado에서 시뮬레이션 실행  
2. 파형 관찰:
   - `M_ARVALID / M_ARREADY` → Read handshake
   - `M_AWVALID / M_AWREADY` → Write handshake
   - `M_WVALID / M_WREADY / M_BVALID / M_BREADY` → Write 완료
3. `network_done == 1` 확인 → FSM 정상 종료

### 🖼️ 주요 파형 캡처
- Read 경로: `ARVALID/ARREADY` 및 `RVALID/RREADY` 핸드셰이크 발생  
- Write 경로: `AWVALID/AWREADY`, `WVALID/WREADY`, `BVALID/BREADY` 순서 정상  
- `network_done` 플래그 1로 상승 (성공)

### 🎉 결과
| 구분 | 결과 |
|------|------|
| Read 트랜잭션 | 정상 |
| Write 트랜잭션 | 정상 |
| FSM 완료 신호 | 정상 (`network_done=1`) |
| 시뮬레이션 오류 | 없음 |

→ **Day 1 목표 달성: DRAM ↔ DMA(커스텀) ↔ 연산기 간 연결 확인 완료**

---

## 📊 Day 2 — Baseline 성능 측정

### 🎯 목표
- 시뮬레이션에서 DRAM 접근의 **기준선 성능(Throughput, Burst 수, Cycle)** 측정  
- 향후 최적화 비교용 지표 확보

### 🧰 수정 사항
- `sa_engine_tb.v` 하단에 **Performance Monitor 블록** 추가  
  - Read / Write burst 및 beat 카운트  
  - 시작~종료까지의 cycle 수 계산  
  - 결과를 `baseline.csv`로 저장

### 📈 측정 항목
| 항목 | 설명 |
|------|------|
| cycles | 전체 수행 사이클 수 (`network_done`까지) |
| rd_bursts / wr_bursts | Read / Write burst 횟수 |
| rd_beats / wr_beats | Read / Write 데이터 beat 수 |
| rd_bytes / wr_bytes | 실제 전송 바이트 수 (D/8 × beats) |

### 🧪 실행 방법
```tcl
launch_simulation
run all
