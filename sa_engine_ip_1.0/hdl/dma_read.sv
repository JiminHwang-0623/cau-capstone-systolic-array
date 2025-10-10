//----------------------------------------------------------------+
// Project: Capstone Design - Systolic Array Accelerator
// Module: dma_read
// Description:
//   AXI4 Master DMA Read module with burst transfer support
//   Adapted from Deep Learning Hardware Design Contest code
//   Interface matched to sa_core_pipeline requirements
//----------------------------------------------------------------+

`timescale 1ns/1ps

module dma_read #(
  parameter int C_M_AXI_ID_WIDTH     = 1,
  parameter int C_M_AXI_ADDR_WIDTH   = 32,
  parameter int C_M_AXI_DATA_WIDTH   = 32,
  parameter int C_M_AXI_ARUSER_WIDTH = 0,
  parameter int C_M_AXI_RUSER_WIDTH  = 0
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
  
  // Stream Output Interface (to systolic_array_engine)
  output logic [C_M_AXI_DATA_WIDTH-1:0] o_data,
  output logic                          o_valid,
  input  logic                          i_ready,
  
  // AXI4 Master Read Interface
  // Read Address Channel (AR)
  output logic [C_M_AXI_ID_WIDTH-1:0]     M_AXI_ARID,
  output logic [C_M_AXI_ADDR_WIDTH-1:0]   M_AXI_ARADDR,
  output logic [7:0]                      M_AXI_ARLEN,
  output logic [2:0]                      M_AXI_ARSIZE,
  output logic [1:0]                      M_AXI_ARBURST,
  output logic                            M_AXI_ARLOCK,
  output logic [3:0]                      M_AXI_ARCACHE,
  output logic [2:0]                      M_AXI_ARPROT,
  output logic [3:0]                      M_AXI_ARQOS,
  output logic [C_M_AXI_ARUSER_WIDTH-1:0] M_AXI_ARUSER,
  output logic                            M_AXI_ARVALID,
  input  logic                            M_AXI_ARREADY,
  
  // Read Data Channel (R)
  input  logic [C_M_AXI_ID_WIDTH-1:0]     M_AXI_RID,
  input  logic [C_M_AXI_DATA_WIDTH-1:0]   M_AXI_RDATA,
  input  logic [1:0]                      M_AXI_RRESP,
  input  logic                            M_AXI_RLAST,
  input  logic [C_M_AXI_RUSER_WIDTH-1:0]  M_AXI_RUSER,
  input  logic                            M_AXI_RVALID,
  output logic                            M_AXI_RREADY
);

//------------------------------------------------------------------------------
// Parameters and Local Parameters
//------------------------------------------------------------------------------
  localparam FIXED_BURST_SIZE = 256;  // 256 transfers per burst
  localparam LOG_BURST_SIZE = $clog2(FIXED_BURST_SIZE);
  localparam BYTES_PER_WORD = C_M_AXI_DATA_WIDTH / 8;  // 4 bytes for 32-bit

//------------------------------------------------------------------------------
// Byte to Word Conversion
//------------------------------------------------------------------------------
  logic [31:0] num_words;  // Number of 32-bit words to transfer
  assign num_words = i_byte_len >> 2;  // Divide by 4 (shift right by 2)

//------------------------------------------------------------------------------
// AXI Static Signal Assignments
//------------------------------------------------------------------------------
  assign M_AXI_ARID     = {C_M_AXI_ID_WIDTH{1'b0}};
  assign M_AXI_ARLOCK   = 1'b0;
  assign M_AXI_ARCACHE  = 4'b0010;
  assign M_AXI_ARPROT   = 3'b000;
  assign M_AXI_ARQOS    = 4'b1111;  // Highest priority
  
  generate
    if (C_M_AXI_ARUSER_WIDTH > 0) begin
      assign M_AXI_ARUSER = {C_M_AXI_ARUSER_WIDTH{1'b0}};
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
    RD_IDLE,
    RD_PRE,
    RD_START,
    RD_SEQ,
    RD_WAIT
  } rd_state_t;
  
  rd_state_t st_rdaxi, next_st_rdaxi;
  
  // Burst management
  logic [7:0]  q_burst_size_rd;      // Current burst length (ARLEN format: N-1)
  logic [8:0]  q_burst_size_rd_1;    // Actual number of transfers in burst
  logic [31:0] q_burst_cnt_rd;       // Total words transferred so far
  logic [31:0] d_burst_cnt_rd;       // Next burst count
  logic [31:0] q_ext_addr_rd;        // Current read address
  logic        last_trans;           // Flag for last transaction
  
  // Latched control signals
  logic [31:0] num_words_d;
  
  // Response tracking
  logic        ext_rlast_r;
  logic [1:0]  ext_rresp_r;
  
  // Data counter
  logic [31:0] data_cnt;

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
// Response Tracking
//------------------------------------------------------------------------------
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN) begin
      ext_rlast_r <= 1'b0;
      ext_rresp_r <= 2'b00;
    end else begin
      ext_rlast_r <= M_AXI_RLAST & M_AXI_RVALID & M_AXI_RREADY;
      ext_rresp_r <= M_AXI_RRESP;
    end
  end

//------------------------------------------------------------------------------
// FSM State Register
//------------------------------------------------------------------------------
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN)
      st_rdaxi <= RD_IDLE;
    else
      st_rdaxi <= next_st_rdaxi;
  end

//------------------------------------------------------------------------------
// Burst Counter
//------------------------------------------------------------------------------
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN)
      q_burst_cnt_rd <= 32'h0;
    else
      q_burst_cnt_rd <= d_burst_cnt_rd;
  end

//------------------------------------------------------------------------------
// Burst Size Calculation
//------------------------------------------------------------------------------
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN) begin
      q_burst_size_rd   <= 8'd0;
      q_burst_size_rd_1 <= 9'd0;
      last_trans        <= 1'b0;
    end else begin
      if (q_burst_cnt_rd + FIXED_BURST_SIZE > num_words_d) begin
        // Last burst - partial
        q_burst_size_rd   <= num_words_d[LOG_BURST_SIZE-1:0] - 1'b1;
        q_burst_size_rd_1 <= num_words_d[LOG_BURST_SIZE-1:0];
        if (st_rdaxi == RD_SEQ)
          last_trans <= 1'b1;
        else
          last_trans <= 1'b0;
      end else if (q_burst_cnt_rd + FIXED_BURST_SIZE == num_words_d) begin
        // Last burst - exact
        q_burst_size_rd   <= FIXED_BURST_SIZE - 1;
        q_burst_size_rd_1 <= FIXED_BURST_SIZE;
        if (st_rdaxi == RD_SEQ)
          last_trans <= 1'b1;
        else
          last_trans <= 1'b0;
      end else begin
        // Normal burst
        q_burst_size_rd   <= FIXED_BURST_SIZE - 1;
        q_burst_size_rd_1 <= FIXED_BURST_SIZE;
        last_trans        <= 1'b0;
      end
    end
  end

//------------------------------------------------------------------------------
// Address Management
//------------------------------------------------------------------------------
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN)
      q_ext_addr_rd <= 32'h0;
    else if (start_pulse)
      q_ext_addr_rd <= i_base_addr;
    else if ((st_rdaxi == RD_WAIT) && (next_st_rdaxi == RD_PRE))
      q_ext_addr_rd <= q_ext_addr_rd + (FIXED_BURST_SIZE << 2);  // +1024 bytes
  end

//------------------------------------------------------------------------------
// FSM Next State and Output Logic
//------------------------------------------------------------------------------
  always_comb begin
    next_st_rdaxi  = st_rdaxi;
    d_burst_cnt_rd = q_burst_cnt_rd;

    // Default AXI Read Address Channel
    M_AXI_ARADDR   = 32'h0;
    M_AXI_ARLEN    = 8'h0;
    M_AXI_ARSIZE   = 3'b010;  // 4 bytes
    M_AXI_ARBURST  = 2'b01;   // INCR
    M_AXI_ARVALID  = 1'b0;

    case (st_rdaxi)
      RD_IDLE: begin
        if (start_pulse)
          next_st_rdaxi = RD_PRE;
      end

      RD_PRE: begin
        if (q_burst_cnt_rd == num_words_d) begin
          // End of block read
          d_burst_cnt_rd = 32'h0;
          next_st_rdaxi  = RD_IDLE;
        end else begin
          next_st_rdaxi = RD_START;
        end
      end

      RD_START: begin
        // Start burst read
        M_AXI_ARVALID = 1'b1;
        M_AXI_ARADDR  = q_ext_addr_rd;
        M_AXI_ARLEN   = q_burst_size_rd;
        M_AXI_ARSIZE  = 3'b010;  // 4 bytes (32-bit)
        M_AXI_ARBURST = 2'b01;   // INCR
        
        if (M_AXI_ARREADY) begin
          next_st_rdaxi = RD_SEQ;
        end
      end

      RD_SEQ: begin
        // Wait for last beat of burst
        if (ext_rlast_r) begin
          if (ext_rresp_r == 2'b00)  // OKAY
            next_st_rdaxi = RD_WAIT;
          else  // Error - retry
            next_st_rdaxi = RD_START;
        end
      end

      RD_WAIT: begin
        // Update burst counter
        d_burst_cnt_rd = q_burst_cnt_rd + q_burst_size_rd_1;
        next_st_rdaxi  = RD_PRE;
      end

      default: next_st_rdaxi = RD_IDLE;
    endcase
  end

//------------------------------------------------------------------------------
// AXI Read Data Channel - Always Ready
// NOTE: i_ready backpressure is ignored in this implementation
//       Engine is assumed to be fast enough to consume data
//------------------------------------------------------------------------------
  assign M_AXI_RREADY = 1'b1;

//------------------------------------------------------------------------------
// Data Counter (for debugging/monitoring)
//------------------------------------------------------------------------------
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN)
      data_cnt <= 32'h0;
    else begin
      if (st_rdaxi == RD_START)
        data_cnt <= q_burst_cnt_rd;
      else if (M_AXI_RVALID)
        data_cnt <= data_cnt + 1'b1;
    end
  end

//------------------------------------------------------------------------------
// Stream Output Interface
//------------------------------------------------------------------------------
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN) begin
      o_data  <= {C_M_AXI_DATA_WIDTH{1'b0}};
      o_valid <= 1'b0;
    end else begin
      o_data  <= M_AXI_RDATA;
      o_valid <= M_AXI_RVALID;
    end
  end

//------------------------------------------------------------------------------
// Status Outputs
//------------------------------------------------------------------------------
  // Busy: Active when not in IDLE state
  assign o_busy = (st_rdaxi != RD_IDLE);

  // Done: Pulse when last transaction completes successfully
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN)
      o_done <= 1'b0;
    else
      o_done <= last_trans && M_AXI_RLAST && M_AXI_RVALID && (M_AXI_RRESP == 2'b00);
  end

  // Error: Set on non-OKAY response
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if (!ARESETN)
      o_error <= 1'b0;
    else if (start_pulse)
      o_error <= 1'b0;  // Clear on new start
    else if (M_AXI_RVALID && (M_AXI_RRESP != 2'b00))
      o_error <= 1'b1;  // Set on error response
  end

endmodule
