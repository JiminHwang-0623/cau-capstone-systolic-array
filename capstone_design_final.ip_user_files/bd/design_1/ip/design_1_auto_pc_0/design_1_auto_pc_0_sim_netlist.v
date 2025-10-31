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
tW62XA==
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
