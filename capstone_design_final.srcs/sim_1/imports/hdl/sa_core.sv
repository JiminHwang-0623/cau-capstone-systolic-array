//----------------------------------------------------------------+
// Project: Capstone Design for graduation
// Module: sa_core (SystemVerilog version)
// Description:
//		8x8 Systolic Array core with internal FSM and DPRAM
//		Load parameters and input feature map from DDR4 via AXI4
//
// Last Updated: 2025-10-21 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns / 1ps

module sa_core (
    input logic clk,
    input logic rstn,

    input logic start,

    input logic read_data_vld,  // from dma_read, it says that the read is valid (RVALID&RREADY)
    input logic [31:0] DATA_IN,

    // DMA handshake signals
    input logic rd_done,  // from dma_read, it says that the read is done
    input  logic        wr_pull, // from dma_write, it says that the write is ready to pull the next word from the internal buffer
    input logic wr_done,  // from dma_write, it says that the write is done

    output logic [ 1:0] start_rd_wr,
    output logic [10:0] dma_cnt,
    output logic [31:0] DATA_OUT,

    output logic done
);

  ////////////////////////////////////////////////////////
  /////////////////// local parameters ///////////////////
  ////////////////////////////////////////////////////////

  // For systolic array
  localparam WRITE_DELAY = 64;
  localparam MATRIX_SIZE = 16;


  // State encoding
  typedef enum logic [3:0] {
    S_IDLE          = 4'b0000,  //  EN = 0, WRITE = 0, LOAD = 0
    S_DATA_LOAD     = 4'b0001,  //  EN = 0, WRITE = 0, LOAD = 0
    S_WRITE_A       = 4'b0010,  //  EN = 1, WRITE = 1, LOAD = 0
    S_WRITE_B       = 4'b0011,  //  EN = 1, WRITE = 1, LOAD = 0
    S_LOAD          = 4'b0100,  //  EN = 1, WRITE = 0, LOAD = 1
    S_INTERRUPT_BUF = 4'b0101,  //  BUFFER STATE FOR INTERRUPT
    S_MATMUL        = 4'b0110,  //  EN = 1, WRITE = 0, LOAD = 0
    S_STORE         = 4'b0111,  //  EN = 1, WRITE = 1, LOAD = 1
    S_OUT           = 4'b1000   //  EN = 0, WRITE = 0, LOAD = 0
  } state_t;


  // constants for scaling
  localparam integer MAX_A = 4;
  localparam integer MAX_B = 4;
  localparam integer MAX_OUT = 59;
  localparam integer C = 20;  // right-shift bits
  localparam integer D = 127 * MAX_OUT;  // denominator
  localparam integer N = MAX_A * MAX_B * (1 << C);  // numerator (2^C == 1<<C)
  localparam integer B = (N + (D >> 1)) / D;  // round(N/D)


  ////////////////////////////////////////////////////////
  ///////////////// reg, wire instances //////////////////
  ////////////////////////////////////////////////////////

  // FSM
  state_t c_state, n_state;
  logic [ 2:0] IDX;  // 0~7 : col index
  logic [ 3:0] REG_SELECT;  // 0~7 : Matrix A, 8~15 : Matrix B
  logic [ 7:0] sa_input_data;

  logic [ 6:0] iter_cnt_A;
  logic [ 6:0] iter_cnt_B;
  logic [ 6:0] iter_cnt_S;
  logic [ 6:0] iter_cnt_A_d;
  logic [ 6:0] iter_cnt_B_d;
  logic [ 6:0] iter_cnt_S_d;

  logic        en;
  logic        write_en;
  logic        load_en;
  logic [10:0] matrix_base_addr;

  logic        WRITE_STATE;
  assign WRITE_STATE = (c_state == S_WRITE_A) || (c_state == S_WRITE_B);

  logic [6:0] iter_cnt;
  assign iter_cnt = (c_state == S_WRITE_A) ? iter_cnt_A :
                  (c_state == S_WRITE_B) ? iter_cnt_B :
                  (c_state == S_STORE)   ? iter_cnt_S : 7'd0;

  logic B_load_done;
  logic A_load_done;
  logic matmul_done;
  // DPRAM INPUT
  logic dpram_in_enb;
  logic [10:0] dpram_in_addra, dpram_in_addrb;
  logic [31:0] dpram_in_dob;

  assign dpram_in_addra = (c_state == S_DATA_LOAD) ? dma_cnt : 11'd0;
  assign dpram_in_enb   = WRITE_STATE;
  assign dpram_in_addrb = WRITE_STATE ? (matrix_base_addr + {5'd0, iter_cnt[5:2]}) : 11'd0;


  // DPRAM OUTPUT
  logic [10:0] dpram_out_addra;
  logic [10:0] dpram_out_addrb;
  logic [31:0] output_data_buffer;
  logic [31:0] dpram_out_dob;

  logic dpram_out_ena, dpram_out_enb;

  assign dpram_out_ena   = (c_state == S_STORE);

  assign dpram_out_enb   = (c_state == S_OUT);
  assign dpram_out_addrb = (c_state == S_OUT) ? dma_cnt : 11'd0;

  logic INTERRUPT_PIN;

  logic register_load_done;

  // check data delay for output
  logic en_output;
  assign en_output = (c_state == S_STORE);

  // for scaling
  logic signed [63:0] prod;
  logic signed [63:0] bias_pos;
  logic signed [63:0] bias_neg;
  logic signed [63:0] biased;
  logic signed [63:0] scaled64;
  logic signed [18:0] sa_out;  // 19-bit accumulator output
  // logic signed [7:0]  data_out;
  logic OUTPUT_EN;

  logic signed [31:0] buff_out;

  assign prod     = $signed(sa_out) * $signed(B);
  assign bias_pos = (C == 0) ? 64'sd0 : (64'sd1 << (C - 1));
  assign bias_neg = (C == 0) ? 64'sd0 : ((64'sd1 << (C - 1)) - 64'sd1);
  assign biased   = (prod >= 0) ? (prod + bias_pos) : (prod + bias_neg);
  assign scaled64 = (C == 0) ? biased : (biased >>> C);


  ////////////////////////////////////////////////////////
  /////////////////// Dpram instance /////////////////////
  ////////////////////////////////////////////////////////

  dpram_wrapper #(
      .DW   (32),
      .AW   (11),   // Address bitwidth
      .DEPTH(1280)
  ) dpram_in (
      .clk  (clk),
      .ena  (1'b1),
      .addra(dpram_in_addra),  // cnt signal
      .wea  (read_data_vld),
      .dia  (DATA_IN),
      .enb  (dpram_in_enb),
      .addrb(dpram_in_addrb),  // cnt signal
      .dob  (dpram_in_dob)
  );

  dpram_wrapper #(
      .DW   (32),
      .AW   (11),   // Address bitwidth
      .DEPTH(1280)
  ) dpram_out (
      .clk  (clk),
      .ena  (1'b1),
      .addra(dpram_out_addra),  // cnt signal
      .wea  (dpram_out_ena),
      .dia  ({13'b0, sa_out}),
      .enb  (dpram_out_enb),
      .addrb(dpram_out_addrb),  // cnt signal
      .dob  (buff_out)
  );

  always_ff @(posedge clk) begin
    DATA_OUT <= buff_out;
  end

  ////////////////////////////////////////////////////////
  ////////////////// Signal Processing ///////////////////
  ////////////////////////////////////////////////////////

  // FSM : state transition
  always_comb begin
    n_state = c_state;
    case (c_state)
      S_IDLE: begin
        if (start) begin
          n_state = S_DATA_LOAD;
        end
      end
      S_DATA_LOAD: begin
        if (rd_done) n_state = S_WRITE_A;
      end
      S_WRITE_A: begin
        if (A_load_done) n_state = S_WRITE_B;
      end
      S_WRITE_B: begin
        if (B_load_done) n_state = S_LOAD;
      end
      S_LOAD: begin
        if (register_load_done) n_state = S_MATMUL;
      end
      // S_INTERRUPT_BUF: begin
      //   n_state = S_MATMUL;
      // end
      S_MATMUL: begin
        if (matmul_done) n_state = S_STORE;
      end
      S_STORE: begin
        if (iter_cnt_S == WRITE_DELAY) begin
          n_state = S_OUT;
        end
      end
      S_OUT: begin
        if (wr_done) n_state = S_IDLE;
      end
      default: n_state = S_IDLE;
    endcase
  end

  // FSM : logic behavior
  always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      c_state            <= S_IDLE;
      start_rd_wr        <= 2'b00;
      dma_cnt            <= 11'd0;
      iter_cnt_A         <= 7'd0;
      iter_cnt_B         <= 7'd0;
      iter_cnt_S         <= 7'd0;
      iter_cnt_A_d       <= 7'd0;
      iter_cnt_B_d       <= 7'd0;

      IDX                <= 3'd0;
      REG_SELECT         <= 4'd0;

      sa_input_data      <= 8'd0;

      output_data_buffer <= 32'd0;

      en                 <= 1'b0;
      write_en           <= 1'b0;
      load_en            <= 1'b0;
      done               <= 1'b0;
      matrix_base_addr   <= 11'd0;

    end else begin

      c_state <= n_state;

      case (c_state)
        S_IDLE: begin
          start_rd_wr        <= 2'b00;
          dma_cnt            <= 11'd0;
          iter_cnt_A         <= 7'd0;
          iter_cnt_B         <= 7'd0;
          iter_cnt_S         <= 7'd0;
          iter_cnt_A_d       <= 7'd0;
          iter_cnt_B_d       <= 7'd0;

          IDX                <= 3'd0;
          REG_SELECT         <= 4'd0;

          sa_input_data      <= 8'd0;

          output_data_buffer <= 32'd0;

          en                 <= 1'b0;
          write_en           <= 1'b0;
          load_en            <= 1'b0;
          done               <= 1'b0;
          matrix_base_addr   <= 11'd0;

          if (start) begin
            start_rd_wr <= 2'b10;
          end
        end
        S_DATA_LOAD: begin
          start_rd_wr <= 2'b00;

          if (read_data_vld) begin
            dma_cnt <= dma_cnt + 1;
          end

          if (rd_done) begin
            dma_cnt  <= 11'd0;
            en       <= 1'b1;
            write_en <= 1'b1;
            load_en  <= 1'b0;
          end
        end
        S_WRITE_A: begin
          start_rd_wr   <= 2'b00;
          iter_cnt_A    <= iter_cnt_A + 1;
          iter_cnt_A_d  <= iter_cnt_A;

          IDX           <= iter_cnt_A_d[2:0];  // col
          REG_SELECT    <= {1'b0, iter_cnt_A_d[5:3]};  // row
          sa_input_data <= dpram_in_dob[iter_cnt_A_d[1:0]*8+:8];

          if (A_load_done) begin
            iter_cnt_A       <= 7'd0;
            en               <= 1'b1;
            write_en         <= 1'b1;
            load_en          <= 1'b0;
            matrix_base_addr <= MATRIX_SIZE;
          end
        end
        S_WRITE_B: begin
          start_rd_wr   <= 2'b00;
          iter_cnt_B    <= iter_cnt_B + 1;
          iter_cnt_B_d  <= iter_cnt_B;

          IDX           <= iter_cnt_B_d[5:3];  // Transpose -> row
          REG_SELECT    <= {1'b1, iter_cnt_B_d[2:0]};  // Transpose -> col
          sa_input_data <= dpram_in_dob[iter_cnt_B_d[1:0]*8+:8];
        end
        S_LOAD: begin
          start_rd_wr      <= 2'b00;

          iter_cnt_B       <= 7'd0;
          en               <= 1'b1;
          write_en         <= 1'b0;
          load_en          <= 1'b1;
          matrix_base_addr <= 11'd0;

          if (register_load_done) begin
            en       <= 1'b1;
            write_en <= 1'b0;
            load_en  <= 1'b0;
          end
        end
        // S_INTERRUPT_BUF: begin

        // end
        S_MATMUL: begin
          start_rd_wr <= 2'b00;

          if (matmul_done) begin
            en       <= 1'b1;
            write_en <= 1'b1;
            load_en  <= 1'b1;
          end
        end
        S_STORE: begin
          start_rd_wr <= 2'b00;

          if (OUTPUT_EN) begin
            iter_cnt_S    <= iter_cnt_S + 1;
            dpram_out_addra <= iter_cnt_S;
          end

          IDX        <= iter_cnt_S[2:0];  // col
          REG_SELECT <= {1'b0, iter_cnt_S[5:3]};  // row

          if (iter_cnt_S == WRITE_DELAY) begin
            iter_cnt_S  <= 7'd0;
            en          <= 1'b0;
            write_en    <= 1'b0;
            load_en     <= 1'b0;
            start_rd_wr <= 2'b11;
          end
        end
        S_OUT: begin
          start_rd_wr <= 2'b00;
          if (wr_pull) begin
            dma_cnt <= dma_cnt + 1;
          end

          if (wr_done) begin
            dma_cnt <= 11'd0;
            done    <= 1'b1;
          end
        end

        default: c_state <= S_IDLE;
      endcase
    end
  end

  // INT8 saturation
  // function automatic logic signed [7:0] sat_int8(input logic signed [63:0] x);
  //     if      (x >  127) return 8'sd127;
  //     else if (x < -128) return -8'sd128;
  //     else               return x[7:0];
  // endfunction

  // always_comb begin
  //     if (en_output)
  //         data_out = sat_int8(scaled64);
  //     else
  //         data_out = 8'sd0;
  // end

  ////////////////////////////////////////////////////////
  //////////////////// Core Instance /////////////////////
  ////////////////////////////////////////////////////////

  // FSM systolic_core (
  //     .rst       (rstn),
  //     .clk       (clk),
  //     .en        (en),
  //     .write     (write_en),
  //     .load      (load_en),
  //     .data_in   (sa_input_data),
  //     .idx       (IDX),            // col
  //     .reg_select(REG_SELECT),     // row
  //     .OUTPUT_EN (OUTPUT_EN),
  //     .data_out  (sa_out),

  //     .int_to_ps(INTERRUPT_PIN),
  //     .B_load_done_o(B_load_done),
  //     .pipe_load_done_o(controller_pipe_load_done),
  //     .A_load_done_o(A_load_done)
  //     // .read_led   (), 
  //     // .write_led  (), 
  //     // .load_led   (), 
  //     // .matmul_led ()
  // );

  sa_controller u_sa_controller (
      .RST(rstn),
      .CLK(clk),
      .EN(en),
      .WRITE(write_en),
      .IDX(IDX),
      .REG_SELECT(REG_SELECT),
      .LOAD(load_en),
      .DATA_IN(sa_input_data),
      .DATA_OUTPUT_EN(OUTPUT_EN),
      .DATA_OUT(sa_out),
      .B_load_done_o(B_load_done),
      .register_load_done_o(register_load_done),
      .A_load_done_o(A_load_done),
      .matmul_done_o(matmul_done)
  );

endmodule

