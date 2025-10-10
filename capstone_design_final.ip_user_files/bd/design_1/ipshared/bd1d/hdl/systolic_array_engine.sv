`timescale 1ns/1ps

// ============================================================================
// systolic_array_engine_stream.sv  (PASTE-READY)
// - AXI-Stream 유사 ready/valid 입출력
// - IDLE -> RUN -> FLUSH -> DONE
// - 파라미터 PIPE_LATENCY 동안 데이터 지연(=연산 흉내)
// - i_size_param: 총 "전송 워드 수"로 해석 (DATA_WIDTH 기준)
// ============================================================================
module systolic_array_engine #(
  parameter int DATA_WIDTH   = 32,
  parameter int PIPE_LATENCY = 8   // 연산 파이프라인 지연(사이클)
)(
  input  logic                  clk,
  input  logic                  rst_n,

  // Control (레지스터에서 들어옴)
  input  logic                  i_start,        // 레벨 입력 → 내부에서 펄스화
  input  logic [31:0]           i_size_param,   // 총 워드 수
  input  logic [31:0]           i_src_addr,     // 필요시 사용
  input  logic [31:0]           i_wgt_addr,     // 필요시 사용
  input  logic [31:0]           i_dst_addr,     // 필요시 사용

  // Status
  output logic                  o_busy,
  output logic                  o_done,         // 1클럭 펄스
  output logic                  o_error,        // 단순 래치(여기선 0)

  // Stream IN  (from dma_read)
  input  logic [DATA_WIDTH-1:0] s_tdata,
  input  logic                  s_tvalid,
  output logic                  s_tready,

  // Stream OUT (to dma_write)
  output logic [DATA_WIDTH-1:0] m_tdata,
  output logic                  m_tvalid,
  input  logic                  m_tready
);

  // ---------------------------
  // 0) start 펄스화 + 수락 조건
  // ---------------------------
  logic start_d, start_pulse;
  always_ff @(posedge clk) begin
    if(!rst_n) begin
      start_d     <= 1'b0;
      start_pulse <= 1'b0;
    end else begin
      start_pulse <= i_start & ~start_d; // rising edge
      start_d     <= i_start;
    end
  end

  // ---------------------------
  // 1) FSM
  // ---------------------------
  typedef enum logic [1:0] {IDLE, RUN, FLUSH, DONE} state_t;
  state_t st;

  // 총 워드 수 카운트 (입력 수락 기준)
  logic [31:0] words_goal;     // i_size_param latch
  logic [31:0] words_in_cnt;   // 수신 완료 워드수
  logic [31:0] words_out_cnt;  // 송신 완료 워드수

  // 오류는 일단 사용 안함
  assign o_error = 1'b0;

  // ---------------------------
  // 2) 간단한 파이프라인(연산 흉내)
  //    - 길이 PIPE_LATENCY인 쉬프트 레지스터
  //    - 유효비트도 같은 길이로 딜레이
  // ---------------------------
  logic [DATA_WIDTH-1:0] pipe_data   [0:PIPE_LATENCY-1];
  logic                  pipe_valid  [0:PIPE_LATENCY-1];

  // 입력 수락 조건: RUN 상태에서만 받고, 총 목표량보다 적게 받는 동안
  wire can_accept = (st==RUN) && (words_in_cnt < words_goal);

  // s_tready: 우리가 받을 수 있을 때, 그리고 다음 스테이지가 백프레셔 없이 흘릴 수 있을 때
  // (여기선 파이프라인 첫 스테이지가 항상 수용 가능하다고 가정)
  assign s_tready = can_accept;

  // 파이프라인 시프트
  integer i;
  always_ff @(posedge clk) begin
    if(!rst_n) begin
      for (i=0; i<PIPE_LATENCY; i++) begin
        pipe_data[i]  <= '0;
        pipe_valid[i] <= 1'b0;
      end
    end else begin
      // stage0: 새 데이터 수락
      if (s_tvalid && s_tready) begin
        pipe_data[0]  <= s_tdata;
        pipe_valid[0] <= 1'b1;
      end else begin
        // 수락 안 하면 stage0 valid는 별도 유지 안 함
        pipe_valid[0] <= 1'b0;
      end
      // 나머지 단계 시프트
      for (i=1; i<PIPE_LATENCY; i++) begin
        pipe_data[i]  <= pipe_data[i-1];
        pipe_valid[i] <= pipe_valid[i-1];
      end
    end
  end

  // 파이프라인 마지막이 출력
  assign m_tdata  = pipe_data [PIPE_LATENCY-1];
  assign m_tvalid = pipe_valid[PIPE_LATENCY-1];

  // 송신 수락
  wire send_fire = m_tvalid && m_tready;

  // ---------------------------
  // 3) 카운터/상태 제어
  // ---------------------------
  always_ff @(posedge clk) begin
    if(!rst_n) begin
      st           <= IDLE;
      o_busy       <= 1'b0;
      o_done       <= 1'b0;
      words_goal   <= 32'd0;
      words_in_cnt <= 32'd0;
      words_out_cnt<= 32'd0;
    end else begin
      o_done <= 1'b0; // 펄스

      case (st)
        IDLE: begin
          o_busy       <= 1'b0;
          words_in_cnt <= 32'd0;
          words_out_cnt<= 32'd0;

          if (start_pulse) begin
            // 목표량 latch (0이면 바로 DONE 처리 가능)
            words_goal <= i_size_param;
            o_busy     <= (i_size_param != 0);
            st         <= (i_size_param == 0) ? DONE : RUN;
          end
        end

        RUN: begin
          o_busy <= 1'b1;

          // 입력 수락 시 입력 카운트 증가
          if (s_tvalid && s_tready)
            words_in_cnt <= words_in_cnt + 1;

          // 모든 입력을 다 받았으면 출력 잔여 플러시 단계로
          if (words_in_cnt == words_goal)
            st <= FLUSH;
        end

        FLUSH: begin
          o_busy <= 1'b1;

          // 출력이 나갈 때만 출력 카운트 증가
          if (send_fire)
            words_out_cnt <= words_out_cnt + 1;

          // 목표량 만큼 전부 내보냈으면 DONE
          if (words_out_cnt == words_goal)
            st <= DONE;
        end

        DONE: begin
          o_busy <= 1'b0;
          o_done <= 1'b1; // 1클럭 펄스
          st     <= IDLE;
        end

        default: st <= IDLE;
      endcase
    end
  end

endmodule
