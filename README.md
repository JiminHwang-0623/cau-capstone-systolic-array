🧩 Step 1 — Lightweight Handshake Integration (Prefetch Handshake + Trigger Migration)
🎯 목적

기존 시스템은 sa_core 모듈이 직접 axi_dma_ctrl에 Read/Write 트리거(start_rd_wr) 를 전달하여 데이터 전송을 순차적으로 수행하고 있었다.
Step 1의 목표는 이후 단계에서 “연산–전송 병렬화(Pipelining)”를 구현하기 위한 사전작업으로,
연산 모듈과 DMA 제어부 간에 경량 핸드셰이크 신호(prefetch/compute) 를 새로 추가하고,
DMA Read FSM의 시작 트리거를 prefetch 요청 신호로 교체하는 것이다.

이 단계에서는 기능 변화 없이 기존 동작과 동일하게 동작하도록 배선만 구성하며,
추후 단계(스케줄러 FSM 및 오버랩 구현)를 위한 구조적 기반을 마련한다.

⚙️ 수정 내역
🔹 sa_core_pipeline.sv

신규 내부 신호 추가

prefetch_req : DMA Read 요청 (pipeline → DMA)

prefetch_done : DMA Read 완료 (DMA → pipeline)

compute_req : 연산 시작 (pipeline → sa_core)

compute_done : 연산 완료 (sa_core → pipeline)

임시 매핑 (기능 동일 유지)
기존 신호를 그대로 재사용하여 동작 변화 없음:

assign compute_req   = ap_start;
assign compute_done  = done_core;
assign prefetch_req  = (start_rd_wr == 2'b10);


컨트롤러 인스턴스에 신규 포트 연결

.i_prefetch_req (prefetch_req),
.o_prefetch_done(prefetch_done)

🔹 axi_dma_ctrl.sv

신규 포트 추가

input  logic i_prefetch_req;   // Read FSM 시작 트리거
output logic o_prefetch_done;  // Read 완료 알림 (현재는 i_read_done과 동일)


Read FSM 시작 조건 전환
기존

if (i_start == 2'b10)
    nstate_rd = ST_DMA;


→ 변경

if (i_prefetch_req)
    nstate_rd = ST_DMA;


Prefetch 완료 신호 매핑

assign o_prefetch_done = i_read_done;


Write FSM 및 블록 카운터 로직은 변경 없음.

🧠 설계 의도

핵심 개념:
이후 단계에서 pipeline이 prefetch_req를 통해 “다음 타일의 DMA Read”를 미리 요청할 수 있게 하기 위한 사전 배선이다.
현재 단계에서는 기존 start_rd_wr 기반 동작을 그대로 유지하므로, 시뮬레이션 결과가 이전과 동일해야 한다.

비파이프라인 모드와의 분기 제거:
PIPE_EN, USE_PREFETCH 등의 토글 파라미터를 사용하지 않고
단일 파이프라인 경로로 구조를 단순화하였다.
Baseline 성능 비교는 별도의 Git 브랜치(baseline-pre-pipeline)에서 수행 예정이다.