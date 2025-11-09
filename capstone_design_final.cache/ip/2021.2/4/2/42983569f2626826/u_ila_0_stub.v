// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Nov  9 19:12:26 2025
// Host        : DESKTOP-EGRO0RF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ u_ila_0_stub.v
// Design      : u_ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[31:0],probe2[3:0],probe3[6:0],probe4[10:0],probe5[31:0],probe6[31:0],probe7[10:0],probe8[6:0],probe9[3:0],probe10[0:0],probe11[0:0],probe12[0:0]" */;
  input clk;
  input [31:0]probe0;
  input [31:0]probe1;
  input [3:0]probe2;
  input [6:0]probe3;
  input [10:0]probe4;
  input [31:0]probe5;
  input [31:0]probe6;
  input [10:0]probe7;
  input [6:0]probe8;
  input [3:0]probe9;
  input [0:0]probe10;
  input [0:0]probe11;
  input [0:0]probe12;
endmodule
