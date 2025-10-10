//----------------------------------------------------------------+
// Project: Capstone Design - Systolic Array Accelerator
// Module: dma_write
// Description:
//   AXI4 Master DMA Write module with burst transfer support
//   Adapted from Deep Learning Hardware Design Contest code
//   Interface matched to sa_core_pipeline requirements
//----------------------------------------------------------------+

`timescale 1ns/1ps

module dma_write #(
  parameter int C_M_AXI_ID_WIDTH     = 1,
  parameter int C_M_AXI_ADDR_WIDTH   = 32,
  parameter int C_M_AXI_DATA_WIDTH   = 32,
  parameter int C_M_AXI_AWUSER_WIDTH = 0,
  parameter int C_M_AXI_WUSER_WIDTH  = 0,
  parameter int C_M_AXI_BUSER_WIDTH  = 0
)(
  // Clock and Reset
  input  logic                        ACLK,
  input  logic                        ARESETN,
  
  // Control Interface (from sa_core_pipeline)
  input  logic                        i_start,
  input  logic [31:0]                 i_base_addr,
  input  logic [31:0]                 i_byte_len,
  output logic                        o_busy,
  output logic                        o_done,
  output logic                        o_error,
  
  // Stream Input Interface (from systolic_array_engine)
  input  logic [C_M_AXI_DATA_WIDTH-1:0] i_data,
  input  logic                           i_valid,
  output logic                           o_ready,
  
  // AXI4 Master Write Interface
  // Write Address Channel (AW)
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
  
  // Write Data Channel (W)
  output logic [C_M_AXI_DATA_WIDTH-1:0]   M_AXI_WDATA,
  output logic [C_M_AXI_DATA_WIDTH/8-1:0] M_AXI_WSTRB,
  output logic                            M_AXI_WLAST,
  output logic [C_M_AXI_WUSER_WIDTH-1:0]  M_AXI_WUSER,
  output logic                            M_AXI_WVALID,
  input  logic                            M_AXI_WREADY,
  
  // Write Response Channel (B)
  input  logic [C_M_AXI_ID_WIDTH-1:0]     M_AXI_BID,
  input  logic [1:0]                      M_AXI_BRESP,
  input  logic [C_M_AXI_BUSER_WIDTH-1:0]  M_AXI_BUSER,
  input  logic                            M_AXI_BVALID,
  output logic                            M_AXI_BREADY
);

//------------------------------------------------------------------------------
// Parameters and Local Parameters
//------------------------------------------------------------------------------
  localparam FIXED_BURST_SIZE = 256;  // 256 transfers per burst
  localparam LOG_BURST_SIZE = $clog2(FIXED_BURST_SIZE);
  localparam BYTES_PER_WORD = C_M_AXI_DATA_WIDTH / 8;  // 4 bytes for 32-bit
  
  // AXI Response codes
  localparam [1:0] RESP_OKAY   = 2'b00;
  localparam [1:0] RESP_EXOKAY = 2'b01;
  localparam [1:0] RESP_SLVERR = 2'b10;
  localparam [1:0] RESP_DECERR = 2'b11;

//------------------------------------------------------------------------------
// Byte to Word Conversion
//------------------------------------------------------------------------------
  logic [31:0] num_words;  // Number of 32-bit words to transfer
  assign num_words = i_byte_len >> 2;  // Divide by 4 (shift right by 2)

//------------------------------------------------------------------------------
// AXI Static Signal Assignments
//------------------------------------------------------------------------------
  // Write Address Channel (AW) - Static signals
  assign M_AXI_AWID     = {C_M_AXI_ID_WIDTH{1'b0}};
  assign M_AXI_AWLOCK   = 1'b0;
  assign M_AXI_AWCACHE  = 4'b0000;
  assign M_AXI_AWPROT   = 3'b000;
  assign M_AXI_AWQOS    = 4'b1111;  // Highest priority
  
  generate
    if (C_M_AXI_AWUSER_WIDTH > 0) begin
      assign M_AXI_AWUSER = {C_M_AXI_AWUSER_WIDTH{1'b0}};
    end
    if (C_M_AXI_WUSER_WIDTH > 0) begin
      assign M_AXI_WUSER = {C_M_AXI_WUSER_WIDTH{1'b0}};
    end
  endgenerate

//------------------------------------------------------------------------------
// Internal Signals
//------------------------------------------------------------------------------
  // Start pulse generation
  logic i_start_d;
  logic start_pulse;
  
  // FSM
  typedef enum logic [2:0] {
    WR_IDLE,
    WR_PRE,
    WR_START,
    WR_SEQ,
    WR_WAIT
  } wr_state_t;
  
  wr_state_t st_wr2axi, next_st_wr2axi;
  
  // Burst management
  logic [7:0]  q_beat_cnt_wr;        // Current beat within burst (0 to AWLEN)
  logic [7:0]  d_beat_cnt_wr;        // Next beat count
  logic [7:0]  q_burst_size_wr;      // Current burst length (AWLEN format: N-1)
  logic [8:0]  q_burst_size_wr_1;    // Actual number of transfers in burst
  logic [31:0] q_burst_cnt_wr;       // Total words transferred so far
  logic [31:0] d_burst_cnt_wr;       // Next burst count
  logic [31:0] q_ext_addr_wr;        // Current write address
  
  // Latched control signals
  logic [31:0] num_words_d;
  
  // Internal flags
  logic fail_check;

//------------------------------------------------------------------------------
// Start Pulse Generation (Rising Edge Detector)
//------------------------------------------------------------------------------
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN) begin
      i_start_d   <= 1'b0;
      start_pulse <= 1'b0;
    end else begin
      i_start_d   <= i_start;
      start_pulse <= i_start & ~i_start_d;  // Rising edge
    end
  end

//------------------------------------------------------------------------------
// Latch Number of Words on Start
//------------------------------------------------------------------------------
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN)
      num_words_d <= 32'h0;
    else if (start_pulse)
      num_words_d <= num_words;
  end

//------------------------------------------------------------------------------
// FSM State Register
//------------------------------------------------------------------------------
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN)
      st_wr2axi <= WR_IDLE;
    else
      st_wr2axi <= next_st_wr2axi;
  end

//------------------------------------------------------------------------------
// Beat and Burst Counters
//------------------------------------------------------------------------------
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN) begin
      q_beat_cnt_wr  <= 8'd0;
      q_burst_cnt_wr <= 32'd0;
    end else begin
      q_beat_cnt_wr  <= d_beat_cnt_wr;
      q_burst_cnt_wr <= d_burst_cnt_wr;
    end
  end

//------------------------------------------------------------------------------
// Burst Size Calculation
//------------------------------------------------------------------------------
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN) begin
      q_burst_size_wr   <= 8'd0;
      q_burst_size_wr_1 <= 9'd0;
    end else begin
      if (q_burst_cnt_wr + FIXED_BURST_SIZE > num_words_d) begin
        // Last burst - partial
        q_burst_size_wr   <= num_words_d[LOG_BURST_SIZE-1:0] - 1'b1;
        q_burst_size_wr_1 <= num_words_d[LOG_BURST_SIZE-1:0];
      end else begin
        // Normal burst
        q_burst_size_wr   <= FIXED_BURST_SIZE - 1;
        q_burst_size_wr_1 <= FIXED_BURST_SIZE;
      end
    end
  end

//------------------------------------------------------------------------------
// Address Management
//------------------------------------------------------------------------------
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN)
      q_ext_addr_wr <= 32'h0;
    else if (start_pulse)
      q_ext_addr_wr <= i_base_addr;
    else if ((st_wr2axi == WR_WAIT) && (next_st_wr2axi == WR_PRE) && (M_AXI_BRESP == RESP_OKAY))
      q_ext_addr_wr <= q_ext_addr_wr + (q_burst_size_wr_1 << 2);  // +N*4 bytes
  end

//------------------------------------------------------------------------------
// FSM Next State and Output Logic
//------------------------------------------------------------------------------
  always_comb begin
    next_st_wr2axi = st_wr2axi;
    d_beat_cnt_wr  = q_beat_cnt_wr;
    d_burst_cnt_wr = q_burst_cnt_wr;
    
    // Default outputs
    o_ready = 1'b0;
    fail_check = 1'b0;
    
    // Default AXI Write Address Channel (AW)
    M_AXI_AWVALID  = 1'b0;
    M_AXI_AWADDR   = 32'h0;
    M_AXI_AWLEN    = 8'h0;
    M_AXI_AWSIZE   = 3'b010;  // 4 bytes
    M_AXI_AWBURST  = 2'b01;   // INCR
    
    // Default AXI Write Data Channel (W)
    M_AXI_WVALID   = 1'b0;
    M_AXI_WDATA    = {C_M_AXI_DATA_WIDTH{1'b0}};
    M_AXI_WSTRB    = {(C_M_AXI_DATA_WIDTH/8){1'b0}};
    M_AXI_WLAST    = 1'b0;
    
    // Default AXI Write Response Channel (B)
    M_AXI_BREADY   = 1'b0;

    case (st_wr2axi)
      WR_IDLE: begin
        if (start_pulse)
          next_st_wr2axi = WR_PRE;
      end

      WR_PRE: begin
        if (q_burst_cnt_wr == num_words_d) begin
          // End of block write
          d_burst_cnt_wr = 32'h0;
          next_st_wr2axi = WR_IDLE;
        end else begin
          next_st_wr2axi = WR_START;
        end
      end

      WR_START: begin
        // Start burst write - send address
        M_AXI_AWVALID  = 1'b1;
        M_AXI_AWADDR   = q_ext_addr_wr;
        M_AXI_AWLEN    = q_burst_size_wr;
        M_AXI_AWSIZE   = 3'b010;  // 4 bytes (32-bit)
        M_AXI_AWBURST  = 2'b01;   // INCR
        
        if (M_AXI_AWREADY) begin
          // Address accepted, request first data
          o_ready = 1'b1;
          next_st_wr2axi = WR_SEQ;
        end
      end

      WR_SEQ: begin
        // Write data beats
        if (M_AXI_WREADY) begin
          M_AXI_WVALID = 1'b1;
          M_AXI_WDATA  = i_data;
          M_AXI_WSTRB  = {(C_M_AXI_DATA_WIDTH/8){1'b1}};  // All bytes valid
          
          if (q_burst_size_wr == q_beat_cnt_wr) begin
            // Last beat of burst
            M_AXI_WLAST    = 1'b1;
            d_beat_cnt_wr  = 8'h0;
            next_st_wr2axi = WR_WAIT;
          end else begin
            // More beats to go
            o_ready       = 1'b1;  // Request next data
            d_beat_cnt_wr = q_beat_cnt_wr + 1'b1;
          end
        end
      end

      WR_WAIT: begin
        // Wait for write response
        M_AXI_BREADY = 1'b1;
        
        if (M_AXI_BVALID) begin
          if (M_AXI_BRESP == RESP_OKAY) begin
            // Success
            d_burst_cnt_wr = q_burst_cnt_wr + q_burst_size_wr_1;
            d_beat_cnt_wr  = 8'h0;
            next_st_wr2axi = WR_PRE;
          end else begin
            // Error - retry (or report error)
            d_beat_cnt_wr  = 8'h0;
            fail_check     = 1'b1;
            next_st_wr2axi = WR_PRE;
          end
        end
      end

      default: next_st_wr2axi = WR_IDLE;
    endcase
  end

//------------------------------------------------------------------------------
// Status Outputs
//------------------------------------------------------------------------------
  // Busy: Active when not in IDLE state
  assign o_busy = (st_wr2axi != WR_IDLE);

  // Done: Pulse when all transfers complete
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN)
      o_done <= 1'b0;
    else
      o_done <= (st_wr2axi == WR_PRE) && (q_burst_cnt_wr == num_words_d);
  end

  // Error: Set on non-OKAY response
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN)
      o_error <= 1'b0;
    else if (start_pulse)
      o_error <= 1'b0;  // Clear on new start
    else if (fail_check)
      o_error <= 1'b1;  // Set on error response
  end

endmodule
