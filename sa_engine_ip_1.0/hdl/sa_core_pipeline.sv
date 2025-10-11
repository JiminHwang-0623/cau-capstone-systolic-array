// ============================================================================
// sa_core_pipeline.sv (FINAL, SystemVerilog)
//   - AXI-Full Master + AXI-Lite Control + Stream DMA + Systolic Engine
//   - FSM: IDLE → READ → COMP(계산) → WRITE
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
  
  // DMA Controller parameters (from sa_engine_top)
  parameter int BUFF_DEPTH    = 256,
  parameter int BUFF_ADDR_W   = $clog2(BUFF_DEPTH),
  parameter int BIT_TRANS     = BUFF_ADDR_W,
  parameter int OUT_BITS_TRANS = 18
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
  // Control and Status Registers (same as sa_engine_top)
  // ========================================================================
  logic ap_start, ap_ready, ap_done, interrupt;
  logic [31:0] dram_base_addr_rd, dram_base_addr_wr, reserved_register;
  
  // Fixed parameters (same as sa_engine_top)
  logic [BIT_TRANS-1:0]   num_trans = 16;           // BURST_LENGTH = 16
  logic [15:0]            max_req_blk_idx = 32/16;  // The number of blocks
  
  // Control signal generation (same as sa_engine_top)
  always_ff @(posedge S_AXI_ACLK, negedge S_AXI_ARESETN) begin
    if(~S_AXI_ARESETN) begin
      ap_start <= 1'b0;
    end else begin 
      if(!ap_start && i_start)
        ap_start <= 1'b1;
      else if (ap_done)
        ap_start <= 1'b0;    
    end 
  end

  always_ff @(posedge S_AXI_ACLK, negedge S_AXI_ARESETN) begin
    if(~S_AXI_ARESETN) begin
      interrupt <= 1'b0;
    end else begin        
      if(i_start)
        interrupt <= 1'b0;         
      else if (ap_done)
        interrupt <= 1'b1;                   
    end
  end

  // Parse the control registers (same as sa_engine_top)
  always_ff @(posedge S_AXI_ACLK, negedge S_AXI_ARESETN) begin
    if(~S_AXI_ARESETN) begin
      dram_base_addr_rd <= '0;
      dram_base_addr_wr <= '0;
      reserved_register <= '0;
    end else begin 
      if(!ap_start && i_start) begin 
        dram_base_addr_rd <= i_src_addr;    // Base Address for READ
        dram_base_addr_wr <= i_dst_addr;    // Base Address for WRITE  
        reserved_register <= i_size_param;  // reserved
      end else if (ap_done) begin 
        dram_base_addr_rd <= '0;
        dram_base_addr_wr <= '0;
        reserved_register <= '0; 
      end 
    end 
  end

  // Status outputs
  assign o_busy  = ap_start;
  assign o_done  = interrupt;
  assign o_error = 1'b0;  // Error handling can be added later

  // ========================================================================
  // DMA Controller signals (same as sa_engine_top)
  // ========================================================================
  logic [1:0] start_rd_wr;
  logic [10:0] dma_cnt;
  logic done;

  // DMA Read signals
  logic ctrl_read;
  logic read_done;
  logic [C_M_AXI_ADDR_WIDTH-1:0] read_addr;
  logic [C_M_AXI_DATA_WIDTH-1:0] read_data;
  logic read_data_vld;
  logic [BIT_TRANS-1:0] read_data_cnt;

  // DMA Write signals
  logic ctrl_write_done;
  logic ctrl_write;
  logic write_done;
  logic indata_req_wr;
  logic [BIT_TRANS-1:0] write_data_cnt;
  logic [C_M_AXI_ADDR_WIDTH-1:0] write_addr;
  logic [C_M_AXI_DATA_WIDTH-1:0] write_data;

  // ========================================================================
  // DMA Controller (same as sa_engine_top)
  // ========================================================================
  axi_dma_ctrl #(
    .BIT_TRANS(BIT_TRANS)
  ) u_dma_ctrl (
    .clk                (S_AXI_ACLK),
    .rstn               (S_AXI_ARESETN),
    .i_start            (start_rd_wr),
    .i_base_address_rd  (dram_base_addr_rd),
    .i_base_address_wr  (dram_base_addr_wr),
    .i_num_trans        (num_trans),
    .i_max_req_blk_idx  (max_req_blk_idx),
    .row_cnt            (dma_cnt),
    // DMA Read
    .i_read_done        (read_done),
    .o_ctrl_read        (ctrl_read),
    .o_read_addr        (read_addr),
    // DMA Write
    .i_indata_req_wr    (indata_req_wr),
    .i_write_done       (write_done),
    .o_ctrl_write       (ctrl_write),
    .o_write_addr       (write_addr),
    .o_write_data_cnt   (write_data_cnt),
    .o_ctrl_write_done  (ctrl_write_done)
  );

  // ========================================================================
  // DMA READ (updated for AXI4)
  // ========================================================================
  dma_read #(
    .C_M_AXI_ID_WIDTH     (C_M_AXI_ID_WIDTH),
    .C_M_AXI_ADDR_WIDTH   (C_M_AXI_ADDR_WIDTH),
    .C_M_AXI_DATA_WIDTH   (C_M_AXI_DATA_WIDTH),
    .C_M_AXI_ARUSER_WIDTH (C_M_AXI_ARUSER_WIDTH),
    .C_M_AXI_RUSER_WIDTH  (C_M_AXI_RUSER_WIDTH),
    .BITS_TRANS           (BIT_TRANS),
    .OUT_BITS_TRANS       (OUT_BITS_TRANS)
  ) u_dma_read (
    .ACLK        (M_AXI_ACLK),
    .ARESETN     (M_AXI_ARESETN),
    .i_start     (ctrl_read),
    .i_base_addr (read_addr),
    .i_byte_len  ({num_trans, 2'b00}),  // Convert words to bytes
    .o_busy      (/* unused */),
    .o_done      (read_done),
    .o_error     (/* unused */),
    .o_data      (read_data),
    .o_valid     (read_data_vld),
    .i_ready     (1'b1),               // Always ready
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
  // SYSTOLIC ARRAY ENGINE (same interface as sa_engine_top)
  // ========================================================================
  systolic_array_engine_top u_sa_engine (
    .clk            (S_AXI_ACLK),
    .rstn           (S_AXI_ARESETN),
    .start          (ap_start),
    .read_data_vld  (read_data_vld),
    .DATA_IN        (read_data),
    .start_rd_wr    (start_rd_wr),
    .dma_cnt        (dma_cnt),
    .DATA_OUT       (write_data),
    .done           (done)
  );
  
  assign ap_done = done;  // Connect engine done to ap_done

  // ========================================================================
  // DMA WRITE (updated for AXI4)
  // ========================================================================
  dma_write #(
    .C_M_AXI_ID_WIDTH     (C_M_AXI_ID_WIDTH),
    .C_M_AXI_ADDR_WIDTH   (C_M_AXI_ADDR_WIDTH),
    .C_M_AXI_DATA_WIDTH   (C_M_AXI_DATA_WIDTH),
    .C_M_AXI_AWUSER_WIDTH (C_M_AXI_AWUSER_WIDTH),
    .C_M_AXI_WUSER_WIDTH  (C_M_AXI_WUSER_WIDTH),
    .C_M_AXI_BUSER_WIDTH  (C_M_AXI_BUSER_WIDTH),
    .BITS_TRANS           (BIT_TRANS),
    .OUT_BITS_TRANS       (BIT_TRANS)
  ) u_dma_write (
    .ACLK        (M_AXI_ACLK),
    .ARESETN     (M_AXI_ARESETN),
    .i_start     (ctrl_write),
    .i_base_addr (write_addr),
    .i_byte_len  ({num_trans, 2'b00}),  // Convert words to bytes
    .o_busy      (/* unused */),
    .o_done      (write_done),
    .o_error     (/* unused */),
    .i_data      (write_data),
    .i_valid     (indata_req_wr),        // Use request as valid signal
    .o_ready     (/* unused */),         // Original didn't use ready
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

endmodule
