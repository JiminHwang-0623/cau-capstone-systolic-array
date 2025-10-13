`timescale 1ns/1ps
module dma_read #(
  parameter int C_M_AXI_ID_WIDTH     = 1,
  parameter int C_M_AXI_ADDR_WIDTH   = 32,
  parameter int C_M_AXI_DATA_WIDTH   = 128,
  parameter int C_M_AXI_ARUSER_WIDTH = 0,
  parameter int C_M_AXI_RUSER_WIDTH  = 0
)(
  input  logic                        ACLK,
  input  logic                        ARESETN,

  // Control
  input  logic                        i_start,
  input  logic [31:0]                 i_base_addr,
  input  logic [31:0]                 i_byte_len,
  output logic                        o_busy,
  output logic                        o_done,    // 1-cycle pulse on finish
  output logic                        o_error,   // latched on error until next start

  // Stream OUT (to engine)
  output logic [C_M_AXI_DATA_WIDTH-1:0] o_data,
  output logic                          o_valid,
  input  logic                          i_ready,

  // AXI4 Read Address
  output logic [C_M_AXI_ID_WIDTH-1:0]     M_AXI_ARID,
  output logic [C_M_AXI_ADDR_WIDTH-1:0]   M_AXI_ARADDR,
  output logic [7:0]                      M_AXI_ARLEN,    // beats-1
  output logic [2:0]                      M_AXI_ARSIZE,   // log2(bytes/beat)
  output logic [1:0]                      M_AXI_ARBURST,  // INCR
  output logic                            M_AXI_ARLOCK,
  output logic [3:0]                      M_AXI_ARCACHE,
  output logic [2:0]                      M_AXI_ARPROT,
  output logic [3:0]                      M_AXI_ARQOS,
  output logic [C_M_AXI_ARUSER_WIDTH-1:0] M_AXI_ARUSER,
  output logic                            M_AXI_ARVALID,
  input  logic                            M_AXI_ARREADY,

  // AXI4 Read Data
  input  logic [C_M_AXI_ID_WIDTH-1:0]     M_AXI_RID,
  input  logic [C_M_AXI_DATA_WIDTH-1:0]   M_AXI_RDATA,
  input  logic [1:0]                      M_AXI_RRESP,
  input  logic                            M_AXI_RLAST,
  input  logic [C_M_AXI_RUSER_WIDTH-1:0]  M_AXI_RUSER,
  input  logic                            M_AXI_RVALID,
  output logic                            M_AXI_RREADY
);

  // -----------------------------
  // Constants / tie-offs
  // -----------------------------
  localparam int unsigned BEAT_BYTES = C_M_AXI_DATA_WIDTH/8;
  localparam [1:0] BURST_INCR = 2'b01;

  assign M_AXI_ARID    = '0;
  assign M_AXI_ARBURST = BURST_INCR;
  assign M_AXI_ARLOCK  = 1'b0;
  assign M_AXI_ARCACHE = 4'b0011;
  assign M_AXI_ARPROT  = 3'b000;
  assign M_AXI_ARQOS   = 4'b0000;
  assign M_AXI_ARUSER  = '0;

  function automatic [2:0] f_size (input int beat_bytes);
    case (beat_bytes)
      1:   f_size = 3'd0;
      2:   f_size = 3'd1;
      4:   f_size = 3'd2;
      8:   f_size = 3'd3;
      16:  f_size = 3'd4;
      32:  f_size = 3'd5;
      64:  f_size = 3'd6;
      128: f_size = 3'd7;
      default: f_size = 3'd0;
    endcase
  endfunction
  assign M_AXI_ARSIZE = f_size(BEAT_BYTES);

  function automatic int unsigned min3(input int unsigned a,b,c);
    int unsigned m; m = (a<b)?a:b; return (m<c)?m:c;
  endfunction

  function automatic int unsigned beats_to_4k(input logic [C_M_AXI_ADDR_WIDTH-1:0] a);
    int unsigned offset_in_4k, bytes_to_boundary;
    offset_in_4k      = a[11:0];
    bytes_to_boundary = 4096 - offset_in_4k;
    return (bytes_to_boundary / BEAT_BYTES);
  endfunction

  // -----------------------------
  // State / regs
  // -----------------------------
  typedef enum logic [1:0] {S_IDLE, S_AR, S_R} state_t;
  state_t state, state_n;

  logic [C_M_AXI_ADDR_WIDTH-1:0] cur_addr;
  int unsigned                    bytes_rem;
  int unsigned                    burst_beats;
  int unsigned                    beats_left;

  // stream skid (1-beat)
  logic [C_M_AXI_DATA_WIDTH-1:0]  tdata_r;
  logic                           tvalid_r;

  // status
  logic busy_r, done_pulse, err_latched;

  // start edge detect (rising)
  logic i_start_q;
  always_ff @(posedge ACLK) begin
    if(!ARESETN) i_start_q <= 1'b0;
    else         i_start_q <= i_start;
  end
  wire start_pulse = i_start & ~i_start_q;

  // -----------------------------
  // Stream out + RREADY
  // -----------------------------
  assign M_AXI_RREADY = (!tvalid_r) || (tvalid_r && i_ready);

  always_ff @(posedge ACLK) begin
    if(!ARESETN) begin
      tvalid_r <= 1'b0;
      tdata_r  <= '0;
    end else begin
      if (tvalid_r && i_ready) tvalid_r <= 1'b0;
      if (M_AXI_RVALID && M_AXI_RREADY) begin
        tdata_r  <= M_AXI_RDATA;
        tvalid_r <= 1'b1;
      end
    end
  end

  assign o_data  = tdata_r;
  assign o_valid = tvalid_r;

  // -----------------------------
  // Main FSM / counters
  // -----------------------------
  always_ff @(posedge ACLK) begin
    // local vars first
    int unsigned b;

    if(!ARESETN) begin
      state      <= S_IDLE;
      cur_addr   <= '0;
      bytes_rem  <= 0;
      beats_left <= 0;
      burst_beats<= 0;
      busy_r     <= 1'b0;
      done_pulse <= 1'b0;
      err_latched<= 1'b0;
    end else begin
      state      <= state_n;
      done_pulse <= 1'b0;

      // new start
      if (state==S_IDLE && start_pulse) begin
        cur_addr    <= i_base_addr[C_M_AXI_ADDR_WIDTH-1:0];
        bytes_rem   <= i_byte_len;
        busy_r      <= (i_byte_len != 0);
        err_latched <= 1'b0;
      end

      // R bookkeeping
      if (M_AXI_RVALID && M_AXI_RREADY) begin
        b = (bytes_rem >= BEAT_BYTES) ? BEAT_BYTES : bytes_rem;
        if (b <= bytes_rem) bytes_rem <= bytes_rem - b;
        if (beats_left != 0) beats_left <= beats_left - 1;
        if (M_AXI_RRESP != 2'b00) err_latched <= 1'b1;
      end

      // AR handshake
      if (M_AXI_ARVALID && M_AXI_ARREADY) begin
        beats_left <= burst_beats;
        busy_r     <= 1'b1;
      end

      // finish
      if (state==S_R && (bytes_rem==0) && (beats_left==0) && !tvalid_r) begin
        busy_r     <= 1'b0;
        done_pulse <= 1'b1;
      end
    end
  end

  // next-state + AR planner
  always_comb begin
    // declare first
    int unsigned beats_avail_by_bytes;
    int unsigned b_4k;
    int unsigned b_raw;
    int unsigned b_eff;

    // defaults
    state_n       = state;
    M_AXI_ARADDR  = cur_addr;
    M_AXI_ARLEN   = 8'd0;
    M_AXI_ARVALID = 1'b0;

    // compute burst before case
    beats_avail_by_bytes = (bytes_rem + BEAT_BYTES - 1) / BEAT_BYTES;
    b_4k  = beats_to_4k(cur_addr);
    b_raw = min3(beats_avail_by_bytes, b_4k, 256);
    b_eff = (b_raw == 0 && bytes_rem != 0) ? 1 : b_raw;

    unique case (state)
      S_IDLE: begin
        if (start_pulse && i_byte_len!=0) state_n = S_AR;
      end
      S_AR: begin
        if (bytes_rem != 0) begin
          M_AXI_ARADDR  = cur_addr;
          M_AXI_ARLEN   = (b_eff==0) ? 8'd0 : (b_eff-1);
          M_AXI_ARVALID = 1'b1;
          if (M_AXI_ARREADY) state_n = S_R;
        end else begin
          state_n = S_IDLE;
        end
      end
      S_R: begin
        if (beats_left==0 && bytes_rem!=0 && (!tvalid_r || (tvalid_r && i_ready)))
          state_n = S_AR;
      end
      default: state_n = S_IDLE;
    endcase
  end

  // track cur_addr & burst_beats when AR handshakes
  always_ff @(posedge ACLK) begin
    // local vars first
    int unsigned beats_avail_by_bytes, b_4k, b_raw, b_eff;

    if(!ARESETN) begin
      burst_beats <= 0;
      cur_addr    <= '0;
    end else begin
      beats_avail_by_bytes = (bytes_rem + BEAT_BYTES - 1) / BEAT_BYTES;
      b_4k  = beats_to_4k(cur_addr);
      b_raw = min3(beats_avail_by_bytes, b_4k, 256);
      b_eff = (b_raw == 0 && bytes_rem != 0) ? 1 : b_raw;

      if (state==S_AR && M_AXI_ARVALID && M_AXI_ARREADY) begin
        burst_beats <= b_eff;
        cur_addr    <= cur_addr + (b_eff * BEAT_BYTES);
      end
    end
  end

  assign o_busy  = busy_r;
  assign o_done  = done_pulse;
  assign o_error = err_latched;

  // synthesis translate_off
  initial begin
    if ((BEAT_BYTES & (BEAT_BYTES-1)) != 0)
      $error("dma_read: DATA_WIDTH/8 must be a power of two.");
  end
  // synthesis translate_on
endmodule
