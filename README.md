# 🧩 Day 3 — AXI DMA Burst Length 효율 비교 실험

## 📘 개요
**실험 목적:**  
AXI DMA에서 `ARLEN` / `AWLEN` (즉, Burst Length)을 변경했을 때 전송 효율이 어떻게 변하는지를 비교한다.  
즉, **Burst 길이가 커질수록 Address 오버헤드가 얼마나 줄고, 전체 사이클이 얼마나 감소하는지를 분석**한다.

이 실험에서는 DMA 내부 파라미터:

```systemverilog
// dma_read.sv / dma_write.sv
localparam FIXED_BURST_SIZE = <value>;
값을 변경하여 여러 Burst 길이에서 시뮬레이션을 수행했다.

⚙️ 실험 환경 및 구성
항목	내용
수정 파일	dma_read.sv, dma_write.sv
변경 파라미터	FIXED_BURST_SIZE
Testbench	sa_engine_tb.v
측정 지표	cycles, rd_bursts, wr_bursts, rd_beats, wr_beats, rd_bytes, wr_bytes
시뮬레이션 도구	Vivado XSIM (IP Packager 미사용, 코드 직접 수정 방식)
출력 결과 파일	BRUST_SIZE_4.csv, BRUST_SIZE_8.csv, BRUST_SIZE_16.csv, BRUST_SIZE_32.csv, BRUST_SIZE_64.csv, BRUST_SIZE_128.csv, BRUST_SIZE_256.csv

🔧 Burst Length 설정
케이스	FIXED_BURST_SIZE	ARLEN/AWLEN	실제 Burst 길이
1	4	3	4 beats
2	8	7	8 beats
3	16	15	16 beats
4	32	31	32 beats
5	64	63	64 beats
6	128	127	128 beats
7	256	255	256 beats

ARLEN/AWLEN = FIXED_BURST_SIZE − 1
즉, FIXED_BURST_SIZE가 256이면 실제 ARLEN/AWLEN은 255가 된다.

📊 시뮬레이션 결과
Burst Length	Cycles
4	351
8	327
16	315
32	315
64	315
128	315
256	315

✅ 결과 해석:
Burst Length를 4 → 8 → 16으로 늘리면 Cycles가 감소하지만,
16 이상에서는 변화가 거의 없고 효율이 포화됨.

📈 그래프: Cycles vs Burst Length

4 → 8 → 16: 주소 오버헤드 감소로 성능 향상

≥16: 메모리 인터커넥트 대역폭 포화 → 사이클 변화 없음

🧠 결과 분석
구분	분석 내용
효율 증가 구간	4 → 8 → 16 구간에서 Address Phase 오버헤드 감소로 Cycles 급감
포화 구간	16 이상에서는 DMA 내부 및 메모리 대역폭이 한계에 도달해 Cycles 변화 없음
최적 효율점	FIXED_BURST_SIZE = 16
256과의 차이	거의 없음 (버스트 효율 포화)
AXI 동작 검증	ARLEN/AWLEN이 FIXED_BURST_SIZE − 1로 정상 출력됨
4KB 경계 조건	4~128 범위에서는 문제 없음, 256 이상 시 주소 정렬 주의 필요

⚙️ 추가 실험: 64, 128, 256
64 / 128에서도 사이클은 315로 동일 → 효율 완전 포화

Address phase가 전체 지연에 미치는 영향이 거의 사라졌음을 의미

즉, 16 beat 이상에서는 DMA 병목이 버스트 길이가 아닌 메모리 대역폭에 있음

🏁 결론
항목	결론
최적화된 값	✅ FIXED_BURST_SIZE = 16
효율 향상 구간	4 → 8 → 16
포화 구간	16 이상
성능 향상 원인	Address Phase 오버헤드 감소
포화 원인	Memory/Bus Throughput 제한
권장 설정	16 또는 32 (안정성과 성능의 균형)

⚠️ 주의사항
AXI4 버스트는 256 beat가 최대이며, 4KB 경계를 넘으면 안 됨.

너무 긴 버스트(≥128)는 다른 마스터와 공유 시 버스 점유 시간이 길어질 수 있음.

테스트 시 DMA read/write의 FIXED_BURST_SIZE를 동일하게 설정해야 함.

시뮬레이션 후 캐시(xsim.dir, .Xil)를 꼭 초기화할 것.