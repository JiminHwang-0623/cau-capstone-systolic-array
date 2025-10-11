// ============================================================================
// sa_core_pipeline.sv (FINAL, SystemVerilog)
//   - AXI-Full Master + AXI-Lite Control + Stream DMA + Systolic Engine
//   - FSM: IDLE �� READ �� COMP(����) �� WRITE
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
  parameter int C_M_AXI_BUSER_WIDTH  = 0
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
  // Stream Signals: READ �� ENGINE �� WRITE
  // ========================================================================
  logic [C_M_AXI_DATA_WIDTH-1:0] rd_data;
  logic                          rd_valid;
  logic                          rd_ready;
  logic [7:0]                    rd_data_cnt;  // 8-bit word counter (contest style)

  logic [C_M_AXI_DATA_WIDTH-1:0] eng_data_out;
  logic                          eng_valid_out;
  logic                          eng_ready_out;

  logic rd_done;   // Read done (from dma_read)
  logic wr_done, wr_err;   // Write done/error (from dma_write)
  
  // Byte to Word conversion: 8-bit (contest code style)
  // BUFF_DEPTH = 256, BUFF_ADDR_W = 8, BIT_TRANS = 8
  logic [7:0] num_trans;
  assign num_trans = i_size_param[9:2];  // 8-bit word count (max 256)

  logic eng_busy, eng_done, eng_error;

  // DMA Control signals (from axi_dma_ctrl)
  logic [1:0]  dma_ctrl_start;      // 2'b10=Read, 2'b11=Write
  logic        dma_ctrl_read;       // Read control pulse
  logic        dma_ctrl_write;      // Write control pulse
  logic [31:0] dma_read_addr;       // Block-wise read address
  logic [31:0] dma_write_addr;      // Block-wise write address
  logic [7:0]  dma_write_data_cnt;  // 8-bit write data counter
  logic        dma_ctrl_write_done; // Write complete from ctrl

  // ========================================================================
  // DMA CONTROL (Block-wise address management)
  // ========================================================================
  axi_dma_ctrl #(
    .AXI_WIDTH_AD  (C_M_AXI_ADDR_WIDTH),
    .BIT_TRANS     (8)                 // 8-bit (contest code style)
  ) u_axi_dma_ctrl (
    .clk                  (M_AXI_ACLK),
    .rstn                 (M_AXI_ARESETN),
    .i_start              (dma_ctrl_start),
    .i_base_address_rd    (i_src_addr),
    .i_base_address_wr    (i_dst_addr),
    .i_num_trans          (num_trans),
    .i_max_req_blk_idx    (16'd1),  // TODO: 나중에 레지스터로 변경
    .row_cnt              (11'd0),  // Not used yet
    // DMA Read control
    .i_read_done          (rd_done),
    .o_ctrl_read          (dma_ctrl_read),
    .o_read_addr          (dma_read_addr),
    // DMA Write control
    .i_write_done         (wr_done),
    .i_indata_req_wr      (eng_ready_out),  // Engine ready = indata request
    .o_ctrl_write         (dma_ctrl_write),
    .o_write_addr         (dma_write_addr),
    .o_write_data_cnt     (dma_write_data_cnt),
    .o_ctrl_write_done    (dma_ctrl_write_done)
  );

  // ========================================================================
  // FSM
  // ========================================================================
  typedef enum logic [1:0] {S_IDLE, S_READ, S_COMP, S_WRITE} core_state_t;
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
  // DMA READ (Verified code from contest - axi_dma_rd)
  // ========================================================================
  dma_read #(
    .AXI_WIDTH_ID   (C_M_AXI_ID_WIDTH),
    .AXI_WIDTH_AD   (C_M_AXI_ADDR_WIDTH),
    .AXI_WIDTH_DA   (C_M_AXI_DATA_WIDTH),
    .BITS_TRANS     (8),               // 8-bit (contest code style)
    .OUT_BITS_TRANS (18)               // Unused, but match contest definition
  ) u_dma_read (
    // Global signals (original naming)
    .clk            (M_AXI_ACLK),
    .rstn           (M_AXI_ARESETN),
    
    // Functional Ports (controlled by axi_dma_ctrl)
    .start_dma      (dma_ctrl_read),      // From axi_dma_ctrl
    .num_trans      (num_trans),          // 18-bit word count
    .start_addr     (dma_read_addr),      // Block address from axi_dma_ctrl
    .data_o         (rd_data),
    .data_vld_o     (rd_valid),
    .data_cnt_o     (rd_data_cnt),
    .done_o         (rd_done),
    
    // AXI4 Master Read Interface
    .M_AXI_ARID     (M_AXI_ARID),
    .M_AXI_ARADDR   (M_AXI_ARADDR),
    .M_AXI_ARLEN    (M_AXI_ARLEN),
    .M_AXI_ARSIZE   (M_AXI_ARSIZE),
    .M_AXI_ARBURST  (M_AXI_ARBURST),
    .M_AXI_ARLOCK   (M_AXI_ARLOCK),
    .M_AXI_ARCACHE  (M_AXI_ARCACHE),
    .M_AXI_ARPROT   (M_AXI_ARPROT),
    .M_AXI_ARQOS    (M_AXI_ARQOS),
    .M_AXI_ARUSER   (M_AXI_ARUSER),
    .M_AXI_ARVALID  (M_AXI_ARVALID),
    .M_AXI_ARREADY  (M_AXI_ARREADY),
    .M_AXI_RID      (M_AXI_RID),
    .M_AXI_RDATA    (M_AXI_RDATA),
    .M_AXI_RRESP    (M_AXI_RRESP),
    .M_AXI_RLAST    (M_AXI_RLAST),
    .M_AXI_RUSER    (M_AXI_RUSER),
    .M_AXI_RVALID   (M_AXI_RVALID),
    .M_AXI_RREADY   (M_AXI_RREADY)
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
  // DMA WRITE (Verified code from contest - axi_dma_wr)
  // ========================================================================
  
  dma_write #(
    .AXI_WIDTH_ID   (C_M_AXI_ID_WIDTH),
    .AXI_WIDTH_AD   (C_M_AXI_ADDR_WIDTH),
    .AXI_WIDTH_DA   (C_M_AXI_DATA_WIDTH),
    .BITS_TRANS     (8),               // 8-bit (contest code style)
    .OUT_BITS_TRANS (8)                // Same as BITS_TRANS (contest code style)
  ) u_dma_write (
    // Global signals (original naming)
    .clk            (M_AXI_ACLK),
    .rstn           (M_AXI_ARESETN),
    
    // Functional Ports (controlled by axi_dma_ctrl)
    .start_dma      (dma_ctrl_write),    // From axi_dma_ctrl
    .num_trans      (num_trans),         // No slicing (contest code style)
    .start_addr     (dma_write_addr),    // Block address from axi_dma_ctrl
    .indata         (eng_data_out),
    .indata_req_o   (eng_ready_out),     // Note: req becomes ready
    .done_o         (wr_done),
    .fail_check     (wr_err),            // fail_check mapped to error
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
  // FSM (READ �� COMP �� WRITE)
  // ========================================================================
  always_ff @(posedge S_AXI_ACLK) begin
    if(!S_AXI_ARESETN) begin
      cs <= S_IDLE;
      o_busy <= 1'b0; o_done <= 1'b0; o_error <= 1'b0;
      dma_ctrl_start <= 2'b00;
    end else begin
      dma_ctrl_start <= 2'b00;  // Default: no DMA operation
      o_done         <= 1'b0;
      o_error        <= wr_err | eng_error;

      unique case (cs)
        S_IDLE: begin
          o_busy <= 1'b0;
          if (start_pulse) begin
            o_busy <= 1'b1;
            dma_ctrl_start <= 2'b10;  // Start READ via axi_dma_ctrl
            cs <= S_READ;
          end
        end
        S_READ: begin
          // Wait for block read to complete
          // axi_dma_ctrl handles address calculation
          if (rd_done) cs <= S_COMP;
        end
        S_COMP: begin
          // Computation done in engine, start write
          dma_ctrl_start <= 2'b11;  // Start WRITE via axi_dma_ctrl
          cs <= S_WRITE;
        end
        S_WRITE: begin
          // Wait for block write to complete
          if (dma_ctrl_write_done && eng_done) begin
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
