// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Oct 10 16:01:43 2025
// Host        : BOOK-Q06N8541RB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_auto_pc_0_sim_netlist.v
// Design      : design_1_auto_pc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_24_axic_fifo
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_24_fifo_gen inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_24_fifo_gen
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_6 fifo_gen_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_25_a_axi3_conv
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_24_axic_fifo \USE_BURSTS.cmd_queue 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_25_axi3_conv
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_25_a_axi3_conv \USE_WRITE.write_addr_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_25_w_axi3_conv \USE_WRITE.write_data_inst 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_25_axi_protocol_converter
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_25_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_25_w_axi3_conv
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_25_axi_protocol_converter inst
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70640)
`pragma protect data_block
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
WtufBf8vh01D1y3a7r1blrs=
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
