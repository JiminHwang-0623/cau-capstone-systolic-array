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
hZFm5w==
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
