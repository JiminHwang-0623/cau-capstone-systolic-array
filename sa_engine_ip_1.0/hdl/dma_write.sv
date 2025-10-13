`timescale 1ns/1ps
module dma_write #(
  parameter int C_M_AXI_ID_WIDTH     = 1,
  parameter int C_M_AXI_ADDR_WIDTH   = 32,
  parameter int C_M_AXI_DATA_WIDTH   = 128,
  parameter int C_M_AXI_AWUSER_WIDTH = 0,
  parameter int C_M_AXI_WUSER_WIDTH  = 0,
  parameter int C_M_AXI_BUSER_WIDTH  = 0
)(
  input  logic                        ACLK,
  input  logic                        ARESETN,

  // Control
  input  logic                        i_start,
  input  logic [31:0]                 i_base_addr,
  input  logic [31:0]                 i_byte_len,
  output logic                        o_busy,
  output logic                        o_done,    // 1-cycle pulse
  output logic                        o_error,   // latched on error

  // Stream IN (from engine)
  input  logic [C_M_AXI_DATA_WIDTH-1:0] i_data,
  input  logic                          i_valid,
  output logic                          o_ready,

  // AXI4 Write Address
  output logic [C_M_AXI_ID_WIDTH-1:0]     M_AXI_AWID,
  output logic [C_M_AXI_ADDR_WIDTH-1:0]   M_AXI_AWADDR,
  output logic [7:0]                      M_AXI_AWLEN,    // beats-1
  output logic [2:0]                      M_AXI_AWSIZE,   // log2(bytes/beat)
  output logic [1:0]                      M_AXI_AWBURST,  // INCR
  output logic                            M_AXI_AWLOCK,
  output logic [3:0]                      M_AXI_AWCACHE,
  output logic [2:0]                      M_AXI_AWPROT,
  output logic [3:0]                      M_AXI_AWQOS,
  output logic [C_M_AXI_AWUSER_WIDTH-1:0] M_AXI_AWUSER,
  output logic                            M_AXI_AWVALID,
  input  logic                            M_AXI_AWREADY,

  // AXI4 Write Data
  output logic [C_M_AXI_DATA_WIDTH-1:0]     M_AXI_WDATA,
  output logic [(C_M_AXI_DATA_WIDTH/8)-1:0] M_AXI_WSTRB,
  output logic                            M_AXI_WLAST,
  output logic [C_M_AXI_WUSER_WIDTH-1:0]  M_AXI_WUSER,
  output logic                            M_AXI_WVALID,
  input  logic                            M_AXI_WREADY,

  // AXI4 Write Response
  input  logic [C_M_AXI_ID_WIDTH-1:0]     M_AXI_BID,
  input  logic [1:0]                      M_AXI_BRESP,
  input  logic [C_M_AXI_BUSER_WIDTH-1:0]  M_AXI_BUSER,
  input  logic                            M_AXI_BVALID,
  output logic                            M_AXI_BREADY
);

  // -----------------------------
  // Constants / tie-offs
  // -----------------------------
  localparam int unsigned BEAT_BYTES = C_M_AXI_DATA_WIDTH/8;
  localparam [1:0] BURST_INCR = 2'b01;

  assign M_AXI_AWID    = '0;
  assign M_AXI_AWBURST = BURST_INCR;
  assign M_AXI_AWLOCK  = 1'b0;
  assign M_AXI_AWCACHE = 4'b0011;
  assign M_AXI_AWPROT  = 3'b000;
  assign M_AXI_AWQOS   = 4'b0000;
  assign M_AXI_AWUSER  = '0;
  assign M_AXI_WUSER   = '0;
  assign M_AXI_BREADY  = 1'b1;

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
  assign M_AXI_AWSIZE = f_size(BEAT_BYTES);

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
  typedef enum logic [1:0] {S_IDLE, S_AW, S_W, S_B} state_t;
  state_t state, state_n;

  logic [C_M_AXI_ADDR_WIDTH-1:0] cur_addr;
  int unsigned                    bytes_rem;
  int unsigned                    burst_beats;
  int unsigned                    beats_left;

  // 1-beat skid from AXIS to W
  logic [C_M_AXI_DATA_WIDTH-1:0]     wdata_r;
  logic [(C_M_AXI_DATA_WIDTH/8)-1:0] wstrb_r;
  logic                              wlast_r, wvalid_r;

  // status
  logic busy_r, done_pulse, err_latched;

  // start edge detect
  logic i_start_q;
  always_ff @(posedge ACLK) begin
    if(!ARESETN) i_start_q <= 1'b0;
    else         i_start_q <= i_start;
  end
  wire start_pulse = i_start & ~i_start_q;

  // accept from engine?
  logic can_push;
  assign can_push = (!wvalid_r) || (wvalid_r && M_AXI_WREADY);
  assign o_ready  = (state==S_W) && (beats_left>0) && can_push;

  // Buffering
  always_ff @(posedge ACLK) begin
    // local vars first
    int unsigned bt;
    int i;

    if(!ARESETN) begin
      wvalid_r <= 1'b0;
      wdata_r  <= '0;
      wstrb_r  <= '0;
      wlast_r  <= 1'b0;
    end else begin
      if (wvalid_r && M_AXI_WREADY) wvalid_r <= 1'b0;

      if (i_valid && o_ready) begin
        wdata_r  <= i_data;
        // bytes this beat
        bt = (bytes_rem >= BEAT_BYTES) ? BEAT_BYTES : bytes_rem;
        // mask
        wstrb_r = '0;
        for (i=0;i<BEAT_BYTES;i++) if (i<bt) wstrb_r[i] = 1'b1;
        wlast_r  <= (beats_left == 1);
        wvalid_r <= 1'b1;
      end
    end
  end

  assign M_AXI_WDATA  = wdata_r;
  assign M_AXI_WSTRB  = wstrb_r;
  assign M_AXI_WLAST  = wlast_r;
  assign M_AXI_WVALID = wvalid_r;

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
      burst_beats<= 0;
      beats_left <= 0;
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

      // consume when we actually push into W buffer
      if (i_valid && o_ready) begin
        b = (bytes_rem >= BEAT_BYTES) ? BEAT_BYTES : bytes_rem;
        if (b <= bytes_rem) bytes_rem <= bytes_rem - b;
        if (beats_left != 0) beats_left <= beats_left - 1;
      end

      // AW handshake -> set beats_left
      if (M_AXI_AWVALID && M_AXI_AWREADY) begin
        beats_left <= burst_beats;
        busy_r     <= 1'b1;
      end

      // BRESP error
      if (M_AXI_BVALID && (M_AXI_BRESP != 2'b00)) err_latched <= 1'b1;

      // finish
      if (state==S_B && (bytes_rem==0) && M_AXI_BVALID) begin
        done_pulse <= 1'b1;
        busy_r     <= 1'b0;
      end
    end
  end

  // next-state + AW planner
  always_comb begin
    // declare first
    int unsigned beats_avail_by_bytes;
    int unsigned b_4k;
    int unsigned b_raw;
    int unsigned b_eff;

    // defaults
    state_n       = state;
    M_AXI_AWADDR  = cur_addr;
    M_AXI_AWLEN   = 8'd0;
    M_AXI_AWVALID = 1'b0;

    // compute burst
    beats_avail_by_bytes = (bytes_rem + BEAT_BYTES - 1) / BEAT_BYTES;
    b_4k  = beats_to_4k(cur_addr);
    b_raw = min3(beats_avail_by_bytes, b_4k, 256);
    b_eff = (b_raw == 0 && bytes_rem != 0) ? 1 : b_raw;

    unique case (state)
      S_IDLE: begin
        if (start_pulse && i_byte_len!=0) state_n = S_AW;
      end
      S_AW: begin
        if (bytes_rem != 0) begin
          M_AXI_AWADDR  = cur_addr;
          M_AXI_AWLEN   = (b_eff==0) ? 8'd0 : (b_eff-1);
          M_AXI_AWVALID = 1'b1;
          if (M_AXI_AWREADY) state_n = S_W;
        end else begin
          state_n = S_IDLE;
        end
      end
      S_W: begin
        if (beats_left==0) state_n = S_B;
      end
      S_B: begin
        if (M_AXI_BVALID) begin
          if (bytes_rem != 0) state_n = S_AW;
          else                state_n = S_IDLE;
        end
      end
      default: state_n = S_IDLE;
    endcase
  end

  // track cur_addr & burst_beats on AW handshake
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

      if (state==S_AW && M_AXI_AWVALID && M_AXI_AWREADY) begin
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
      $error("dma_write: DATA_WIDTH/8 must be a power of two.");
  end
  // synthesis translate_on
endmodule
