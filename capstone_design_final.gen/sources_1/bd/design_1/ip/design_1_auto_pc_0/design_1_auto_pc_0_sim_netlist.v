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
oOvEjg==
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
