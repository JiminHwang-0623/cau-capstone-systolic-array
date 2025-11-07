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
xtnJlA==
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
