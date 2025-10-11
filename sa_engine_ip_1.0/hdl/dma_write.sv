`timescale 1ns/1ps

module dma_write #(
  parameter int C_M_AXI_ID_WIDTH     = 1,
  parameter int C_M_AXI_ADDR_WIDTH   = 32,
  parameter int C_M_AXI_DATA_WIDTH   = 32,
  parameter int C_M_AXI_AWUSER_WIDTH = 0,
  parameter int C_M_AXI_WUSER_WIDTH  = 0,
  parameter int C_M_AXI_BUSER_WIDTH  = 0,
  parameter int BITS_TRANS = 18,
  parameter int OUT_BITS_TRANS = 13
)(
  input  logic                        ACLK,
  input  logic                        ARESETN,
  
  // Control Interface (converted from original functional ports)
  input  logic                        i_start,        // start_dma
  input  logic [31:0]                 i_base_addr,    // start_addr
  input  logic [31:0]                 i_byte_len,     // num_trans * 4 (convert to word count)
  output logic                        o_busy,
  output logic                        o_done,         // done_o
  output logic                        o_error,
  
  // Stream Input Interface (converted from original data interface)
  input  logic [C_M_AXI_DATA_WIDTH-1:0] i_data,       // indata
  input  logic                           i_valid,      // data available
  output logic                           o_ready,      // indata_req_o equivalent
  
  // AXI4 Master Write Interface
  output logic [C_M_AXI_ID_WIDTH-1:0]     M_AXI_AWID,
  output logic [C_M_AXI_ADDR_WIDTH-1:0]   M_AXI_AWADDR,
  output logic [7:0]                      M_AXI_AWLEN,
  output logic [2:0]                      M_AXI_AWSIZE,
  output logic [1:0]                      M_AXI_AWBURST,
  output logic                            M_AXI_AWLOCK,
  output logic [3:0]                      M_AXI_AWCACHE,
  output logic [2:0]                      M_AXI_AWPROT,
  output logic [3:0]                      M_AXI_AWQOS,
  output logic [C_M_AXI_AWUSER_WIDTH-1:0] M_AXI_AWUSER,
  output logic                            M_AXI_AWVALID,
  input  logic                            M_AXI_AWREADY,
  
  output logic [C_M_AXI_DATA_WIDTH-1:0]   M_AXI_WDATA,
  output logic [C_M_AXI_DATA_WIDTH/8-1:0] M_AXI_WSTRB,
  output logic                            M_AXI_WLAST,
  output logic [C_M_AXI_WUSER_WIDTH-1:0]  M_AXI_WUSER,
  output logic                            M_AXI_WVALID,
  input  logic                            M_AXI_WREADY,
  
  input  logic [C_M_AXI_ID_WIDTH-1:0]     M_AXI_BID,
  input  logic [1:0]                      M_AXI_BRESP,
  input  logic [C_M_AXI_BUSER_WIDTH-1:0]  M_AXI_BUSER,
  input  logic                            M_AXI_BVALID,
  output logic                            M_AXI_BREADY
);

  // Local parameters from original code
  localparam FIXED_BURST_SIZE = 256;
  localparam DEFAULT_ID = 0;
  localparam LOG_BURST_SIZE = $clog2(FIXED_BURST_SIZE);
  
  // AXI size parameters
  localparam SIZE_1B  = 3'b000;
  localparam SIZE_2B  = 3'b001;
  localparam SIZE_4B  = 3'b010;
  localparam SIZE_8B  = 3'b011;
  
  // Response parameters
  localparam RESP_OKAY   = 2'b00;
  localparam RESP_EXOKAY = 2'b01;
  localparam RESP_SLVERR = 2'b10;
  localparam RESP_DECERR = 2'b11;
  
  // Convert byte length to word count (same as original num_trans)
  logic [OUT_BITS_TRANS-1:0] num_trans;
  assign num_trans = i_byte_len[OUT_BITS_TRANS+1:2]; // Divide by 4 (bytes to words)
  
  // AXI Static Assignments (same as original)
  assign M_AXI_AWID = DEFAULT_ID;
  assign M_AXI_AWBURST = 2'b01;  // INCR
  assign M_AXI_AWLOCK = 1'b0;
  assign M_AXI_AWCACHE = 4'b0000;
  assign M_AXI_AWPROT = 3'b000;
  assign M_AXI_AWQOS = 4'b1111;
  assign M_AXI_AWUSER = '0;
  assign M_AXI_WUSER = '0;
  
  // Internal signals (same structure as original)
  logic [C_M_AXI_ADDR_WIDTH-1:0] ext_awaddr;
  logic [7:0]                    ext_awlen;
  logic [2:0]                    ext_awsize;
  logic                          ext_awvalid;
  logic                          ext_awready;
  logic [C_M_AXI_DATA_WIDTH-1:0] ext_wdata;
  logic [C_M_AXI_DATA_WIDTH/8-1:0] ext_wstrb;
  logic                          ext_wlast;
  logic                          ext_wvalid;
  logic                          ext_wready;
  logic [C_M_AXI_ID_WIDTH-1:0]   ext_bid;
  logic [1:0]                    ext_bresp;
  logic                          ext_bvalid;
  logic                          ext_bready;
  
  // Connect to AXI ports
  assign M_AXI_AWVALID = ext_awvalid;
  assign M_AXI_AWADDR  = ext_awaddr;
  assign M_AXI_AWLEN   = ext_awlen;
  assign M_AXI_AWSIZE  = ext_awsize;
  assign ext_awready   = M_AXI_AWREADY;
  
  assign M_AXI_WVALID  = ext_wvalid;
  assign M_AXI_WDATA   = ext_wdata;
  assign M_AXI_WSTRB   = ext_wstrb;
  assign M_AXI_WLAST   = ext_wlast;
  assign ext_wready    = M_AXI_WREADY;
  
  assign ext_bid       = M_AXI_BID;
  assign ext_bresp     = M_AXI_BRESP;
  assign ext_bvalid    = M_AXI_BVALID;
  assign M_AXI_BREADY  = ext_bready;
  
  // Internal state and control signals (same as original)
  logic [OUT_BITS_TRANS-1:0] num_trans_d;
  logic [7:0] d_beat_cnt_wr, q_beat_cnt_wr;
  logic [OUT_BITS_TRANS-1:0] d_burst_cnt_wr, q_burst_cnt_wr;
  logic [7:0] q_burst_size_wr;
  logic [8:0] q_burst_size_wr_1;
  logic [C_M_AXI_ADDR_WIDTH-1:0] q_ext_addr_wr;
  
  // State machine parameters (same as original)
  logic [2:0] st_wr2axi, next_st_wr2axi;
  localparam WR_IDLE = 0, WR_PRE = 1, WR_START = 2, WR_BUFF_WAIT = 3, WR_SEQ = 4, WR_WAIT = 5;
  
  // Internal control signals
  logic indata_req_internal;
  logic done_internal;
  logic fail_check_internal;
  
  // Number of transactions register (same as original)
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) num_trans_d <= '0;
    else if(i_start) num_trans_d <= num_trans;
  end
  
  // Beat and burst counters (same as original)
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) begin
      q_beat_cnt_wr <= '0;
      q_burst_cnt_wr <= '0;
    end
    else begin
      q_beat_cnt_wr <= d_beat_cnt_wr;
      q_burst_cnt_wr <= d_burst_cnt_wr;
    end
  end
  
  // Burst size calculation (same logic as original)
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) begin
      q_burst_size_wr <= '0;
      q_burst_size_wr_1 <= '0;
    end
    else if(q_burst_cnt_wr + FIXED_BURST_SIZE > num_trans_d) begin
      q_burst_size_wr <= num_trans_d[LOG_BURST_SIZE-1:0] - 1;
      q_burst_size_wr_1 <= num_trans_d[LOG_BURST_SIZE-1:0];
    end
    else begin
      q_burst_size_wr <= FIXED_BURST_SIZE - 1;
      q_burst_size_wr_1 <= FIXED_BURST_SIZE;
    end
  end
  
  // Address calculation (same as original)
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) 
      q_ext_addr_wr <= '0;
    else if(i_start)
      q_ext_addr_wr <= i_base_addr;
    else if((st_wr2axi == WR_WAIT) && (next_st_wr2axi == WR_PRE) && (ext_bresp == RESP_OKAY))
      q_ext_addr_wr <= q_ext_addr_wr + {q_burst_size_wr_1, 2'b00};
  end
  
  // State machine register
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) st_wr2axi <= WR_IDLE;
    else         st_wr2axi <= next_st_wr2axi;
  end
  
  // State machine logic (same as original)
  always_comb begin
    next_st_wr2axi = st_wr2axi;
    d_beat_cnt_wr = q_beat_cnt_wr;
    d_burst_cnt_wr = q_burst_cnt_wr;
    
    indata_req_internal = 1'b0;
    // AXI signals for write
    ext_awvalid = 1'b0;
    ext_awaddr = '0;
    ext_awlen = '0;
    ext_awsize = '0;
    ext_wvalid = 1'b0;
    ext_wdata = '0;
    ext_wstrb = '0;
    ext_wlast = 1'b0;
    ext_bready = 1'b0;
    done_internal = 1'b0;
    fail_check_internal = 1'b0;
    
    case(st_wr2axi)
      default: next_st_wr2axi = WR_IDLE;
      WR_IDLE: begin
        if(i_start)
          next_st_wr2axi = WR_PRE;
      end
      WR_PRE: begin
        if(q_burst_cnt_wr == num_trans_d) begin
          d_burst_cnt_wr = '0;
          next_st_wr2axi = WR_IDLE;
          done_internal = 1'b1;
        end
        else
          next_st_wr2axi = WR_START;
      end
      WR_START: begin
        ext_awvalid = 1'b1;
        ext_awaddr = q_ext_addr_wr;
        ext_awlen = q_burst_size_wr;
        ext_awsize = SIZE_4B;
        if(ext_awready) begin
          indata_req_internal = 1'b1;
          next_st_wr2axi = WR_SEQ;
        end
      end
      WR_SEQ: begin
        if(ext_wready && i_valid) begin  // Added i_valid check for stream interface
          ext_wvalid = 1'b1;
          ext_wdata = i_data;
          ext_wstrb = {(C_M_AXI_DATA_WIDTH/8){1'b1}};
          
          if(q_burst_size_wr == q_beat_cnt_wr) begin
            d_beat_cnt_wr = '0;
            ext_wlast = 1'b1;
            next_st_wr2axi = WR_WAIT;
          end
          else begin
            indata_req_internal = 1'b1;
            d_beat_cnt_wr = q_beat_cnt_wr + 1'b1;
          end
        end
      end
      WR_WAIT: begin
        ext_bready = 1'b1;
        if(ext_bvalid) begin
          if(ext_bresp == RESP_OKAY) begin
            d_burst_cnt_wr = q_burst_cnt_wr + q_burst_size_wr_1;
            d_beat_cnt_wr = '0;
            next_st_wr2axi = WR_PRE;
          end
          else begin
            d_beat_cnt_wr = '0;
            next_st_wr2axi = WR_PRE;
            fail_check_internal = 1'b1;
          end
        end
      end
    endcase
  end
  
  // Output assignments
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) begin
      o_busy <= 1'b0;
      o_done <= 1'b0;
      o_error <= 1'b0;
      o_ready <= 1'b0;
    end
    else begin
      // Busy signal
      o_busy <= (st_wr2axi != WR_IDLE);
      
      // Done signal (same as original)
      o_done <= done_internal;
      
      // Error signal
      o_error <= fail_check_internal;
      
      // Ready signal - request data when needed
      o_ready <= indata_req_internal;
    end
  end

endmodule
