`timescale 1ns/1ps
module dma_write #(
  parameter int C_M_AXI_ID_WIDTH     = 1,
  parameter int C_M_AXI_ADDR_WIDTH   = 32,
  parameter int C_M_AXI_DATA_WIDTH   = 32,
  parameter int C_M_AXI_AWUSER_WIDTH = 0,
  parameter int C_M_AXI_WUSER_WIDTH  = 0,
  parameter int C_M_AXI_BUSER_WIDTH  = 0
)(
  input  logic                        ACLK,
  input  logic                        ARESETN,
  input  logic                        i_start,
  input  logic [31:0]                 i_base_addr,
  input  logic [31:0]                 i_byte_len,
  output logic                        o_busy,
  output logic                        o_done,
  output logic                        o_error,
  input  logic [C_M_AXI_DATA_WIDTH-1:0] i_data,
  input  logic                           i_valid,
  output logic                           o_ready,
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
  // stub defaults
  assign M_AXI_AWID='0; assign M_AXI_AWADDR='0; assign M_AXI_AWLEN=8'd0;
  assign M_AXI_AWSIZE=3'd0; assign M_AXI_AWBURST=2'b01; assign M_AXI_AWLOCK=1'b0;
  assign M_AXI_AWCACHE=4'b0010; assign M_AXI_AWPROT=3'b000; assign M_AXI_AWQOS=4'b0;
  assign M_AXI_AWUSER='0; assign M_AXI_AWVALID=1'b0;
  assign M_AXI_WDATA='0; assign M_AXI_WSTRB={(C_M_AXI_DATA_WIDTH/8){1'b0}};
  assign M_AXI_WLAST=1'b0; assign M_AXI_WUSER='0; assign M_AXI_WVALID=1'b0;
  assign M_AXI_BREADY=1'b1;

  logic sd, sp;
  always_ff @(posedge ACLK) begin
    if(!ARESETN) begin sd<=0; sp<=0; end else begin sp<= i_start & ~sd; sd<=i_start; end
  end

  typedef enum logic[1:0]{W_IDLE,W_BUSY,W_DONE} wstate_t; wstate_t ws;
  always_ff @(posedge ACLK) begin
    if(!ARESETN) begin ws<=W_IDLE; o_busy<=0; o_done<=0; o_error<=0; o_ready<=0; end
    else begin
      o_done<=0;
      unique case(ws)
        W_IDLE: begin o_busy<=0; o_ready<=0; if(sp) begin ws<=W_BUSY; o_busy<=1; o_ready<=1; end end
        W_BUSY: begin if(i_valid) begin o_ready<=0; o_busy<=0; o_done<=1; ws<=W_DONE; end end
        W_DONE: ws<=W_IDLE;
      endcase
    end
  end
endmodule
