// ============================================================================
// sa_core_pipeline.sv (FINAL, SystemVerilog)
//   - AXI-Full Master + AXI-Lite Control + Stream DMA + Systolic Engine
//   - FSM: IDLE -> PRIME -> STEADY -> DRAIN
//   - Engine uses AXI-Stream-like interface (ready/valid)
// ============================================================================

`timescale 1ns/1ps

// ----------------------------------------------------------------------------
//  sa_core_pipeline
// ----------------------------------------------------------------------------
module sa_core_pipeline #(
  parameter int C_M_AXI_ID_WIDTH     = 1,
  parameter int C_M_AXI_ADDR_WIDTH   = 32,
  parameter int C_M_AXI_DATA_WIDTH   = 32,
  parameter int C_M_AXI_AWUSER_WIDTH = 0,
  parameter int C_M_AXI_ARUSER_WIDTH = 0,
  parameter int C_M_AXI_WUSER_WIDTH  = 0,
  parameter int C_M_AXI_RUSER_WIDTH  = 0,
  parameter int C_M_AXI_BUSER_WIDTH  = 0,
  
  parameter int unsigned P_TILES_TOTAL = 1
)(
  input  logic                       S_AXI_ACLK,
  input  logic                       S_AXI_ARESETN,
  input  logic                       M_AXI_ACLK,
  input  logic                       M_AXI_ARESETN,

  // Control from AXI-Lite
  input  logic                       i_start,
  input  logic [31:0]                i_src_addr,
  input  logic [31:0]                i_wgt_addr,
  input  logic [31:0]                i_dst_addr,
  input  logic [31:0]                i_size_param,

  // Status
  output logic                       o_busy,
  output logic                       o_done,
  output logic                       o_error,

  // AXI4-Full Master
  output wire [C_M_AXI_ID_WIDTH-1:0]     M_AXI_AWID,
  output wire [C_M_AXI_ADDR_WIDTH-1:0]   M_AXI_AWADDR,
  output wire [7:0]                      M_AXI_AWLEN,
  output wire [2:0]                      M_AXI_AWSIZE,
  output wire [1:0]                      M_AXI_AWBURST,
  output wire                            M_AXI_AWLOCK,
  output wire [3:0]                      M_AXI_AWCACHE,
  output wire [2:0]                      M_AXI_AWPROT,
  output wire [3:0]                      M_AXI_AWQOS,
  output wire [C_M_AXI_AWUSER_WIDTH-1:0] M_AXI_AWUSER,
  output wire                            M_AXI_AWVALID,
  input  wire                            M_AXI_AWREADY,

  output wire [C_M_AXI_DATA_WIDTH-1:0]   M_AXI_WDATA,
  output wire [C_M_AXI_DATA_WIDTH/8-1:0] M_AXI_WSTRB,
  output wire                            M_AXI_WLAST,
  output wire [C_M_AXI_WUSER_WIDTH-1:0]  M_AXI_WUSER,
  output wire                            M_AXI_WVALID,
  input  wire                            M_AXI_WREADY,

  input  wire [C_M_AXI_ID_WIDTH-1:0]     M_AXI_BID,
  input  wire [1:0]                      M_AXI_BRESP,
  input  wire [C_M_AXI_BUSER_WIDTH-1:0]  M_AXI_BUSER,
  input  wire                            M_AXI_BVALID,
  output wire                            M_AXI_BREADY,

  output wire [C_M_AXI_ID_WIDTH-1:0]     M_AXI_ARID,
  output wire [C_M_AXI_ADDR_WIDTH-1:0]   M_AXI_ARADDR,
  output wire [7:0]                      M_AXI_ARLEN,
  output wire [2:0]                      M_AXI_ARSIZE,
  output wire [1:0]                      M_AXI_ARBURST,
  output wire                            M_AXI_ARLOCK,
  output wire [3:0]                      M_AXI_ARCACHE,
  output wire [2:0]                      M_AXI_ARPROT,
  output wire [3:0]                      M_AXI_ARQOS,
  output wire [C_M_AXI_ARUSER_WIDTH-1:0] M_AXI_ARUSER,
  output wire                            M_AXI_ARVALID,
  input  wire                            M_AXI_ARREADY,

  input  wire [C_M_AXI_ID_WIDTH-1:0]     M_AXI_RID,
  input  wire [C_M_AXI_DATA_WIDTH-1:0]   M_AXI_RDATA,
  input  wire [1:0]                      M_AXI_RRESP,
  input  wire                            M_AXI_RLAST,
  input  wire [C_M_AXI_RUSER_WIDTH-1:0]  M_AXI_RUSER,
  input  wire                            M_AXI_RVALID,
  output wire                            M_AXI_RREADY
);

  // ========================================================================
  // Stream Signals: READ -> ENGINE -> WRITE
  // ========================================================================
  logic [C_M_AXI_DATA_WIDTH-1:0] rd_data;
  logic                          rd_valid;
  logic                          rd_ready;

  logic [C_M_AXI_DATA_WIDTH-1:0] eng_data_out;
  logic                          eng_valid_out;
  logic                          eng_ready_out;

  logic rd_busy, rd_done, rd_err;
  logic wr_busy, wr_done, wr_err;

  logic eng_busy, eng_done, eng_error;

  logic rd_start_pulse, wr_start_pulse, eng_start_pulse;

  logic in_fire, out_fire;

  assign in_fire = rd_valid & rd_ready;
  assign out_fire = eng_valid_out & eng_ready_out;

  logic seen_in_first, seen_out_first;

  // ========================================================================
  // FSM
  // ========================================================================
  typedef enum logic [1:0] {S_IDLE, S_PRIME, S_STEADY, S_DRAIN} core_state_t;
  core_state_t cs;

  logic start_d, start_pulse;
  always_ff @(posedge S_AXI_ACLK) begin
    if(!S_AXI_ARESETN) begin
      start_d <= 1'b0;
      start_pulse <= 1'b0;
    end else begin
      start_pulse <= i_start & ~start_d;
      start_d     <= i_start;
    end
  end

  // ========================================================================
  // DOUBLE BUFFER / TILING
  // ========================================================================
  logic buf_sel;
  logic [15:0] tile_idx;
  logic [15:0] tiles_total;
  logic [31:0] tile_len_words;

  logic [31:0] in_words_cnt, out_words_cnt;
  logic in_tile_done, out_tile_done;
  logic tile_start_pulse;
  logic last_tile_issued;

  assign tiles_total = P_TILES_TOTAL;
  assign tile_len_words = i_size_param;
  assign last_tile_issued = (tile_idx == tiles_total-1);

  always_ff @(posedge S_AXI_ACLK) begin
    if (!S_AXI_ARESETN) in_words_cnt <= '0;
    else if (cs==S_IDLE || tile_start_pulse) in_words_cnt <= '0;
    else if (in_fire) in_words_cnt <= in_words_cnt + 1'b1;
  end
  
  assign in_tile_done = (in_words_cnt == tile_len_words);

  always_ff @(posedge S_AXI_ACLK) begin
    if (!S_AXI_ARESETN) out_words_cnt <= '0;
    else if (cs==S_IDLE || tile_start_pulse) out_words_cnt <= '0;
    else if (out_fire) out_words_cnt <= out_words_cnt + 1'b1;
  end

  assign out_tile_done = (out_words_cnt == tile_len_words);
  
  assign tile_start_pulse = (cs==S_STEADY) && in_tile_done && out_tile_done;

  // ========================================================================
  // DMA READ
  // ========================================================================
  dma_read #(
    .C_M_AXI_ID_WIDTH    (C_M_AXI_ID_WIDTH),
    .C_M_AXI_ADDR_WIDTH  (C_M_AXI_ADDR_WIDTH),
    .C_M_AXI_DATA_WIDTH  (C_M_AXI_DATA_WIDTH)
  ) u_dma_read (
    .ACLK        (M_AXI_ACLK),
    .ARESETN     (M_AXI_ARESETN),
    .i_start     (rd_start_pulse),
    .i_base_addr (i_src_addr),
    .i_byte_len  (i_size_param),
    .o_busy      (rd_busy),
    .o_done      (rd_done),
    .o_error     (rd_err),
    .o_data      (rd_data),
    .o_valid     (rd_valid),
    .i_ready     (rd_ready),
    .M_AXI_ARID    (M_AXI_ARID),
    .M_AXI_ARADDR  (M_AXI_ARADDR),
    .M_AXI_ARLEN   (M_AXI_ARLEN),
    .M_AXI_ARSIZE  (M_AXI_ARSIZE),
    .M_AXI_ARBURST (M_AXI_ARBURST),
    .M_AXI_ARLOCK  (M_AXI_ARLOCK),
    .M_AXI_ARCACHE (M_AXI_ARCACHE),
    .M_AXI_ARPROT  (M_AXI_ARPROT),
    .M_AXI_ARQOS   (M_AXI_ARQOS),
    .M_AXI_ARUSER  (M_AXI_ARUSER),
    .M_AXI_ARVALID (M_AXI_ARVALID),
    .M_AXI_ARREADY (M_AXI_ARREADY),
    .M_AXI_RID     (M_AXI_RID),
    .M_AXI_RDATA   (M_AXI_RDATA),
    .M_AXI_RRESP   (M_AXI_RRESP),
    .M_AXI_RLAST   (M_AXI_RLAST),
    .M_AXI_RUSER   (M_AXI_RUSER),
    .M_AXI_RVALID  (M_AXI_RVALID),
    .M_AXI_RREADY  (M_AXI_RREADY)
  );

  // ========================================================================
  // ENGINE (streaming)
  // ========================================================================
  systolic_array_engine #(
    .DATA_WIDTH  (C_M_AXI_DATA_WIDTH),
    .PIPE_LATENCY(8)
  ) u_engine (
    .clk         (S_AXI_ACLK),
    .rst_n       (S_AXI_ARESETN),
    .i_start     (eng_start_pulse),
    .i_size_param(i_size_param),
    .i_src_addr  (i_src_addr),
    .i_wgt_addr  (i_wgt_addr),
    .i_dst_addr  (i_dst_addr),
    .o_busy      (eng_busy),
    .o_done      (eng_done),
    .o_error     (eng_error),
    .s_tdata     (rd_data),
    .s_tvalid    (rd_valid),
    .s_tready    (rd_ready),
    .m_tdata     (eng_data_out),
    .m_tvalid    (eng_valid_out),
    .m_tready    (eng_ready_out)
  );

  // ========================================================================
  // DMA WRITE
  // ========================================================================
  dma_write #(
    .C_M_AXI_ID_WIDTH    (C_M_AXI_ID_WIDTH),
    .C_M_AXI_ADDR_WIDTH  (C_M_AXI_ADDR_WIDTH),
    .C_M_AXI_DATA_WIDTH  (C_M_AXI_DATA_WIDTH)
  ) u_dma_write (
    .ACLK        (M_AXI_ACLK),
    .ARESETN     (M_AXI_ARESETN),
    .i_start     (wr_start_pulse),
    .i_base_addr (i_dst_addr),
    .i_byte_len  (i_size_param),
    .o_busy      (wr_busy),
    .o_done      (wr_done),
    .o_error     (wr_err),
    .i_data      (eng_data_out),
    .i_valid     (eng_valid_out),
    .o_ready     (eng_ready_out),
    .M_AXI_AWID    (M_AXI_AWID),
    .M_AXI_AWADDR  (M_AXI_AWADDR),
    .M_AXI_AWLEN   (M_AXI_AWLEN),
    .M_AXI_AWSIZE  (M_AXI_AWSIZE),
    .M_AXI_AWBURST (M_AXI_AWBURST),
    .M_AXI_AWLOCK  (M_AXI_AWLOCK),
    .M_AXI_AWCACHE (M_AXI_AWCACHE),
    .M_AXI_AWPROT  (M_AXI_AWPROT),
    .M_AXI_AWQOS   (M_AXI_AWQOS),
    .M_AXI_AWUSER  (M_AXI_AWUSER),
    .M_AXI_AWVALID (M_AXI_AWVALID),
    .M_AXI_AWREADY (M_AXI_AWREADY),
    .M_AXI_WDATA   (M_AXI_WDATA),
    .M_AXI_WSTRB   (M_AXI_WSTRB),
    .M_AXI_WLAST   (M_AXI_WLAST),
    .M_AXI_WUSER   (M_AXI_WUSER),
    .M_AXI_WVALID  (M_AXI_WVALID),
    .M_AXI_WREADY  (M_AXI_WREADY),
    .M_AXI_BID     (M_AXI_BID),
    .M_AXI_BRESP   (M_AXI_BRESP),
    .M_AXI_BUSER   (M_AXI_BUSER),
    .M_AXI_BVALID  (M_AXI_BVALID),
    .M_AXI_BREADY  (M_AXI_BREADY)
  );

  // ========================================================================
  // FSM (PRIME → STEADY → DRAIN)
  // ========================================================================
  always_ff @(posedge S_AXI_ACLK) begin
    if(!S_AXI_ARESETN) begin
      cs <= S_IDLE;
      o_busy <= 1'b0; o_done <= 1'b0; o_error <= 1'b0;
      rd_start_pulse <= 1'b0; wr_start_pulse <= 1'b0; eng_start_pulse <= 1'b0;
      seen_in_first <= 1'b0; seen_out_first <= 1'b0;
      buf_sel  <= 1'b0;
      tile_idx <= '0;
    end else begin
      rd_start_pulse <= 1'b0;
      wr_start_pulse <= 1'b0;
      eng_start_pulse<= 1'b0;
      o_done         <= 1'b0;
      o_error        <= rd_err | wr_err | eng_error;
      if (cs==S_IDLE && start_pulse) begin
        buf_sel  <= 1'b0;
        tile_idx <= '0;
      end
      if (tile_start_pulse && cs==S_STEADY) begin
        buf_sel  <= ~buf_sel;
        tile_idx <= tile_idx + 1'b1;
      end

      unique case (cs)
        
        S_IDLE: begin
          o_busy <= 1'b0;
          seen_in_first <= 1'b0;
          seen_out_first <= 1'b0;
          if (start_pulse) begin
            o_busy <= 1'b1;
            rd_start_pulse  <= 1'b1;
            eng_start_pulse <= 1'b1;
            cs <= S_PRIME;
          end
        end
        
        S_PRIME: begin
          if (in_fire) seen_in_first <= 1'b1;
          // 현재: valid만으로 WRITE 시작 (스텁/동일 클럭 가정)
          // 이후(P1): CDC 도입 후 out_fire(= eng_valid_out & eng_ready_out)로 변경 예정
          if(!seen_out_first && eng_valid_out) begin
            seen_out_first <= 1'b1;
            wr_start_pulse <= 1'b1;
          end
          if (seen_in_first) cs <= S_STEADY;
        end

        S_STEADY: begin
          if (tile_start_pulse) begin
            if (!last_tile_issued) rd_start_pulse <= 1'b1;
            eng_start_pulse <= 1'b1;
          end
          if (last_tile_issued && out_tile_done) begin
            cs <= S_DRAIN;
          end
        end

        S_DRAIN: begin
          if (wr_done && eng_done) begin
            o_busy <= 1'b0;
            o_done <= 1'b1;
            cs <= S_IDLE;
          end
        end

        default: cs <= S_IDLE;

      endcase
    end
  end
endmodule