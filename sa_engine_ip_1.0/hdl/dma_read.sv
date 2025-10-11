`timescale 1ns/1ps

module dma_read #(
  parameter int C_M_AXI_ID_WIDTH     = 1,
  parameter int C_M_AXI_ADDR_WIDTH   = 32,
  parameter int C_M_AXI_DATA_WIDTH   = 32,
  parameter int C_M_AXI_ARUSER_WIDTH = 0,
  parameter int C_M_AXI_RUSER_WIDTH  = 0,
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
  
  // Stream Output Interface (converted from original data interface)
  output logic [C_M_AXI_DATA_WIDTH-1:0] o_data,       // data_o
  output logic                          o_valid,      // data_vld_o
  input  logic                          i_ready,      // always 1 in original
  
  // AXI4 Master Read Interface
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
  
  input  logic [C_M_AXI_ID_WIDTH-1:0]     M_AXI_RID,
  input  logic [C_M_AXI_DATA_WIDTH-1:0]   M_AXI_RDATA,
  input  logic [1:0]                      M_AXI_RRESP,
  input  logic                            M_AXI_RLAST,
  input  logic [C_M_AXI_RUSER_WIDTH-1:0]  M_AXI_RUSER,
  input  logic                            M_AXI_RVALID,
  output logic                            M_AXI_RREADY
);

  // Local parameters from original code
  localparam FIXED_BURST_SIZE = 256;
  localparam LOG_BURST_SIZE = $clog2(FIXED_BURST_SIZE);
  
  // Convert byte length to word count (same as original num_trans)
  logic [BITS_TRANS-1:0] num_trans;
  assign num_trans = i_byte_len[BITS_TRANS+1:2]; // Divide by 4 (bytes to words)
  
  // AXI Static Assignments (same as original)
  assign M_AXI_ARID = '0;
  assign M_AXI_ARLOCK = 1'b0;
  assign M_AXI_ARCACHE = 4'd0;
  assign M_AXI_ARPROT = 3'd0;
  assign M_AXI_ARQOS = 4'b1111;
  assign M_AXI_ARUSER = '0;
  
  // Internal signals (same structure as original)
  logic [C_M_AXI_ADDR_WIDTH-1:0] ext_araddr;
  logic [7:0]                    ext_arlen;
  logic [2:0]                    ext_arsize;
  logic [1:0]                    ext_arburst;
  logic                          ext_arvalid;
  logic                          ext_arready;
  logic [C_M_AXI_DATA_WIDTH-1:0] ext_rdata;
  logic [1:0]                    ext_rresp;
  logic                          ext_rlast;
  logic                          ext_rvalid;
  logic                          ext_rready;
  
  // Connect to AXI ports
  assign M_AXI_ARVALID = ext_arvalid;
  assign M_AXI_ARADDR  = ext_araddr;
  assign M_AXI_ARLEN   = ext_arlen;
  assign M_AXI_ARSIZE  = ext_arsize;
  assign M_AXI_ARBURST = ext_arburst;
  assign ext_arready   = M_AXI_ARREADY;
  
  assign ext_rdata   = M_AXI_RDATA;
  assign ext_rresp   = M_AXI_RRESP;
  assign ext_rlast   = M_AXI_RLAST;
  assign ext_rvalid  = M_AXI_RVALID;
  assign M_AXI_RREADY = ext_rready;
  
  // Internal state and control signals (same as original)
  logic ext_rlast_r;
  logic [1:0] ext_rresp_r;
  logic last_trans;
  logic [7:0] q_burst_size_rd;
  logic [8:0] q_burst_size_rd_1;
  logic [C_M_AXI_ADDR_WIDTH-1:0] q_ext_addr_rd;
  logic [2:0] st_rdaxi, next_st_rdaxi;
  logic [BITS_TRANS-1:0] num_trans_d;
  logic [BITS_TRANS-1:0] data_cnt;
  logic [BITS_TRANS-1:0] d_burst_cnt_rd, q_burst_cnt_rd;
  logic start_dma_d;
  
  // State machine parameters (same as original)
  localparam RD_IDLE = 0, RD_PRE = 1, RD_START = 2, RD_SEQ = 3, RD_WAIT = 4;
  
  // Registers (same logic as original)
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) ext_rlast_r <= 1'b0;
    else         ext_rlast_r <= ext_rlast & ext_rvalid & ext_rready;
  end
  
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) ext_rresp_r <= 2'b0;
    else         ext_rresp_r <= ext_rresp;
  end
  
  // State machine register
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) st_rdaxi <= RD_IDLE;
    else         st_rdaxi <= next_st_rdaxi;
  end
  
  assign ext_rready = i_ready; // Use input ready signal
  
  // Start signal processing
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) start_dma_d <= 1'b0;
    else         start_dma_d <= i_start;
  end
  
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN)      num_trans_d <= '0;
    else if(i_start)  num_trans_d <= num_trans;
  end
  
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) q_burst_cnt_rd <= '0;
    else         q_burst_cnt_rd <= d_burst_cnt_rd;
  end
  
  // Burst size calculation (same logic as original)
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) begin
      q_burst_size_rd <= '0;
      q_burst_size_rd_1 <= '0;
      last_trans <= 1'b0;
    end
    else if(q_burst_cnt_rd + FIXED_BURST_SIZE > num_trans_d) begin
      q_burst_size_rd <= num_trans_d[LOG_BURST_SIZE-1:0] - 1;
      q_burst_size_rd_1 <= num_trans_d[LOG_BURST_SIZE-1:0];
      if(st_rdaxi == RD_SEQ) last_trans <= 1'b1;
      else last_trans <= 1'b0;
    end
    else if(q_burst_cnt_rd + FIXED_BURST_SIZE == num_trans_d) begin
      q_burst_size_rd <= FIXED_BURST_SIZE - 1;
      q_burst_size_rd_1 <= FIXED_BURST_SIZE;
      if(st_rdaxi == RD_SEQ) last_trans <= 1'b1;
      else last_trans <= 1'b0;
    end
    else begin
      q_burst_size_rd <= FIXED_BURST_SIZE - 1;
      q_burst_size_rd_1 <= FIXED_BURST_SIZE;
    end
  end
  
  // Address calculation (same as original)
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN)
      q_ext_addr_rd <= '0;
    else if(i_start)
      q_ext_addr_rd <= i_base_addr;
    else if((st_rdaxi == RD_WAIT) && (next_st_rdaxi == RD_PRE))
      q_ext_addr_rd <= q_ext_addr_rd + {FIXED_BURST_SIZE, 2'b00};
  end
  
  // State machine logic (same as original)
  always_comb begin
    next_st_rdaxi = st_rdaxi;
    d_burst_cnt_rd = q_burst_cnt_rd;
    
    // AXI read addr channel defaults
    ext_araddr = '0;
    ext_arlen = '0;
    ext_arsize = '0;
    ext_arburst = '0;
    ext_arvalid = 1'b0;
    
    case(st_rdaxi)
      default: next_st_rdaxi = RD_IDLE;
      RD_IDLE: begin
        if(start_dma_d)
          next_st_rdaxi = RD_PRE;
      end
      RD_PRE: begin
        if(q_burst_cnt_rd == num_trans_d) begin
          d_burst_cnt_rd = '0;
          next_st_rdaxi = RD_IDLE;
        end
        else next_st_rdaxi = RD_START;
      end
      RD_START: begin
        if(ext_arready) begin
          ext_arvalid = 1'b1;
          ext_araddr = q_ext_addr_rd;
          ext_arlen = q_burst_size_rd;
          ext_arsize = 3'b010; // 4 bytes
          ext_arburst = 2'b01; // INCR
          next_st_rdaxi = RD_SEQ;
        end
      end
      RD_SEQ: begin
        if(ext_rlast_r) begin
          if(ext_rresp_r == 2'b00)
            next_st_rdaxi = RD_WAIT;
          else
            next_st_rdaxi = RD_START;
        end
      end
      RD_WAIT: begin
        d_burst_cnt_rd = q_burst_cnt_rd + q_burst_size_rd_1;
        next_st_rdaxi = RD_PRE;
      end
    endcase
  end
  
  // Data counter
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) 
      data_cnt <= '0;
    else begin
      if(st_rdaxi == RD_START) 
        data_cnt <= q_burst_cnt_rd;
      else if(ext_rvalid) 
        data_cnt <= data_cnt + 1'b1;
    end
  end
  
  // Output assignments
  always_ff @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) begin
      o_data <= '0;
      o_valid <= 1'b0;
      o_done <= 1'b0;
      o_busy <= 1'b0;
      o_error <= 1'b0;
    end
    else begin
      // Data output (same as original)
      o_data <= ext_rdata;
      o_valid <= ext_rvalid;
      
      // Done signal (same as original)
      o_done <= last_trans && ext_rlast && (ext_rresp == 2'b00);
      
      // Busy signal
      o_busy <= (st_rdaxi != RD_IDLE);
      
      // Error signal
      o_error <= ext_rvalid && (ext_rresp != 2'b00);
    end
  end

endmodule
