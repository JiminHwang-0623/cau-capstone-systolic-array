// ============================================================================
// sa_core_pipeline.sv (Contest Code Compatible)
//   - AXI-Full Master + AXI-Lite Control + DMA + sa_core (Verified)
// Last Updated: 2025-11-06 (by Jimin Hwang)
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
  parameter int AXI_WIDTH_AD         = 32,
  parameter int BIT_TRANS            = 8,
  // New pipeline flag (0: legacy sa_core path, 1: tile_* pipeline)
  parameter bit NEW_PIPELINE_EN      = 1'b0
)(
  input  logic                       S_AXI_ACLK,
  input  logic                       S_AXI_ARESETN,
  input  logic                       M_AXI_ACLK,
  input  logic                       M_AXI_ARESETN,

  // Control from AXI-Lite (Contest code compatible)
  input  logic                       i_start,
  input  logic [31:0]                i_read_base_addr,   // Contest: i_ctrl_reg1
  input  logic [31:0]                i_write_base_addr,  // Contest: i_ctrl_reg2
  input  logic [31:0]                i_num_trans_param,  // DMA transfer size
  input  logic [31:0]                i_max_blk_param,    // Block count

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
  // Internal Signals (Contest Code Compatible)
  // ========================================================================
  parameter BUFF_DEPTH    = 256;
  parameter BUFF_ADDR_W   = $clog2(BUFF_DEPTH);
  localparam BIT_TRANS_LOCAL = BUFF_ADDR_W;

  //CSR
  logic ap_start;
  logic ap_ready;
  logic ap_done;
  logic interrupt;

  logic [31:0] dram_base_addr_rd;
  logic [31:0] dram_base_addr_wr;
  logic [31:0] reserved_register;

  // Signals for dma ctrl
  logic [1:0]  start_rd_wr;  // From sa_core
  logic        done_core;    // From sa_core
  logic [10:0] dma_cnt;      // From sa_core

  // Signals for dma read  
  logic                              ctrl_read;
  logic                              read_done;
  logic [AXI_WIDTH_AD-1:0]           read_addr;
  logic [C_M_AXI_DATA_WIDTH-1:0]     read_data;
  logic                              read_data_vld;
  logic [BIT_TRANS_LOCAL-1:0]        read_data_cnt;

  // Signals for dma write
  logic                              ctrl_write_done;
  logic                              ctrl_write;
  logic                              write_done;
  logic                              indata_req_wr;
  logic [BIT_TRANS_LOCAL-1:0]        write_data_cnt;
  logic [AXI_WIDTH_AD-1:0]           write_addr;
  logic [C_M_AXI_DATA_WIDTH-1:0]     write_data;

  // FIX ME (simulation defaults)
  // Keep burst length at 16 beats (64B) and control block counts per direction.
  logic [BIT_TRANS_LOCAL-1:0] num_trans             = 16;  // beats per burst (32-bit words)
  logic [15:0]                max_req_blk_idx_rd    = 32/16; // Read: 2 blocks (A 64B + B 64B)
  logic [15:0]                max_req_blk_idx_wr    = 64/16; // Write: 4 blocks (C 256B)
  
  //----------------------------------------------------------------
  // Control signals
  //----------------------------------------------------------------
  always_comb begin
      ap_done     = done_core;
      ap_ready    = 1'b1;
  end
  assign o_done  = interrupt;
  assign o_busy  = ap_start && !done_core;
  assign o_error = 1'b0;

  always_ff @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN) begin
      if(~S_AXI_ARESETN) begin
          ap_start <= 1'b0;
      end
      else begin 
          if(!ap_start && i_start)
              ap_start <= 1'b1;
          else if (ap_done)
              ap_start <= 1'b0;    
      end 
  end

  always_ff @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN) begin
      if(~S_AXI_ARESETN) begin
          interrupt <= 1'b0;
      end
      else begin        
          if(i_start)
              interrupt <= 1'b0;         
          else if (ap_done)
              interrupt <= 1'b1;                   
      end
  end

  // Parse the control registers
  always_ff @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN) begin
      if(~S_AXI_ARESETN) begin
          dram_base_addr_rd <= 32'd0;
          dram_base_addr_wr <= 32'd0;
          reserved_register <= 32'd0; // unused 
      end
      else begin 
          if(!ap_start && i_start) begin 
              dram_base_addr_rd <= i_read_base_addr;  // Base Address for READ
              dram_base_addr_wr <= i_write_base_addr; // Base Address for WRITE
              reserved_register <= 32'd0; 
          end 
          else if (ap_done) begin 
              dram_base_addr_rd <= 32'd0;
              dram_base_addr_wr <= 32'd0;
              reserved_register <= 32'd0; 
          end 
      end 
  end
  
  //----------------------------------------------------------------
  // DUTs
  //----------------------------------------------------------------
  // DMA Controller
  axi_dma_ctrl #(
      .AXI_WIDTH_AD(AXI_WIDTH_AD),
      .BIT_TRANS(BIT_TRANS_LOCAL)
  ) u_dma_ctrl(
      .clk              (M_AXI_ACLK          )
     ,.rstn             (M_AXI_ARESETN       )
     ,.i_start          (start_rd_wr         )
     ,.i_base_address_rd(dram_base_addr_rd   )
     ,.i_base_address_wr(dram_base_addr_wr   )
     ,.i_num_trans      (num_trans           )
     ,.i_max_req_blk_idx_rd(max_req_blk_idx_rd)
     ,.i_max_req_blk_idx_wr(max_req_blk_idx_wr)
     ,.row_cnt          (dma_cnt             ) 
     // DMA Read
     ,.i_read_done      (read_done           )
     ,.o_ctrl_read      (ctrl_read           )
     ,.o_read_addr      (read_addr           )
     // DMA Write
     ,.i_indata_req_wr  (indata_req_wr       )
     ,.i_write_done     (write_done          )
     ,.o_ctrl_write     (ctrl_write          )
     ,.o_write_addr     (write_addr          )
     ,.o_write_data_cnt (write_data_cnt      )
     ,.o_ctrl_write_done(ctrl_write_done     )
  );

  // DMA read module
  dma_read #(
          .BITS_TRANS(BIT_TRANS_LOCAL),
          .OUT_BITS_TRANS(18),            // Unused, match contest
          .AXI_WIDTH_USER(1),             // Master ID
          .AXI_WIDTH_ID(C_M_AXI_ID_WIDTH),
          .AXI_WIDTH_AD(AXI_WIDTH_AD),    // address width
          .AXI_WIDTH_DA(C_M_AXI_DATA_WIDTH),    // data width
          .AXI_WIDTH_DS(C_M_AXI_DATA_WIDTH/8),  // data strobe width
          // AXI4 User signal widths
          .AXI_WIDTH_ARUSER(C_M_AXI_ARUSER_WIDTH),
          .AXI_WIDTH_RUSER(C_M_AXI_RUSER_WIDTH)
      )
  u_dma_read(
      //AXI Master Interface
      //Read address channel
      .M_AXI_ARVALID	(M_AXI_ARVALID	  ),
      .M_AXI_ARREADY	(M_AXI_ARREADY	  ),
      .M_AXI_ARADDR	(M_AXI_ARADDR	  ),
      .M_AXI_ARID		(M_AXI_ARID		  ),
      .M_AXI_ARLEN	(M_AXI_ARLEN	  ),
      .M_AXI_ARSIZE	(M_AXI_ARSIZE	  ),
      .M_AXI_ARBURST	(M_AXI_ARBURST	  ),
      .M_AXI_ARLOCK	(M_AXI_ARLOCK	  ),
      .M_AXI_ARCACHE	(M_AXI_ARCACHE	  ),
      .M_AXI_ARPROT	(M_AXI_ARPROT	  ),
      .M_AXI_ARQOS	(M_AXI_ARQOS	  ),
      .M_AXI_ARUSER	(M_AXI_ARUSER	  ),
   
      //Read data channel
      .M_AXI_RVALID	(M_AXI_RVALID	  ),
      .M_AXI_RREADY	(M_AXI_RREADY	  ),
      .M_AXI_RDATA	(M_AXI_RDATA	  ),
      .M_AXI_RLAST	(M_AXI_RLAST	  ),
      .M_AXI_RID		(M_AXI_RID		  ),
      .M_AXI_RUSER	(M_AXI_RUSER	  ),
      .M_AXI_RRESP	(M_AXI_RRESP	  ),
       
      //Functional Ports
      .start_dma	(ctrl_read      ),
      .num_trans	(num_trans      ), //Number of 128-bit words transferred
      .start_addr	(read_addr      ), //iteration_num * 4 * 16 + read_address_d	
      .data_o		(read_data      ),
      .data_vld_o	(read_data_vld  ),
      .data_cnt_o	(read_data_cnt  ),
      .done_o		(read_done      ),

      //Global signals
      .clk        (M_AXI_ACLK      ),
      .rstn       (M_AXI_ARESETN   )
  );

  // DMA write module
  dma_write #(
          .BITS_TRANS(BIT_TRANS_LOCAL),
          .OUT_BITS_TRANS(BIT_TRANS_LOCAL),    
          .AXI_WIDTH_USER(1),           // Master ID
          .AXI_WIDTH_ID(C_M_AXI_ID_WIDTH),
          .AXI_WIDTH_AD(AXI_WIDTH_AD),  // address width
          .AXI_WIDTH_DA(C_M_AXI_DATA_WIDTH),  // data width
          .AXI_WIDTH_DS(C_M_AXI_DATA_WIDTH/8),// data strobe width
          // AXI4 User signal widths
          .AXI_WIDTH_AWUSER(C_M_AXI_AWUSER_WIDTH),
          .AXI_WIDTH_WUSER(C_M_AXI_WUSER_WIDTH),
          .AXI_WIDTH_BUSER(C_M_AXI_BUSER_WIDTH)
  )
  u_dma_write(
      // Write address channel
      .M_AXI_AWID		(M_AXI_AWID		),
      .M_AXI_AWADDR	    (M_AXI_AWADDR	),
      .M_AXI_AWLEN	    (M_AXI_AWLEN	),
      .M_AXI_AWSIZE	    (M_AXI_AWSIZE	),
      .M_AXI_AWBURST	(M_AXI_AWBURST	),
      .M_AXI_AWLOCK	    (M_AXI_AWLOCK	),
      .M_AXI_AWCACHE	(M_AXI_AWCACHE	),
      .M_AXI_AWPROT	    (M_AXI_AWPROT	),
      .M_AXI_AWQOS	    (M_AXI_AWQOS	),
      .M_AXI_AWVALID	(M_AXI_AWVALID	),
      .M_AXI_AWREADY	(M_AXI_AWREADY	),
      .M_AXI_AWUSER     (M_AXI_AWUSER   ),
      // Write data channel (Note: M_AXI_WID removed - deprecated in AXI4)
      .M_AXI_WDATA	    (M_AXI_WDATA	),
      .M_AXI_WSTRB	    (M_AXI_WSTRB	),
      .M_AXI_WLAST	    (M_AXI_WLAST	),
      .M_AXI_WVALID	    (M_AXI_WVALID	),
      .M_AXI_WREADY	    (M_AXI_WREADY	),
      .M_AXI_WUSER      (M_AXI_WUSER    ),
      // Write response channel
      .M_AXI_BID		(M_AXI_BID		),
      .M_AXI_BRESP	    (M_AXI_BRESP	),
      .M_AXI_BVALID	    (M_AXI_BVALID	),
      .M_AXI_BREADY	    (M_AXI_BREADY	),
      .M_AXI_BUSER      (M_AXI_BUSER    ),
      //Read address channel
      //User interface
      .start_dma	(ctrl_write     ),
      .num_trans	(num_trans      ), //Number of words transferred
      .start_addr	(write_addr     ),
      .indata		(write_data     ),
      .indata_req_o(indata_req_wr ),
      .done_o		(write_done     ), //Blk transfer done
      .fail_check (               ),
      //User signals
      .clk        (M_AXI_ACLK     ),
      .rstn       (M_AXI_ARESETN  )
  );

  // core module (Contest verified)
  generate
    if (NEW_PIPELINE_EN == 1'b0) begin : g_legacy_core
      sa_core #(
        .SIDE(8), .ELEM_BITS(8), .BYTES_PER_WORD(4), .LITTLE_ENDIAN(1)
      ) u_sa_core (
        .clk            (M_AXI_ACLK),
        .rstn           (M_AXI_ARESETN),

        .start          (ap_start),

        .read_data_vld  (read_data_vld),
        .DATA_IN        (read_data),

        // DMA handshake signals
        .rd_done        (read_done),
        .wr_pull        (indata_req_wr),
        .wr_done        (ctrl_write_done),

        .start_rd_wr    (start_rd_wr),
        .dma_cnt        (dma_cnt),
        .DATA_OUT       (write_data),

        .done           (done_core)
      );
    end else begin : g_new_pipeline_stubs
      // ---------------------------------------------------------------------
      // New pipeline (stub wiring only). Does not affect legacy functionality.
      // ---------------------------------------------------------------------
      // Orchestrator
      logic ld_req, ld_done;
      logic comp_req, comp_done;
      logic st_req, st_done;
      logic [31:0] i_idx, j_idx, k_base;
      logic busy_stub, done_stub, error_stub;

      tile_orchestrator u_orch (
        .clk            (M_AXI_ACLK),
        .rstn           (M_AXI_ARESETN),
        .start          (ap_start),
        .update_A       (1'b0),
        .N              (32'd0),
        .K              (32'd0),
        .M              (32'd0),
        .TILE_SIZE_CFG  (32'd8),
        .BLOCK_M_CFG    (32'd64),
        .ld_req         (ld_req),
        .ld_done        (ld_done),
        .comp_req       (comp_req),
        .comp_done      (comp_done),
        .st_req         (st_req),
        .st_done        (st_done),
        .i_idx          (i_idx),
        .j_idx          (j_idx),
        .k_base         (k_base),
        .busy           (busy_stub),
        .done           (done_stub),
        .error          (error_stub)
      );

      // Loader (not connected to real DMA in stub)
      logic rd_start;
      logic [AXI_WIDTH_AD-1:0] rd_base_addr;
      logic [31:0] rd_bytes;
      logic [C_M_AXI_DATA_WIDTH-1:0] rd_data_stub;
      logic rd_valid_stub;

      assign rd_data_stub  = '0;
      assign rd_valid_stub = 1'b0;

      logic a_we;
      logic [10:0] a_addr;
      logic [C_M_AXI_DATA_WIDTH-1:0] a_wdata;
      logic b_fill_req;
      logic b_fill_busy;
      logic b_fill_we;
      logic [9:0] b_fill_addr;
      logic [C_M_AXI_DATA_WIDTH-1:0] b_fill_wdata;
      logic b_fill_done;
      logic b_bank_sel;

      assign b_fill_busy = 1'b0;
      assign b_fill_done = 1'b0;

      tile_loader u_loader (
        .clk            (M_AXI_ACLK),
        .rstn           (M_AXI_ARESETN),
        .ld_req         (ld_req),
        .update_A       (1'b0),
        .N              (32'd0),
        .K              (32'd0),
        .M              (32'd0),
        .TILE_SIZE_CFG  (32'd8),
        .BLOCK_M_CFG    (32'd64),
        .base_A         (i_read_base_addr),
        .base_B         (i_read_base_addr),
        .stride_A       (32'd0),
        .stride_B       (32'd0),
        .rd_start       (rd_start),
        .rd_base_addr   (rd_base_addr),
        .rd_bytes       (rd_bytes),
        .rd_done        (1'b0),
        .rd_data        (rd_data_stub),
        .rd_valid       (rd_valid_stub),
        .a_we           (a_we),
        .a_addr         (a_addr),
        .a_wdata        (a_wdata),
        .b_fill_req     (b_fill_req),
        .b_fill_busy    (b_fill_busy),
        .b_fill_we      (b_fill_we),
        .b_fill_addr    (b_fill_addr),
        .b_fill_wdata   (b_fill_wdata),
        .b_fill_done    (b_fill_done),
        .b_bank_sel     (b_bank_sel),
        .ld_done        (ld_done)
      );

      // Compute (no real streams in stub)
      logic a_ready, b_ready;
      logic c_we;
      logic [11:0] c_addr;
      logic [C_M_AXI_DATA_WIDTH-1:0] c_wdata;

      tile_compute u_compute (
        .clk            (M_AXI_ACLK),
        .rstn           (M_AXI_ARESETN),
        .comp_req       (comp_req),
        .N              (32'd0),
        .K              (32'd0),
        .M              (32'd0),
        .TILE_SIZE_CFG  (32'd8),
        .a_ready        (a_ready),
        .a_valid        (1'b0),
        .a_data         ('0),
        .b_ready        (b_ready),
        .b_valid        (1'b0),
        .b_data         ('0),
        .c_we           (c_we),
        .c_addr         (c_addr),
        .c_wdata        (c_wdata),
        .comp_done      (comp_done)
      );

      // Store (not connected to real DMA)
      logic wr_start;
      logic [AXI_WIDTH_AD-1:0] wr_base_addr;
      logic [31:0] wr_bytes;
      logic wr_ready;
      logic wr_done;

      assign wr_ready = 1'b0;
      assign wr_done = 1'b0;

      logic [C_M_AXI_DATA_WIDTH-1:0] wr_data;
      logic wr_data_valid;
      logic wr_data_ready;

      assign wr_data_ready = 1'b0;

      logic c_rd_en;
      logic [11:0] c_rd_addr;
      logic [C_M_AXI_DATA_WIDTH-1:0] c_rd_data;
      logic c_rd_valid;
      
      assign c_rd_data = '0;
      assign c_rd_valid = 1'b0;

      tile_store u_store (
        .clk            (M_AXI_ACLK),
        .rstn           (M_AXI_ARESETN),
        .st_req         (st_req),
        .base_C         (i_write_base_addr),
        .stride_C       (32'd0),
        .wr_start       (wr_start),
        .wr_base_addr   (wr_base_addr),
        .wr_bytes       (wr_bytes),
        .wr_ready       (wr_ready),
        .wr_done        (wr_done),
        .wr_data        (wr_data),
        .wr_data_valid  (wr_data_valid),
        .wr_data_ready  (wr_data_ready),
        .c_rd_en        (c_rd_en),
        .c_rd_addr      (c_rd_addr),
        .c_rd_data      (c_rd_data),
        .c_rd_valid     (c_rd_valid),
        .st_done        (st_done)
      );
    end
  endgenerate


endmodule
