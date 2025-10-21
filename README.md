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
