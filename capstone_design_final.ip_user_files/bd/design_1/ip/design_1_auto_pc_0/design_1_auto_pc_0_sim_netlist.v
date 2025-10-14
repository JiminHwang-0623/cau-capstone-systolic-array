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
gKoHeA==
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
