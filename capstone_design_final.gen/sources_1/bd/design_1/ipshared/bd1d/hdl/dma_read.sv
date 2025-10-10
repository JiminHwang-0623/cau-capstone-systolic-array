`timescale 1ns/1ps
module dma_read #(
  parameter int C_M_AXI_ID_WIDTH     = 1,
  parameter int C_M_AXI_ADDR_WIDTH   = 32,
  parameter int C_M_AXI_DATA_WIDTH   = 32,
  parameter int C_M_AXI_ARUSER_WIDTH = 0,
  parameter int C_M_AXI_RUSER_WIDTH  = 0
)(
  input  logic                        ACLK,
  input  logic                        ARESETN,
  input  logic                        i_start,
  input  logic [31:0]                 i_base_addr,
  input  logic [31:0]                 i_byte_len,
  output logic                        o_busy,
  output logic                        o_done,
  output logic                        o_error,
  output logic [C_M_AXI_DATA_WIDTH-1:0] o_data,
  output logic                          o_valid,
  input  logic                          i_ready,
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
  // stub defaults
  assign M_AXI_ARID='0; assign M_AXI_ARADDR='0; assign M_AXI_ARLEN=8'd0;
  assign M_AXI_ARSIZE=3'd0; assign M_AXI_ARBURST=2'b01; assign M_AXI_ARLOCK=1'b0;
  assign M_AXI_ARCACHE=4'b0010; assign M_AXI_ARPROT=3'b000; assign M_AXI_ARQOS=4'b0;
  assign M_AXI_ARUSER='0; assign M_AXI_ARVALID=1'b0; assign M_AXI_RREADY=1'b1;

  logic sd, sp;
  always_ff @(posedge ACLK) begin
    if(!ARESETN) begin sd<=0; sp<=0; end else begin sp<= i_start & ~sd; sd<=i_start; end
  end

  typedef enum logic[1:0]{R_IDLE,R_BUSY,R_DONE} rstate_t; rstate_t rs;
  always_ff @(posedge ACLK) begin
    if(!ARESETN) begin rs<=R_IDLE; o_busy<=0; o_done<=0; o_error<=0; o_valid<=0; o_data<='0; end
    else begin
      o_done<=0;
      unique case(rs)
        R_IDLE: begin o_busy<=0; o_valid<=0; if(sp) begin rs<=R_BUSY; o_busy<=1; end end
        R_BUSY: begin o_valid<=1; o_data<='0; if(i_ready) begin o_valid<=0; o_busy<=0; o_done<=1; rs<=R_DONE; end end
        R_DONE: rs<=R_IDLE;
      endcase
    end
  end
endmodule
