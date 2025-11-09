// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Oct 10 16:01:43 2025
// Host        : BOOK-Q06N8541RB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_auto_pc_0 -prefix
//               design_1_auto_pc_0_ design_1_auto_pc_0_sim_netlist.v
// Design      : design_1_auto_pc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_auto_pc_0_axi_data_fifo_v2_1_24_axic_fifo
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  design_1_auto_pc_0_axi_data_fifo_v2_1_24_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module design_1_auto_pc_0_axi_data_fifo_v2_1_24_fifo_gen
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire full;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [4:4]NLW_fifo_gen_inst_dout_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h22722272FFFF2272)) 
    S_AXI_AREADY_I_i_2
       (.I0(E),
        .I1(s_axi_awvalid),
        .I2(m_axi_awready),
        .I3(S_AXI_AREADY_I_i_3_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    S_AXI_AREADY_I_i_3
       (.I0(m_axi_awvalid_0),
        .I1(full),
        .I2(command_ongoing),
        .O(S_AXI_AREADY_I_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00888A88)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_awvalid_0),
        .I2(full),
        .I3(command_ongoing),
        .I4(m_axi_awready),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'hF222FFFFD000D000)) 
    command_ongoing_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(E),
        .I3(s_axi_awvalid),
        .I4(command_ongoing_i_2_n_0),
        .I5(command_ongoing),
        .O(\areset_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    command_ongoing_i_2
       (.I0(m_axi_awready),
        .I1(command_ongoing),
        .I2(full),
        .I3(m_axi_awvalid_0),
        .O(command_ongoing_i_2_n_0));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "5" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_auto_pc_0_fifo_generator_v13_2_6 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({1'b0,m_axi_awlen}),
        .dout({NLW_fifo_gen_inst_dout_UNCONNECTED[4],dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_1
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(cmd_push));
  LUT6 #(
    .INIT(64'hE4E4CC664E4ECC66)) 
    \length_counter_1[1]_i_1 
       (.I0(empty_fwft_i_reg),
        .I1(length_counter_1_reg[1]),
        .I2(dout[1]),
        .I3(length_counter_1_reg[0]),
        .I4(first_mi_word),
        .I5(dout[0]),
        .O(length_counter_1_reg_1_sn_1));
  LUT3 #(
    .INIT(8'hA2)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_wready_INST_0
       (.I0(empty),
        .I1(s_axi_wvalid),
        .I2(m_axi_wready),
        .O(empty_fwft_i_reg));
endmodule

module design_1_auto_pc_0_axi_protocol_converter_v2_1_25_a_axi3_conv
   (dout,
    empty,
    SR,
    m_axi_awlen,
    m_axi_awlock,
    E,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_awaddr,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    aclk,
    rd_en,
    s_axi_awlock,
    aresetn,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output [3:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [0:0]E;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input aclk;
  input rd_en;
  input [0:0]s_axi_awlock;
  input aresetn;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input s_axi_awvalid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;

  wire [0:0]E;
  wire [0:0]SR;
  wire \USE_BURSTS.cmd_queue_n_11 ;
  wire \USE_BURSTS.cmd_queue_n_12 ;
  wire \USE_BURSTS.cmd_queue_n_6 ;
  wire aclk;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block_reg_n_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[0]),
        .Q(m_axi_awaddr[0]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[10]),
        .Q(m_axi_awaddr[10]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[11]),
        .Q(m_axi_awaddr[11]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[12]),
        .Q(m_axi_awaddr[12]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[13]),
        .Q(m_axi_awaddr[13]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[14]),
        .Q(m_axi_awaddr[14]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(m_axi_awaddr[15]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(m_axi_awaddr[16]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(m_axi_awaddr[17]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(m_axi_awaddr[18]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(m_axi_awaddr[19]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[1]),
        .Q(m_axi_awaddr[1]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(m_axi_awaddr[20]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(m_axi_awaddr[21]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(m_axi_awaddr[22]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(m_axi_awaddr[23]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(m_axi_awaddr[24]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(m_axi_awaddr[25]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(m_axi_awaddr[26]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(m_axi_awaddr[27]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(m_axi_awaddr[28]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(m_axi_awaddr[29]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[2]),
        .Q(m_axi_awaddr[2]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(m_axi_awaddr[30]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(m_axi_awaddr[31]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[3]),
        .Q(m_axi_awaddr[3]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[4]),
        .Q(m_axi_awaddr[4]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[5]),
        .Q(m_axi_awaddr[5]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[6]),
        .Q(m_axi_awaddr[6]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[7]),
        .Q(m_axi_awaddr[7]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[8]),
        .Q(m_axi_awaddr[8]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[9]),
        .Q(m_axi_awaddr[9]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[0]),
        .Q(m_axi_awburst[0]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[1]),
        .Q(m_axi_awburst[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[0]),
        .Q(m_axi_awlen[0]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[1]),
        .Q(m_axi_awlen[1]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[2]),
        .Q(m_axi_awlen[2]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[3]),
        .Q(m_axi_awlen[3]),
        .R(SR));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlock),
        .Q(m_axi_awlock),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_11 ),
        .Q(E),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[0]),
        .Q(m_axi_awsize[0]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[1]),
        .Q(m_axi_awsize[1]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(m_axi_awsize[2]),
        .R(SR));
  design_1_auto_pc_0_axi_data_fifo_v2_1_24_axic_fifo \USE_BURSTS.cmd_queue 
       (.E(E),
        .Q(areset_d),
        .SR(SR),
        .S_AXI_AREADY_I_reg(\USE_BURSTS.cmd_queue_n_11 ),
        .aclk(aclk),
        .\areset_d_reg[1] (\USE_BURSTS.cmd_queue_n_12 ),
        .aresetn(aresetn),
        .aresetn_0(\USE_BURSTS.cmd_queue_n_6 ),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(cmd_push_block_reg_n_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_6 ),
        .Q(cmd_push_block_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_12 ),
        .Q(command_ongoing),
        .R(SR));
endmodule

module design_1_auto_pc_0_axi_protocol_converter_v2_1_25_axi3_conv
   (m_axi_awlen,
    m_axi_awaddr,
    E,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_wlast,
    aresetn,
    m_axi_awready,
    aclk,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_awvalid);
  output [3:0]m_axi_awlen;
  output [31:0]m_axi_awaddr;
  output [0:0]E;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output m_axi_wlast;
  input aresetn;
  input m_axi_awready;
  input aclk;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input m_axi_wready;
  input s_axi_wvalid;
  input s_axi_awvalid;

  wire [0:0]E;
  wire \USE_BURSTS.cmd_queue/inst/empty ;
  wire [3:0]\USE_WRITE.wr_cmd_length ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_13 ;
  wire \USE_WRITE.write_addr_inst_n_5 ;
  wire aclk;
  wire aresetn;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  design_1_auto_pc_0_axi_protocol_converter_v2_1_25_a_axi3_conv \USE_WRITE.write_addr_inst 
       (.E(E),
        .SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(\USE_WRITE.write_addr_inst_n_13 ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  design_1_auto_pc_0_axi_protocol_converter_v2_1_25_w_axi3_conv \USE_WRITE.write_data_inst 
       (.SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .first_mi_word(first_mi_word),
        .\length_counter_1_reg[1]_0 (length_counter_1_reg),
        .\length_counter_1_reg[1]_1 (\USE_WRITE.write_addr_inst_n_13 ),
        .\length_counter_1_reg[2]_0 (empty_fwft_i_reg),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b010" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module design_1_auto_pc_0_axi_protocol_converter_v2_1_25_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire m_axi_arready;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31:0] = s_axi_araddr;
  assign m_axi_arburst[1:0] = s_axi_arburst;
  assign m_axi_arcache[3:0] = s_axi_arcache;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[3:0] = s_axi_arlen[3:0];
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = s_axi_arlock;
  assign m_axi_arprot[2:0] = s_axi_arprot;
  assign m_axi_arqos[3:0] = s_axi_arqos;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2:0] = s_axi_arsize;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = s_axi_arvalid;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[31:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wstrb[3:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = m_axi_arready;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[31:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = m_axi_rlast;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = m_axi_rvalid;
  GND GND
       (.G(\<const0> ));
  design_1_auto_pc_0_axi_protocol_converter_v2_1_25_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.E(s_axi_awready),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty_fwft_i_reg(s_axi_wready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(\^m_axi_awlock ),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module design_1_auto_pc_0_axi_protocol_converter_v2_1_25_w_axi3_conv
   (\length_counter_1_reg[1]_0 ,
    first_mi_word,
    rd_en,
    m_axi_wlast,
    SR,
    aclk,
    \length_counter_1_reg[1]_1 ,
    \length_counter_1_reg[2]_0 ,
    m_axi_wready,
    s_axi_wvalid,
    empty,
    dout);
  output [1:0]\length_counter_1_reg[1]_0 ;
  output first_mi_word;
  output rd_en;
  output m_axi_wlast;
  input [0:0]SR;
  input aclk;
  input \length_counter_1_reg[1]_1 ;
  input \length_counter_1_reg[2]_0 ;
  input m_axi_wready;
  input s_axi_wvalid;
  input empty;
  input [3:0]dout;

  wire [0:0]SR;
  wire aclk;
  wire [3:0]dout;
  wire empty;
  wire first_mi_word;
  wire first_mi_word_i_1_n_0;
  wire \length_counter_1[0]_i_1_n_0 ;
  wire \length_counter_1[2]_i_1_n_0 ;
  wire \length_counter_1[3]_i_1_n_0 ;
  wire \length_counter_1[4]_i_1_n_0 ;
  wire \length_counter_1[4]_i_2_n_0 ;
  wire \length_counter_1[5]_i_1_n_0 ;
  wire \length_counter_1[6]_i_1_n_0 ;
  wire \length_counter_1[7]_i_1_n_0 ;
  wire [7:2]length_counter_1_reg;
  wire [1:0]\length_counter_1_reg[1]_0 ;
  wire \length_counter_1_reg[1]_1 ;
  wire \length_counter_1_reg[2]_0 ;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire m_axi_wlast_INST_0_i_3_n_0;
  wire m_axi_wready;
  wire rd_en;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h0000CC000000CC04)) 
    fifo_gen_inst_i_2
       (.I0(length_counter_1_reg[7]),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[5]),
        .I3(first_mi_word),
        .I4(m_axi_wlast_INST_0_i_1_n_0),
        .I5(length_counter_1_reg[6]),
        .O(rd_en));
  LUT6 #(
    .INIT(64'h0F0FFFFF00010000)) 
    first_mi_word_i_1
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(length_counter_1_reg[6]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(first_mi_word),
        .O(first_mi_word_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    first_mi_word_reg
       (.C(aclk),
        .CE(1'b1),
        .D(first_mi_word_i_1_n_0),
        .Q(first_mi_word),
        .S(SR));
  LUT6 #(
    .INIT(64'hF2FFFFFF07000000)) 
    \length_counter_1[0]_i_1 
       (.I0(first_mi_word),
        .I1(dout[0]),
        .I2(empty),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .I5(\length_counter_1_reg[1]_0 [0]),
        .O(\length_counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \length_counter_1[2]_i_1 
       (.I0(\length_counter_1_reg[2]_0 ),
        .I1(m_axi_wlast_INST_0_i_3_n_0),
        .I2(length_counter_1_reg[2]),
        .I3(first_mi_word),
        .I4(dout[2]),
        .O(\length_counter_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8B474B4)) 
    \length_counter_1[3]_i_1 
       (.I0(\length_counter_1[4]_i_2_n_0 ),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[3]),
        .I3(first_mi_word),
        .I4(dout[3]),
        .O(\length_counter_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A3A35AAAAAAAA)) 
    \length_counter_1[4]_i_1 
       (.I0(length_counter_1_reg[4]),
        .I1(dout[3]),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[3]),
        .I4(\length_counter_1[4]_i_2_n_0 ),
        .I5(\length_counter_1_reg[2]_0 ),
        .O(\length_counter_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \length_counter_1[4]_i_2 
       (.I0(m_axi_wlast_INST_0_i_3_n_0),
        .I1(length_counter_1_reg[2]),
        .I2(first_mi_word),
        .I3(dout[2]),
        .O(\length_counter_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0000FFF70808)) 
    \length_counter_1[5]_i_1 
       (.I0(m_axi_wready),
        .I1(s_axi_wvalid),
        .I2(empty),
        .I3(first_mi_word),
        .I4(length_counter_1_reg[5]),
        .I5(m_axi_wlast_INST_0_i_1_n_0),
        .O(\length_counter_1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3EFF0D00)) 
    \length_counter_1[6]_i_1 
       (.I0(length_counter_1_reg[5]),
        .I1(first_mi_word),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(\length_counter_1_reg[2]_0 ),
        .I4(length_counter_1_reg[6]),
        .O(\length_counter_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3EFFFF30310000)) 
    \length_counter_1[7]_i_1 
       (.I0(length_counter_1_reg[6]),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[5]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(length_counter_1_reg[7]),
        .O(\length_counter_1[7]_i_1_n_0 ));
  FDRE \length_counter_1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[0]_i_1_n_0 ),
        .Q(\length_counter_1_reg[1]_0 [0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1_reg[1]_1 ),
        .Q(\length_counter_1_reg[1]_0 [1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[2]_i_1_n_0 ),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[3]_i_1_n_0 ),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[4]_i_1_n_0 ),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[5]_i_1_n_0 ),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[6]_i_1_n_0 ),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[7]_i_1_n_0 ),
        .Q(length_counter_1_reg[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F000F1)) 
    m_axi_wlast_INST_0
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(first_mi_word),
        .I3(m_axi_wlast_INST_0_i_1_n_0),
        .I4(length_counter_1_reg[6]),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'hFFFFFFFEFCFCFFFE)) 
    m_axi_wlast_INST_0_i_1
       (.I0(length_counter_1_reg[4]),
        .I1(m_axi_wlast_INST_0_i_2_n_0),
        .I2(m_axi_wlast_INST_0_i_3_n_0),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_2
       (.I0(dout[3]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[3]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    m_axi_wlast_INST_0_i_3
       (.I0(\length_counter_1_reg[1]_0 [1]),
        .I1(dout[1]),
        .I2(\length_counter_1_reg[1]_0 [0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(m_axi_wlast_INST_0_i_3_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_auto_pc_0,axi_protocol_converter_v2_1_25_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_25_axi_protocol_converter,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_auto_pc_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "0" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_auto_pc_0_axi_protocol_converter_v2_1_25_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock({NLW_inst_m_axi_awlock_UNCONNECTED[1],\^m_axi_awlock }),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,s_axi_arlen[3:0]}),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_pc_0_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYvhEjj3nb5oH8uSNLeXMIy7nJYVR9CgwYrS2YsK1wH0yG7GgJF3h7LWVAsRpUASOB7rHmuPVhb5
Ot5CFu1eFeE97Zpvi2xwlrFd2yOm/xOs4mKX3gkTIBIJmAKj42AUYk/LR9j6mOwXFIQmoZqYXHak
Pq2yC2ljr0hY1gwTFtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+2GQWpqmewONlHVkL658DHQ1gOkrvPjxsrm0NDcBmt2DgE1WctRC0/WtmZNRR2P9xNPEc1AnD3g
x2bmQ9ClncBm4tJJUerktYV7SZWaAFXLpL0mImalEctnoiL1emAUpqT2xWqYmc7/Up4fedi3U63/
6fZpFkfLPe1f/3mRlu+DKs00gVRP+t6V+01C1oWFsyvdyS5tDx/D7YWjpI8AZn7PAxGanwdNWWSB
/kAFPcC2bUzb0T91+nSe2x7K7ugumFrWpHW6iiuiY86OlLeqrAD5SZsqHhPT9GqJmSzj5PdAcMm2
1N7wj661ojPTxlfvw7ydkwisxeQEZRQ1H8LwwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NWkv++1uc4OUvmLLmKamw2rSfdpVbwBET7oFkV2XGR6y3sZCnAwLR/UY8EXqGYSYtRzQMSec4n13
l7DB/8txjOrwXvZKfRBpPdz4pIT7HDh50CC1gJaraDaEr18dxcLyq6t0fo14o+JyrAxZm7/nDg78
7/uEhQnwCkDeOEnusng=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPz1UvQF5/1bAGbmkE93ADh5aKEj2NdkJKJJhSjosDEbYcFH8ZSL5Ew53E1CBLn7KjAnpfOLAKVf
fX9beeVP5C5vU0n7ZMu9ISDuX947ttq4eCcbaV78UxB5l1Lj8hlouzML1BQecqW1z0mUCgW7CBoO
kvS93cLpph/VpfSwuTwO3q41V7Gxeshrw2U3zfZGHMUL2TI8fX+U+qCt5oG7UGDkIiE+SZRN8eQK
SY18ZEkuzeSrAbp1xn25WHjeUYF1dwHmcNf4wRKiww67b89Lqk9DBKAL9rsw0KWuua8qjESM8t3w
D+f6RYj2AciBO842MNa2LlXNkWM+oLq1CtukmQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcQzkZp4Sch9TwvI82NYHoYu7Fu4A68g8HQ0GQQvhgP0VPOA5fVtIXlGeuCjshtvB9SbR/JdhJVW
H0AcjAKKgHxZK+en5z2azbfr9d1BbF03MjLpFIxdwUacvQfXpyvYKYFtjplThociLLWtOUmXj84s
4nP0l8PXdvTblIHap6SfZL6Dhv1jlcCTvUTUGoULVvQRU16E+vFCep9sJnLwhCCldBnB5vBZ5TCu
AXnNJpF2Gx4Y+BC9c7XyNRkVfKm11TUyI3pc5OcNWX+42CRvLbMSKG711f5VO+yZsWi9YEWqMTjN
RN18y3FwbJ9g/6K9ZswbGNgjRnn7l2PRbFrMKg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ic0gE1G8ZymuhdpWjbURYCva14oPCOYHWxeY1WbqEo4fRdhM6YimsmNp3RyJRpeG6TFY0iDQtGg1
f5g5G1LTD2KIG+dBZyfKNnTE/ZOWrLJOblPxV8gmBtOye+53NJXzi8+oEuZceCLJxPBg1t44/kD6
M9x687RC58J0HT1/+RsMdCvAGIhlkdNOkb4+dhOoGEPVtNJhV6u4ccNdcnLz1ZaIW6yGByR8UXna
8XH9yb/yWXZzxveULhlxfYe5edpqYlF99QdUnueTFFmCXxIYP4G0xwFM1S929iLWZUS13jbam+X4
5SLDsqw5epDM/DVK5Cv0VD4JajhRoM+fGT/I4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W34Gq4IReWdH4guFD03wBoHFTA+s1wgkA3uEFz/xWEihtgcet7BzSoGE0K8FQKLVs+D+mR8yPD8Z
vuUkN7L+imyxs7FeoUUpCBNbo0z5XahETBApULQzISBGdsC2f/p8wwDdoHY5E0UjcHOTr+Pah6x+
Kb/OiJAA3/B3geutymFuXHhdGJVoLS30F7CpbZpHTVoZZBU1TgUTFXAySsVWu7k+NMAoSxDKr4k3
10DyqW8wuvTaTG+NdumVzlwtmHHXVSiGk0//Q/9EJmzEzH0Pi9m/wmiONCYRmb0c/K5YHCIs7xNF
nWpl/fzOUJQequCzR636PCmQz3/wSjGRil3HDQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iEsUxC8JQZnRxQOm+O4jwBmkm5PoeeMBxaBqVOvKpTXSyjvbLGMDYSb0fxpNvdSJbtZpFIPnAww+
aq3rl7doHEf1kjM2dC4rjvZWa0jWRoJIANcbomcPl6IeiRfAUGCGIDrNDxK+Y3GNvZf2de79ApcB
dTaCVwgrbloNzIJwiJkRY1og57CtPhYfZGFMkwwQ1yHtCyOiuh1DFTM1HOr7jtC54Rj43wY2EpJp
V8vuUqRPQXW8kinGG+26i34AsoOI/xAYSbvXdBHrgwQSzEVIApd8q+QxH+P/twlQ/rFGh9QkEtsf
01rrVJSI2TzVwOQBjP9yRmeHw8y91krSW2dGHHjOd+HVO8Mpbdh4nOvQiYQjNK1lqwInPGOH2bM6
kuUfNcfP9+0NlRUDVuuhbzPVr++hGny3Hvo5Aq7bQqtKrYhqiaLWIWoY6mFPGyfIoZrbVClEO/oY
G2CKj5JTQTRFxNUtusbqdXg+69YwdnuXoF9oFfaVJwpFYlKtWBm5LeRv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YKagekiHOyMnMVPg7PmagWsOMo70GABOzboT0+MRxNHoWf+7KtPwFZmbZAZPMjbv2wgx5vSsG1VZ
GZlduGJPTey/Q2+Yx2fvgCJb2dlR/HDmPB+1X4vVosJEw5nD6m8yWJd0L+NZCG6gtRelGjAxjm68
yPC9qOiRc6jrOM91cmFC6Xi2jeY4t5FHi4zmBceasIzRWIBnat7p0fZ3CZaaY76+K02CE2jND22R
W0XlRGoYVtWNukn5s4Z4AkME8oKdQugjp9rNooVbn7sWp5td9RHT1ZxOWgINwiHb6D9MOnsOSGwz
2K1jXhGDdXe4TOnFPIn6VglS5Y05u1snfUxFlA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70000)
`pragma protect data_block
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
QkwVJg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
