//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Sun Nov  9 22:39:31 2025
//Host        : DESKTOP-EGRO0RF running 64-bit major release  (build 9200)
//Command     : generate_target sa_engine_ip_v1_0_bfm_1_wrapper.bd
//Design      : sa_engine_ip_v1_0_bfm_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module sa_engine_ip_v1_0_bfm_1_wrapper
   (ACLK,
    ARESETN);
  input ACLK;
  input ARESETN;

  wire ACLK;
  wire ARESETN;

  sa_engine_ip_v1_0_bfm_1 sa_engine_ip_v1_0_bfm_1_i
       (.ACLK(ACLK),
        .ARESETN(ARESETN));
endmodule
