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
RJ1hSw==
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
