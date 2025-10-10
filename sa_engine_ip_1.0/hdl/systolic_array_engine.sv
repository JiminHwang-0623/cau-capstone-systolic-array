`timescale 1ns/1ps

// ============================================================================
// systolic_array_engine_stream.sv  (PASTE-READY)
// - AXI-Stream ���� ready/valid �����
// - IDLE -> RUN -> FLUSH -> DONE
// - �Ķ���� PIPE_LATENCY ���� ������ ����(=���� �䳻)
// - i_size_param: �� "���� ���� ��"�� �ؼ� (DATA_WIDTH ����)
// ============================================================================
module systolic_array_engine #(
  parameter int DATA_WIDTH   = 32,
  parameter int PIPE_LATENCY = 8   // ���� ���������� ����(����Ŭ)
)(
  input  logic                  clk,
  input  logic                  rst_n,

  // Control (�������Ϳ��� ����)
  input  logic                  i_start,        // ���� �Է� �� ���ο��� �޽�ȭ
  input  logic [31:0]           i_size_param,   // �� ���� ��
  input  logic [31:0]           i_src_addr,     // �ʿ�� ���
  input  logic [31:0]           i_wgt_addr,     // �ʿ�� ���
  input  logic [31:0]           i_dst_addr,     // �ʿ�� ���

  // Status
  output logic                  o_busy,
  output logic                  o_done,         // 1Ŭ�� �޽�
  output logic                  o_error,        // �ܼ� ��ġ(���⼱ 0)

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
  // 0) start �޽�ȭ + ���� ����
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

  // �� ���� �� ī��Ʈ (�Է� ���� ����)
  logic [31:0] words_goal;     // i_size_param latch
  logic [31:0] words_in_cnt;   // ���� �Ϸ� �����
  logic [31:0] words_out_cnt;  // �۽� �Ϸ� �����

  // ������ �ϴ� ��� ����
  assign o_error = 1'b0;

  // ---------------------------
  // 2) ������ ����������(���� �䳻)
  //    - ���� PIPE_LATENCY�� ����Ʈ ��������
  //    - ��ȿ��Ʈ�� ���� ���̷� ������
  // ---------------------------
  logic [DATA_WIDTH-1:0] pipe_data   [0:PIPE_LATENCY-1];
  logic                  pipe_valid  [0:PIPE_LATENCY-1];

  // �Է� ���� ����: RUN ���¿����� �ް�, �� ��ǥ������ ���� �޴� ����
  wire can_accept = (st==RUN) && (words_in_cnt < words_goal);

  // s_tready: �츮�� ���� �� ���� ��, �׸��� ���� ���������� �������� ���� �긱 �� ���� ��
  // (���⼱ ���������� ù ���������� �׻� ���� �����ϴٰ� ����)
  assign s_tready = can_accept;

  // ���������� ����Ʈ
  integer i;
  always_ff @(posedge clk) begin
    if(!rst_n) begin
      for (i=0; i<PIPE_LATENCY; i++) begin
        pipe_data[i]  <= '0;
        pipe_valid[i] <= 1'b0;
      end
    end else begin
      // stage0: �� ������ ����
      if (s_tvalid && s_tready) begin
        pipe_data[0]  <= s_tdata;
        pipe_valid[0] <= 1'b1;
      end else begin
        // ���� �� �ϸ� stage0 valid�� ���� ���� �� ��
        pipe_valid[0] <= 1'b0;
      end
      // ������ �ܰ� ����Ʈ
      for (i=1; i<PIPE_LATENCY; i++) begin
        pipe_data[i]  <= pipe_data[i-1];
        pipe_valid[i] <= pipe_valid[i-1];
      end
    end
  end

  // ���������� �������� ���
  assign m_tdata  = pipe_data [PIPE_LATENCY-1];
  assign m_tvalid = pipe_valid[PIPE_LATENCY-1];

  // �۽� ���
  wire send_fire = m_tvalid && m_tready;

  // 3) ī����/���� ����
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
      o_done <= 1'b0; // �޽�

      case (st)
        IDLE: begin
          o_busy       <= 1'b0;
          words_in_cnt <= 32'd0;
          words_out_cnt<= 32'd0;

          if (start_pulse) begin
            // ��ǥ�� latch (0�̸� �ٷ� DONE ó�� ����)
            words_goal <= i_size_param;
            o_busy     <= (i_size_param != 0);
            st         <= (i_size_param == 0) ? DONE : RUN;
          end
        end

        RUN: begin
          o_busy <= 1'b1;

          // �Է� ���� �� �Է� ī��Ʈ ����
          if (s_tvalid && s_tready)
            words_in_cnt <= words_in_cnt + 1;

          // ��� �Է��� �� �޾����� ��� �ܿ� �÷��� �ܰ��
          if (words_in_cnt == words_goal)
            st <= FLUSH;
        end

        FLUSH: begin
          o_busy <= 1'b1;

          // ����� ���� ���� ��� ī��Ʈ ����
          if (send_fire)
            words_out_cnt <= words_out_cnt + 1;

          // ��ǥ�� ��ŭ ���� ���������� DONE
          if (words_out_cnt == words_goal)
            st <= DONE;
        end

        DONE: begin
          o_busy <= 1'b0;
          o_done <= 1'b1; // 1Ŭ�� �޽�
          st     <= IDLE;
        end

        default: st <= IDLE;
      endcase
    end
  end

endmodule
