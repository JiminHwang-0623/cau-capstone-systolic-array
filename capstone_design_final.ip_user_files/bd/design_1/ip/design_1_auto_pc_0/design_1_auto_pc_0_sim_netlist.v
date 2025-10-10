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
qLyEO6ifJ3nt0XplMmOL6J+4KjgOBYFAJBEMb+GWVxfqadgZjvor3DB812WgOnfurFYk58EVRxUL
hJ1TAwe04Qxjv0+sjsUuaY1RUKC4fMoIPpekENJHiFfqEEWxLqtaHUUsPlODhvDqpusHijqPzwt0
Jmx4wk5y8b/nttmnTb3vwbsibrm0I5ZumO+YtV5UM0M74BJQkpjQjKQuWWtUKu1dulo3JNhVxt7m
Tryom9d3H+tHdSOrc6pcxMD0BKlc1oOrb1WmaDfWr99COGIK+hO3E7cAyeCyE8VRWCGWT9pzL/iG
dEN7UbErG9H239r4jV+r/7DbHVQWRw19N9TRLTfQtPsqh2yK0xDkUwNYfR8hLJyu/e2NXrnTjabp
KpfiRYWZqjzpLATHKQc1O+WaHoS+DH0LpW47nwTbwx44Z6mJPJra4j7QBB05jaMLZ8Nio18ELb9r
RJBPlEPGZfie52JzM5k5Xxo9OHhNi1wIJZUZ9CmzAhJOWkzvSgJDW3gUFikTZkPN3LPWLwOZMr/+
tfdWC3H/Ewz2Jy+eFnlEVEEW55FzkqAd7jjjj6a3rxZMGIZxpoeuvCSIJt4p4Hn8Blb/FO8/iofi
WSIpoMkD6SeBWOwYYJ2Y5XSPd9obaWIh/ueiB8MaN+iiyrZSfbpuXcXfg378/s3Rw4wdKtnmWIGC
xaWLe6U+1NRAtqcLQ2tSQhIFPmleoaohAL5mTBWInqPnfN2Ewe3qz8n+p74jL7EhYx/OrPujZwt8
IdDUks7nCI2qpI/nB2uPb64L8lds0ilgp/4bKzjpQ/2cN3WgzLBFt0XHZqYEhX6LzLuxV2scvqni
2pcsdvSTbYvSxrwnkM+uD45lTwBUFFPHqmGYFkbS+q1IV6987vSIwLz50HRXVFqk0ppEMFk0jTNG
gx9eVGM/KYvWSW8rhI10piwpUGRXSvkaHJbgej5Ysn4uLzPgj4FvPpyKCmxtOPNA+vDLV9jbk3tG
cvHImH+MInR7jXjfxSqu8nljk2Z6n5kZ7k62ERMq7ltpsEpgOc9IwUbwCvCWcrhGrAG3DqvsTz4z
Sq/t1tLrAe+csd60YenI3MpwjJwp/SYR5Au+cWctJiUQOa/Ixb8aGJG93+GBBcsHzVwMvD0/fhUM
UDvGukabCfECKksY3JVT8UetHN2v1wY3aZ+7zg2qVOvT8cSWLMhuJFWZyUkck6oonTdfr1kWgbIZ
TK36Hl1/1MroHo/0Q4EDW7uN8JN40uCHpDjdnPF9lfPjK/b7e3xn+qNuWRYWp3hH4sLqeXE9dAI5
6QEQU+6rA8dBKnJ7ypg+v26CNRPzadQNwBqP/drohagn02GIlOTPZ5XXQaPrvdYyGF1DNVcSdcZW
JQUTqdfr2yjZn3d0AFqEG5zO5QO0oBm4tb6268ZovtNX/PrsMdtiXuYCXxiKOvpnSwCZDJ9+wZ2h
59kmIW4CHcdTwbFlQFZkqUm0QgPReHqF6+ElsyLPzdZMovvbm/6JHnpnEa294GiqCf2ZdNa+a38D
A0DQuqVn+BAtnow5Vg2cUqUtgEW9tq+G7ZOb0Mp83f2gb+uTLo8enImuofrDk5rjPggg82nc8ovn
/zaliI/xVDMTIjBMCllZxHqngpYjnnRatnlmQG/L8Wf6AQiHCvNPFtvVcu4okp5Pj2cw/IEUhKvI
l5t4+TTDr0+FJvwIYfnYr/IPAyUzPmxl0kvfUaVH23QFFj/ApSaz+3Ge0Pte74/hgaKaln+TFJ75
AkVViCW0UfjNTipyCucwEWT3u2GzfnLSA3DxjcV5Ywh21vCv2JkrShLLTy/4xEGbDSdLYPC4NX2b
fQRnAcRlTOz/E2RYJmVmBvkgYW60aYNiDNfopb2ow/D/0eIa1mXEGR/JGq1xTHv+Hkinsn52WCi6
S4hsd1TXEceE8XXFStVlAM/k3hS82NiZRBat47cfao6bNcmekiIyPKrC64Y8EemS8BAq5pjLKhGe
MImorwrzHe49PXa1rD+dYS/rjkU5vUWcZ056R8UbzoTAwiMvO6xPLc7k8fQLYlNNvgE/r/78ATmV
89WmENsBbdCz+hGyul9B1OZAyxnJ7MrrzOZvBX5GUUjoQnIUUMTyGFlpz/eTpyBb1HR0mh4l61+g
Ldp7oERbZ5KdmF761+hUTu9yBzUJaYqSkbS8od88yTATYIaykbJqDtLMcTOJcJuOJLLZPl7x7yJB
En2Of4xAsgMTOOANCDEaZlPLBbeKjNY/HQFbj+CHkz4LNLcMDw3rZuCONbrmOCCB21z/Sn/jj6tD
sF6wgEHXzHHPVz4+N4hyWFFJPSzauOxS8h1Nb/VDc4sV6CBM+vTJ5+iJZ/KYpaZ4+o2eYuM/1tGq
kO5D52hkpiJ5hdunlPRF+UySKfUTWQWQs0qLuNFhf4DPc92rEZGCqH5Sy6BdbjoeOQrn/xKwHpqy
1nHVDGVdNxN2f6N+dnTtJODPo4r0XhCT8ATyBSxja6P60COkTS7HfP05PcsZhI2fsmTOsUNaAtS9
gY5QgPaw8bSbXI//KkgsjNTPfqiReaef0inpLyv0HH2r8KQCkSE4SA8pMEvsnINQXXYwc1it/fJG
jX6AxPH04GgJrRy6laiyhqwfHybwSyoNg1FQEtsQoTVrGikOZiMHawrvjU30ccqzTzWfY7AZr9rp
oJlIi+RJjOGq0wk6lOlmiG/mw6JVYU+dnmtXQVUmQ5W1df7Nlf+WdDIUCwQdQy3N+VJEV8B3rMxM
5pOhC0XA2xH8rmDyQKO2ZK/jMNTNefk8w92rwlEYTD7BnLB3j3LviC916JADdJ1TYF0SeAQoiQ+T
5TqDL0P5v64VVZsC6mwWgZr3m6zskDx+N46zDOfL3SMDz5WC1BqX8NRXqdIy51CP0/8cjoRZBCcz
a4ELT5HE29zIMVdq/1/LwHBm/u5UY2cvBHq3gCtDmWnYDN/q5bC6WnnxSTj2Qwnu9RZxrTFP18Uf
eD6kaOPAao804TIgE4tL8SBx99A+mO70gbXpqsRYDJlbxTweCdEYbuX9xl+7SDtBbeeRo5pnttJH
7FytPcJKhT6JlgPXXlZ2a0JenKcKtgRV4cUbGFOxWSo5IdKSxoBedgpRM8hW4koQEzc8kO01hyiO
kfsSO/CM8wsYWSYdNTx/CFZlfyAbq+87szNly+c8maI8le9ZIupB9Xl6AxYEV1TzeOtadAU2Y5g6
kYKWqqSTGNG0iXFF4zgoCGOEmhStsEeua6SUfav78GZTKznxPWuFSVrL5iiVO0j/qOt3cQOAR55+
VWirrjgU7iMCle+HkOx2+EJyYFAAVFw8sfSRioiUjFlG/rVKVE5ZehVK99N3F7YzzdFrNmH1DVJD
CimBpmKNftwkGfVximyE1DKuuFYtPED++SgyIdgpJugI+XQDcP1K62mGM9bdWbHCjEifwAz/ILqb
7/2kSKnoTO5/OtIcVoUd7zUfSEcn0u9vDCgN+68HZohT85VTiKsBTGvgmt6kfX2J8prNOt3703RE
RuqObgEozgrpUaB9jo5U24biGITDCu/fiGvgvqRJ01h/7QMbQ+iECoiPJ4Vccv7KLujWVT5l2Aop
4DiSc0DhvyDyrKL998uNHd0BBc/EquzMc4aJEax6PyYeRN+scPPmWEGzO77gEEysyqdu2ySw4YcS
/uyHy31aw11UkXq61aleZFVrt+wVMfPt91EutBvqDrwtyd/ZAQ0USY3ZtZ615mb7Y9MCMZt7zd5M
sLeVygwkwcS9vUIaZRHg90bM7cc2kEMzHVFr4BSPdH/xoOG2kupRDv/M248MaGh2V0/+WWmVB0si
WFQAylgXKKwgEjpYqJg/DTZWwYsmM28fmuvR0wRJIPI9vB8BXnprAfK0ztCn6IGT6sAzYW5/+Hqm
q+Y1a8HchmwKDzvI6meCf6Qy9rdie3/J3gC7c2KjzGucStJzFipQ68yTeXS3PX/eIg4OceoP9ETt
y+/Th2KnrA61PvDaNt0cNc9RIWXnnXYrLUpFA2lupoBAwtwdmFGgG6+//dQLd6l/B8REvwtVl5NS
M5sNp1uQqla4aWtWBx7lpeOXiehwg0K//LPcV+mV/3+FlbGViwuul2jPxraohpUEF+c0wRIsFFKL
4i4fvRwZuIcSxPWKWPh5uyFAXWuen5Y8BQIunnS78mKjLZMhwaUHkNAfEOV2upEwWDqr7I5/Tm9N
RttKyy8zSNWvTi+zZ66WywgUxMFayVPEXQuKOiSUVWVLcZlZSWJNa9Jo80KZbiZlEWBF28AIvaNi
h+VUmoKb//wVXuJnFI5bjcD1sc9ao5pMp9f0yevOiE+LrFihcL7yNgabF9hcziMEXTYkKG2uYJqv
iZ6+VrWW9OaRnI6c8ov2RZF2hOVxZRUALFw7UcNP7SXdIkJue6RSFGcN74sF6nN6DfiKq9TSgjWh
V1gCEgEuevZ1wA7x1OTX8h4mK+rAU6mPqjrmzXtmhN+WIaYntOaAGQscrCbCdplmOtsCIGptcW8f
V+QGkxj0a+HtwdZKRcx8Dq5fxvV3TzylH5i5ATYQ1QmORb1GpqWOVshs+FpQccZLuYKzaqjUg/SO
OXKut8Ey8BjATSh6BuVWrHjpm9VuYyw3N5gO3FUevv4me8dLG9XUoIAVLHziJ9O5Z7pyfBWWDKAI
hmHXVQyQDZe+xAUh2SWMEtlvKEumJfEAtTkHw9mXGFOzGgcbFKV3Qhat6C3AqFLlJHIhAmOoziNp
5N1ZrzizXRKw1Vp4FJnnwcdUrmN1k1qOysZ8I2oRfF7ts3s+boOrFaJoq8pGs9n9snLyOgDOPiNV
Eo4mbni+i+zjdHMypFaK5N5yR8lEQtcHCQvmta/Wsi/QQDMZbehBJFmHv3uKgQ4OVmKQQ+wtmlUY
hbjsiQsOgpDUAON2DChENxEarWZGfmFr6bOtF5+dXh66UVO5vt272Rawh5KQhLIhIIbhfF/vPp1s
ruXBDX4+DVrn761mjNNJwe361Y3gRJokgPv3aJ+Icc50fIcesSCWfExehAEES1+S6mPzzODqhOOc
rO79p7iCZouCy7c/nCKaowkYiud8MdI6tzzsnr0M9illpHDcjDxRvQTo7YlePCjMtHV7/S5bo9El
BgojMTPzdBffpcp6U8CzlQT0EmYrCp4BBJ4qvUHrpTV2Z6u9yNQI9fIJah2R0ISJA7OL7zo5l0eJ
Dq5qlIn3jXrGCscj7/ngv5m+OI6lsJXKG9HK5zXgEdxQEGspWMuiHEcH3S9L6a7/1P1oxHU+EWJy
VXPjmm0W6TzabaGV9FeIzDSlztoTyJp32dROOwQ3zhuxr4nJXJ7MN7pNQZPzSr5GxkCtNuqodW5F
F50Cmh+15bzDSp/aWpcf12omeJIlZYurQK2ZzzMlqCzSIaVyA0zbqr6zF7Xc0ftJ4xBqo8N7oBSl
oGbJNsYDraNWZP1TKQy/HAVXVnsuZjRWjSePPNUFCRcE3Wbw/WzSkzRL2MZPewnLMPMHsLhWutqd
ZbPXjp3tUzL/N/ibI68dbQ52HrHkDX1YJhLm6bj/R2Xw5N7IYc82WHjIeI5t0R0MD8ixnyRtFTf4
drjVVY1C3gO+mFfT7fBJ3UmkF8rI1peVlePOJh39ycrFZ65yFMloYoros+t2rl8qQoyXJzjijnP2
QbP202IVd0P2h0iwjsKSauESjeKvzKSLx1JeI73q+3hNuIV9XV4WGrxgV2DCIwBocYqPCEtMI7R8
o1GrzfGphXMkPTzlSRtK40/4rS3I7CWxQvElA1PlhR3u3lp+t5pSzYw8+5BiDFMVAnZLAe5traLG
4/bdaDuYxg6vCOugS586/zjfrjYOeV2mKDlJW7ocbB+V4r/C2oLZdakkSL1gWbWdMQ77kq28LkWL
iXPAf1KT8hNoJa8z9ndDzNy52i+HMCIoa1gszV6Jt4vxt5j/p7W8WfoEWUyo/j3VgwJfT9D45El5
skzCDULO1CuWviy22vG7ruKrugLyKe2hbNHWk8L9bYef79gWQ13PPmudxIQFXx1KWu4vHGBjAWtz
WwMAezu8F7J5w33yvxrLzkJwNmwDIwO0iM9n7tuySepkxqjB1rp8styPlzXHeiAuE2h5pEAjyKEK
wfJyqWb80t62cpttUCdyAUf8OQawrVk1vo2+qnQAB9JHCFtVEbm+gze0YVuD0QwpxBtXobp9ZMyt
sP16iZ9C82UYbYA+3XP/5qPufCKNoC3DOZar42pURSKUa81oTQCu8bNvOoiTUALFq9lXzzljcX9y
jKNUO9qf4TSLzl/5vU2SMoU+yLuWQQHjyowEv14WUh+CSikAYPdnf8Oa3IWh/ze4hJSoirsAwfYK
eP6/54FdQad1baQkfDdlo7vFRvX8yFv/80annj6DtGsYWhDJ7pDBxhPLowe+jsUtnd41fsu5qzJt
1HTUaR3/mbwoRigjkJMMIiYQx+y9E5CpaloFkXkx5LGZsut2SGmQ7PCw2JzUb3V6+UmwoqyOvhaW
DKPZA2V4atQyaoJkX53SmpVJ1Xc54zdURh9LbcxAG1a9weMDbh7LN5RAbSRkkkKsvUZR2qSSxp8N
3CFKAZ3v0abE8rrzs4pzFB/vzqjo2kC2w6jaoIesEcQ1eCcn2hCVk+Y/lULqmDp1WTosaKum2pMn
giLzdychAfe3k3k5fxfhke9iZzTY/JlXpua2AoKFsfdLbFB+gIzQ0bMIlLQrrYSkbDt1UTPpTUak
mX4aVnHUzYhuCbULFJchf023tnxPfeT+9aTviHHdXr6GRVLXMnwg3MwzGg8j/InvRktaC8Yw2mZe
2vKmfjLpyLp0lRovGHrfkOhpDapopbt7LDX726iQpXLOVoSbAdie8w9tlSdAtgAYnmluP2tDvGYq
P/3sacfRo57L7noDnqwnl0JfZh3p+Na9J4G3m5gs9tZwgMV2J+jgyuilbvv7TPi78evrGITtE8s2
UbrcCIQCDComriAju1avZYrqM3u24D8h6G31E2HvNAeSbJ8vYvfMmcG+Z18DqMSksZ+DzvKZOWcw
qqmsPCiUVIi4WuK8g9SxN+7lF/RzBCCW2QyNo3T3Koow19cWN5yCk4879RoMdJnhJab3YKmozkbT
4uOAiVX3LkOQ3nmqrjRZxTtDZKJp0GcMBs6yvjnaCv1suj3wyla67ZcnF+ggUwoaEif1UgZER6s/
060AjsTdAPKG1gqIfYLFevglWZ1tMqOiCWXOAhJhp5UvOf3jACbNVCytPPky6O3RAmp+m3ZpMTMn
mFV0I7AXI2YTvXbJoUIryvThgpiPWIYBxnLXDScbOMZvEAi/EaTNx5cosA4PSi2qG7NCJj6UpOqV
dQNizA3/rkkZtKYfuSX7fv/oHpMVZKYPmnxPuaTQ+jas3sBoCWY3CNi33GPiOc0hhcIuWseBP9Hn
2zlQQeoA5k75L+95qXkmksetr47g5kQAM4EH4M1onn/NoBDc4UY+yx8pd1Cdt+noAmX5IAlL8MPX
nSSzgkihxZ5fbKRygWEJ96NW4avbUHpwpydLYlNQyYiOELQ8csO/ZqK5EcXoz1HHhO3WtBInpUsj
dxZoWfg0vpa+rxYfJFZmYCl22ayl0aEFysO6+wZVHZgwEupEgwF/07MFdDKUqpnBaHJW9AOeqjlt
FJaDtwZs0wkD0Ng0c+rRJ2UTvo595JVGM0UjYGh6HgfgvmOEHXw3KuDgT9i2vT4BrcWXiSXsKdSG
Fdr327g39bxRPneZ5F3C83WZrKUljN2DpWtQH9n4oOiQRCQrIRR8I1tPRxZ1WxmE+2WTYkmlvBch
zWnUfQpQNXG1tfDi3Itzjkd7Qd2+STJIrQii93a8cZ9N0C/jGo7nd6mJfzarbMGUPG6VQ4VwXJ5N
UWFbUzmZ4MBzGIeCvWFdLNstgFGCN5Y4qi/lG2j68Dwr76HBb9oGYdJ2sYyrl5E03NrYleZDvwGe
wkZyMCrC/QC+dX51o3fjZrdpOfy9frmvDdk9ruIVGFumkEIukOywYin5Ihp48cxcdFSjWGf3YCXB
uAUtdwoIBwYDKrzdvWR1AiazmBHgObZnhy4TfiAPRpHm/FFS9gIJSjcjJpi9Tsgo40z10+UrouCf
1cqKtwGUSmH8HnyoX+d2pOxal8BU9OSnR9DjIp3YMttK05/upEyz2gdNKxqmHhRXqDb4vF8tFkOx
tKQuprZ4+wJmZEm4yJowMlW9v5d7wXMg1vJ5ouZnOsoA91mtjK+YkCeqZr2d4aNJpRI9TyJHMGto
xjcoh5ibPv6O29NuodOAGssa7oqmesE18w/35UACZbSksxGg5g5FuJZtdUJUn+JKDnG52DZl+HPz
GiZwbIGT7JBb+7k6C3pzejkFMG0m6iuL15k+SvCX2a8qkMFQX1aGTiEKCGBJKetoFoX7EyXWSGa4
ikHBk/O+AiuGgcanJ3hQQKDIzOERX036FUaRlxJrO3Y1fJH8fmBBKK0p/0yajoNDDNe0trreSCbw
vx+IfSckmNJp6BoW1phDpk3nhIrSlHcQp+7noihmLQiFYsYtJiMS8KxS0edPg2bVsk5R/B4RSWB6
5wdXh4Xs8uZkgw20snDxxmLvE1Smd8Ngo1KzOIeZUIQM1yAbDcZGVp8J+kWuXHb/yjZo7UZgiPE7
M9CCiw+NbsST2G8aqY1GyQpbHT3KoZrUCacRYRQnf3lUXXH64lQmxczIyFbVlZ9Ojc5MWh9c9x5y
XsxOWRCcLceMonv/EXmAJouIvHHPn1ywicdYXLvrlgd0ubD3jVtR5uus4u2n6oFMa9VBE0BYFud6
mUC/hynjUXvE58J7/dFlZhP21f8pZupgRI0e10909x8VS8mbAFZBv8It1dtX/SCqPKOYGr/IViwr
aOCoGyIAvdQPnnaE4RGM2kdVQyuKJHapzmZ5Zmdt+q9IBKwaDuYS5wY9jvbKA9+dgfsTRzXanRLe
FUG2Q3UUHiKJdgxFhJfM1XOw9B29fgQVJiCs6NsR2PZfRySX5BKJj7a2xk9NclmGXBE/xzyH299C
mD5nDE5J37GmBVrzp3VVGrc3o1ccUY7MOWqfVyWQzACQ7ZPcOs9f/kk8Z5mLjR2sUGounh0gS0ni
noG4t6NFLESaJErGjfUND99UrTdr0Mbp3oIGOlZh2wjgPJdSNPY7OAtKgQkXfTzgZir3vREakqNv
sJImVd1fdx5kfbwMzrtZXZeYERqFbb9Quz4ogKd0CqkH304MeaziqEwZUhWr8U+kQJmWeP4TgI/D
OYEl8A3eTN78sZVGM8VgaH3/8a4Yr8thH3P6ihFqA+ruMbpfhx9HZ9mDR02TK7mJ5z/NnNnwbpOm
q4ZCt9AE1g2a9ylffTz1/IL9PTbuek2UUMIXs5UspzhPf/Z6X+gLDNoJqmmvEV4LuRfnEVUiYxAZ
hmsehzBXJ3szV96gn/auCxKwvArHJuVJzDyCqeZgVbIWayRQ8pPAOUtM8B5nSqK9nOVH6qyXBN9M
jIYNW3QwrroHKRmL9AflC6zGE3ZRi6KNL1Vm+JpYqQbFadTxu79SXWuGlmuXNooN94XD0kvUfuTJ
OsNVPY6Wl5AjO+iqImfWLo81E2oXej9e5lTg8IwGbni6xpr/pPqMQJTZi1I2Uu5UKQDleNe6xkUr
EW3ur+MYpjM+ra51UUkFyQyoj6vi9nXXYOQpMG69TTa6GFDuFeCaIBw7K/3dNDTwCM529ljAQ+wU
0bjDVRN6x6RyRNk8efnB4ncmgTv7EfiN5AqblBabJIheOxQO44YvmqM9b9C5hN6sZvPDqjvYwwCh
mtdkHTZseBICp9Tlll6Jt3FuAcgkgYSYiYJa5tBaFQb2uYNoijlGB2PTKaznzULMX5A3NvsjjkV6
qm1znUa1bhhwc7hua+khU8B688IH5EZvbE34SpBygz2jyPCT8c+dgUhvmEqLZkZI4yxk5+gdPthr
04RnCy+qIBwSiGc/BO2THbSfj6CxbnhgNerEvOd7kmrjP/tVhkGinFBY0Co7xFZ6Xb6myD3B3Xjd
UvTaKZ7P9jRFnpXmG3NIJ/mHYe6dJiaQtPJ5ivf0VKNvy/Xhwb6gSFVUR9O65BBfGSX0zkgsYrKU
V26ZQ6lchdvNnq0dqMmDIuyrS7DHQ4IsBKfed49r0T3zHb96vokTrp71rIluJwmc3A0FJLuNsiO+
LKJv4bal+sIv63iw0oRCdY4ADnOn1yHab5qYD5wk+3B357RlLSoUBxS1aDopFXoFXl7rCBAQIsVH
L1IJ8IvUFtvY6dZ6RzgtBUOy9pyEr/Jozjld6DQZkiKlIVkX61YS8PR6znEIplKlSFz/LzjLtQeQ
DjB219OSWBVxB4i+E/tQQK19S2TJts/8R3LDM1T4/UdX57GGaGrMjFIxQvkkeQVOEYnFkfJoquZK
g8f3vWwRxr6we259uS0PW1fshyICSDR9El2kA04OkSThImfmE51jGIguObrbszcLlB89Am/wG9Yl
Pfv5mRZ5A+WwZfnfu0kC8VWUAE+nfq6Cf6WyGw7YOIIOO+6pEYIaT6rHPPOenGZHe/jgQ1GBfNHF
J2ajtSrzrx5MeuMZSdG7ckUmhIYzhpRXfqVszUvBOPU5F/lVxVeXYwvCuFWm9mLgQGbIxkTMtZhx
c//wwcXb07WGOT8pcTSe9B2DwfVvgix89ktMa84/zojmI6tTMCAMJiwzfhQTtCWcbH6JMzlZCJQa
0SU9AsGryVSYDtQ4rGrXk/Qy1j2dqAiA3rHk/es8E8XOK2koSgOb/IApCUaW5x2zklauH0PZuK60
dkKY++LIuOAm+8zG1F/bYznv0sNYGJ3jz52xlOmGrZEwchAPmpadn5vh3bOyv7TQ4xNu6uUtU0DI
k+1lM/9jBinDj1TTev+LHLiNoxStyODy73nrr8TXC4ihwKKw+WU76GsY+LahGfxpi+QcB18WKklO
iOAznUB+xbtYw4XhxMsFi9u/7VvPaiDK8b6Ly0zVPArlB0c9DZwJv5BzKnoR4AlkAJlZD+NKDal4
70j3y9aTLrwH37aGclU9Q7H3QMBQicKDchu2tQdIqAMsj0OAwlBN8xIGzYu60nDByitJQt3BbuN5
bP4JlhRCX4tyLavKsH9t3P0hZrenDQseEqD2C6mCQSHTR3BUu0lLOkZSgFou165ejgNyGAqhKqQK
16AtSoGdWSqsTFLpo7MDiXmYmyOvFOQcwyDsQh6ka5+GgkuxcRj3my2TJHSdVskuniGcpH/Upm0M
nIWHOxviEhS+WT1vRGoi1PJPX/TtZrLd9kXpPDLDECMtlyXbJOPBCeq2qLtZOhQ8pac+/Gt0a+TE
vZTislDDJYrKzATulzqO83HDwDi/GxmxSzfV+U5h0BDLjVUWV6Z7n63li8Gp6hhiVZTgvBlPEpma
xfmgEr7gEGAN+In7IG5JRh7rK4MGGQhBTdbrZW7IEgzpQjrOP8db8XBTocF2ZgOKOJdLqc9Scyms
eOTctDpNT9EhmYKTxARSBLrI3TnjnNF/uEOyr9Jt6iKpm+vLm1zShuYh5canvwUGNe0hVoSNAYJe
/wP8PMYX+ahZs2P7jDN8YKaZV7+betq7EvOqzIzWk8D7JHvgfTLIRy1OnyB1q3g49rGmA+heAnBC
YrIYcB2k1gYArZ49ZIG+n/3g8nBkHSc5C/322SKnxUsrNEVhhmBKWPKpPJW9GPZzgnpjwxdRu+64
KJIIgG0lybpiPrlcWssTsRTH4Lt1YEG2ViVkV8eMDgRnEMtDjFXu9EcPscFvBawqvx3GB4DXHLSr
sPJ/n9gGXXNh0LCqq6U6Jqjs2YeLGWDL3d6xyXqQ+jThgR8+129JUPbsIgi0tuEQCioZCX0B/smk
MlZGPgAG1Q10u8Q/toiT4SwiMFhdaPXiBwt68nNB/xyP+iuDmge09d/lfR8fhV1k0S2Kxdp+fCDg
IlrtdLdl2sjAuuNbloOadA3oUawvdUEWiph2gXc7W4PxA6SHH7Q6HzCUmNKo1ozjLlo18MsRRAGH
ZSFPhIs2MO004qeyj+xtTG4EIjdMbnuLiZxPTGrJDfmPmWvbLHy3mUg/X+PQVGzeVM2jS++0AlDy
PLqPzuzNLDqOP3wFa1Cu4xzBjPpvmGzqMIETYs3OQ9JeUNI4fx+sBoqkz1UNjE7k9KjWrT4p3k5M
upyNh65FH0WLJd64G9fPpwLu8hXJgDmgFZOg2vdKs8XwHyoO27jsyVae5ZhNva4Ar85Bqu0CVHum
9nFz9cD4VGDpgt5nA/nurI6R7Mbx7HCoDshqsmRq9wXr178USjcXC6XDnmzNzHDyHHwS3mDQ5PPG
C1k7LGqbKVOC5kCk1eUkGRSmt79/pnTXXe0cN8mGpgG/mJKwGd2mRRPMJLzE0DrqlbnahmKnJhty
uJRKZ1rCkulLiT1UmkQHE/eJpfwSC3pRrAybjk39gmetQ/BE2Nv0xyW7eGagjx8qKuDXhBtzmZdv
enET3w12jdzfCLTtUMBtr9YjGhGaNzUSnwG630xhbo/jaBPrdcU1hJ86VNTZb6+wp5na1Elisp/j
BcBWwDH7yWxh6xfWovRkXnF4KOebEQ/iKmNTdcTljkmXf2aZxxftyPfLjBqqHU7qyPd2jjDPfEV6
wfIG7fwxwgjuISt7EYQW5XE9y1unRZZYhyYAFMQmeEDv13B2/Z5D9iXA/k1o9U7lyd7qJ/zqE+Sd
nimb2klEP/xsS/HzZp0B8JDZevZnyZO504JtBon5fnwCi1ekyF4bREWjqmZ7Fx1j4rd0jR9tCHjz
YMhq/S049sVU8PqQZkWUc2IH+eUDKrTyB8jhmrCDXO4MPj5Klt427jLBZrSPXnIRfIwXEABEULpT
4r8xRplWREeA2EpSIfvj9FCKiAFNXD4mqY9v2vXwspXXbYkvxPG3URF8/ceGca/DEJJPFsGyI6wN
mkaF1ll3HWGURSqZBxrOujenp91KvKgv2l6Km96nGMKYO3eaCyLAVYkcgt8Nu14IVgYTiE5eGVOj
H06roW7TyaNUHLG8GP7rewxeLMVQWdhOk9try3IeLc3XmAHtlbM6uJHwencI90z7YiT7xul5JeHb
HUdQwOrY/1qiANcCGBiKG9N/424gUJyOS6SOV8j1eP35oDBEuhoHvvoMJ5EYsjqjxXETeSW7QcEf
DwyPknxhiokKD9PwBIuRvMt3cXNcM9ZVPHzibmMvLrzchRGLyCRWNXLK32dTEu+tkncDMX7/Luyt
kqS7Z5vTCZzWZ5dxQmGtfO23HDp1EHvlRtEcntm4dxw/kYyG7TA3YP4P8cgGcBPbXdYdW0z97Twl
HAeVpqZLWdbyL42l72OV11eSmXAtWArjptIiN1A237RNNX+rJX/oAj/ehEWoLd4F2i2R9s7MGBBQ
N7UeLJMC9bPyCvcNZJ3FnDylOPKm1r5bZJcA742K3lgBhW6Vb7zkOxCX6dfEuUpyXHGY7loDXXWG
IOcGwU2dY46cy+DCH0/ysHDfCln83IHy6dIwkrsR7my6rblzvEVSRMk8nFoMcp61SrgS5y0GdQwN
acWTkzEEtVMGol/QYpaAigclpv4AhTNNdgbZif+YN7AxVnowrNoFNMrzRx6knpIphSSPjL9oO6u7
zU++MqP0kx4pjgSK++irBXRkvA47WGy76GWIkIEK2lQYCV5Bii5r2rjKYfqa4Zx1wAG5DD3Jbazx
UPNtu0BJ1ihuQgq68CAf0rZQ2U6RbfbluMCRUqzoqtd1pCHxRro3a6/44t5pwzZada1zj1UpCMcQ
xqdDnay65f+24+a8wo5j3Cr5AtaCjbHg0Rf7DqbkcgYh/0OJMeblHTfUdvBdpLoioDhBCi2s1vcg
X9TKWkjSuisVs1wR7v/pHI916O/pX7IQFIFFDSWR2z2R8Tt2u36Iwensfc/SE6tMKgXDJbFxvQ0u
L9bjRpMQpvxQUAu9iM8S30jtf65bKm+CZMcchsi2XkSRMTDGH5x74CAu0KvmtSwMjfyAzGIB2fdF
MZF8tnA240ZTTKLe7fkCe9iRemKzVvAD2FacoAvmYSHllhMwG2wQzSt1gQ8Ri4d00UxLDGXAo3l3
VVTCxKhEL3fIyTnA33A9FDi3uiJI6zIquvIXCwgr2hbSPtHmzpA/GcMISwzzb05DNuSSwzhb7PY7
05WmycJVPVwWoQHm9KdAXyR/sbOk2LDY4RZtYiZcr6XfkPfVZdXq38/4e6pqy0gNzBZKaiTVkBNc
GCyELCcy2C6JLJYlZcC1UvjxGD4gSVEfX2QhfQifpMoWhiP1D0yHBuYF7oecmzd4KvuKOvR05TCS
dUBUn5LsIeHw/uWz266bFjQsRxUYsPZUvvvd6V3Q6XCApP7XWH8lS36G8MxT1OgUHNO+253xcyE8
MDp8GzifqXaHCm1XRSYWAgp2FsIWYRur4uFTcqZ4g72cm1StmnGWWLuxFdDTTZhsUY5B8bJV0W/r
hW8aWK9JhmCuEPWjtiMPGsVlSAR/FgBTeKYkUTgZiTl3H4lIYIITw9bK5dOnt7WCExJF9OFR3J9X
gjVvTfURZz/wnEX+KCt/aWuKrOi5hlwvp/2T2ZJw6SvXsgm0Rpy4qTQBaLpgO4Q1+0mzL7ijKjk9
LTM50HaJkzlOVuviiqOPlg1P/X+tNQ4Sthhtf7a6e2wdZxi+UXoWVsZLbai5sipGHeWJSKvSXVRF
RkOXFAKNPutpRbtOOX8e3ukeyXbbUzM/SdT0mhpB4/aDRXqaVnIAcy3BdRi1Jgqs3Z0AiU8m6c7y
kiw0yI5OtRGWzRSJzGGkKfPppnj5opshVjsMMhS5W5EFQJL+/CAqsLD6XsdXTjIyjNwXGaHKJyUI
MTOhoVzGm79+qpVfFB1rKX+4lCgYSff203G/hDfGXu8b/w26KUdQWd6nltPrkgLWhxusniCPlJBX
l4p2HMNz/+j9/T1XiyArvYQRFnMWmPwvhbdIy0omNDzuZRsKpeAIDs3mPGz1IjaImMtIHLjLJVeO
lPV1pIM9hJX4LPz5G7Zk/XTsKk1TnjYH2JIHf35gJmXRrYpgPzbpfPsGNnTUIKTnfgdKpKSKPclQ
zECXd4hs81wlb6rj4AF4TBcqO41uFQVudBc7Gb3EDDb5uLVkC8iN9B7rf4P86SXMLBLlxzuHtOA9
W+b7B7xBix+UYJAu51f544YvAmrB+ldG2sj2+Q2/c6oK8LdZNrcVl+YGE6apPlb2hiDVc3RJNmGo
ES3wnCCLRrwqe9/ip05s2q3ZpRR2PTb+hrQmLO2nL3geHsXQ6ny6cAMCVoxPiSFwqFqzg9QDlsT5
zoGGS2TsTGXbX++qpL+doAgc6sYkzaDxCOr6lEn2QW32foIQVxrYk5+jI2+4wWa9FWu+87aXEpEV
75bNzSx5kpQw6BdKcDrZCqyDOY6dLHtdJtFbltM62gKYo9graWQvwrb3vEINs3rJxnPeJwFUt1gi
lJzXHG8lGj99HM2ZfFnyVD3WdE/21mdepHLL6m/cjnr75H+SUEFTWhkrZVFWYBzHgmuPrxWqAtAa
5K8L44WXl9QtvY/CvyfJkG24OndnXlllA+oY7mXzawW9yAFxZhGnAJ3WenIiBo/LDrMPY3h6RLF3
DkMI1XX6rbigxthNz/6l8YKzTwKj2gnS9pmp2zMyOcwd7Blq+yZhuFKbu/FZzQei8WMxYNl+FHAn
LuPHgHm05kvwtAKueMHpc1w3GubGUcI2rvdx832DrhaoP/eXI7i5SzcxjaXuolEG7XvDkvUuozSf
ujEB1mrPLEYUc577ROxavuau4AGgH9c1lpZqdkXDw1zFOIZ2brBzxh73szMb8W3covV3+7yn4zUH
SSKVwlaw/xI5+yONzfAJwNOChyDnrBCWBmN3f6WlvP0TO5W84+rs4mB4m3s0dg+OJvDT8K0v7Y3v
V3OU+EWd4O7ezRyPUpiGJVnM4XcF+SR55nK/1Je/6JDNonTTGiyXPBGaIvP/fl4wiu8XRLDesX7V
M+YIBzfR59PSfwlez9UZnETeS0Nfyt+1Xbf3LeEMWuTLbWH26j2hFF6lVLGYpglsJAUURiGu2jJs
YDKx/fzAaKpREXR7r2u5LY36SCrxE+HL5x/O6G8LbCQpWBDVPb6+eXoXZjW1RdQNyx/OTJxlJq0L
WwSX0Y0fB2dwZXqeONIw7KYHLKh3RAqKVitwA89iBU7ohLnqP+zmJutwxibZzu32hnshcqOtzyNi
+/hmXztNB3F1ivyCGqQAwPBi6fzlkgumwr5z6Q7yrUczuUyzHuGlG6/383pu2zxptvdCKX/js8au
7gazq895FB7ONWCTtXYR1bXMxZ5TgOhOKc3E2ap2CtOJkxkeTllgadc7YUODiGUhT7UgdZY6k8oj
yg7xl7BWd4OyHuAhdtGX6Rm68GWqNnOkrgb7QJyYmjs8l0MMOG2PCTMF8/u5KaiouZo+cHZo1nPq
Jg/dewkzAt1clwbYBmTZuIzW//j5nJ5QgxQsCBnXh1jR1wCDAXTTzdtQcKpGOz1O9Sv0S1o0t1jQ
csUM80cwTUjpogbomInn7sMH0ciMvi+/DPjJGRRNhTkHuBrT+bWiGioE2ad5Lu5qhmOiUUYEJdbE
ZDkQ636VxLESqHTeCXqch4fXPJUYTaPuucf5ACOPXVU+xYfUFA6KC9UvC71qJayOo13e++K1OVNV
oUpP7LjsTYawWwtJAb5JToTiSq/vz0HRipP/3rqZVDpiU9Rs2/PbqbSC6RUrqtbb9WJAIx7x59Ai
mijS+mGI+YcdlopskJu44TmM7Ln4QNNk+RUz9rywrpkH30u3WMN4EtsdqBa9GTDIR2Z2mU3PZ+EQ
GVrQQ3CiIwveV1kPJaTQz8WrlEGW7TLuNBYmFF5A3ukuaB+SuhJQLC3WK2iPhZVf7v264feX1+yy
e+6aV9H9+BP1aX3FphmXbamEu7gglfwnOHh64eX/z97pQQxLHNznNw/WUJo3bwICbp1ruo7optri
P81I5G8vthZVdFoRYLMZPKeHYUA7NproozuEo2iYFxAGnreM6mrzst6EQuJ7ox+EuvvDbGZldWFC
PfbDZJclDoJ67ISIqbi4iLvE1lnl/WN4mKHEGUX++iKb72JHzUs6oyLSAvZ5MTapScVEqnicEVP1
iaLffACdPTHiVgHo1tvvxcoQqYtcvA9+lO4SIFT3aGGeaJmUP5dYuFOYIZPBHfCQfgFJvfImMuIY
nr/gX4CwrcPKif9+ubV5j2HxI5tyu/cgSW0SxEICWxapjEqEB22Cq77g1zexfbHbKp5gehTuG6Nj
gBXiEufablUC4PI/+/Z7t16ALZplBEGaEOe0VgLtJtJlf2md/qZvGwpZizvpECUzAZNAcr8llqw8
UuLiCcdGk6fip8nUev7ihx8oIh/cLWftCxOk4lpnbaZ1d0X8KG7u5z1taeCKBrd8YhNc88Umi4L+
smFsLNdkv86Z92P6fK/1JEYckX1bxe4R2tRR184pzDSTMu5dybhKLoPnPMg0Ii+KvqncWUR4lV0j
0AV0S33fVgk8C5bDFRprd51KL9imnIfhmfMcXwIhcD9Lh8LkWhnA6rEePq17EAUSbFMrrMaVvwCW
xRiUAJ89Ei8e3aLvY1EfpRnDt/VFBiW4XuGypVNTFcaFQo5VeLLcEbEwWBY50aO4IuuQFiNOTxXT
ySpvMe63nVZLsZwedrDLGw4xqNQYky5FyewL8OUqT9iqQI62iNRHssu23nAJ/KOrGT4QMRDIuEEt
shn6XfYmx31qqG4RDfS2bi305jr9WenQqycyqv6yQPPEEUr4TYXjbNjixjIhqI7xMcal/Dzp9//n
bpgfBCVHTd/zTV0QdxsyGjHrCdfkhFVRcv/tiMiXeKqo6pfJzLQBI0+Et1NLTAabjUN5NsYsXFdu
aJUR5uQ3NLnEgxnzRU8xhk/sWaLbJUtLWdxUtWHewv9Td/9Afio6F+5vYI2zc5VyiSB0dRkZAFUj
RfrJOHqsmv/dHUXjV8xIGcR+rg7g5slidpUZxzoSoQtT2PGEaktkZQyjbiGqeMkX5+fDpM2dVlex
3Tqe7u6ImenJfAOlxfWaPqVXYY7JqKl78L8uCaNrASXqLiWJs5tJ4PEwgyCg+lwIGtU9RdKK2zwG
OzN62VtUYQksQEtxOe6PdpU3afXyFhT2OINdwS9r/lV/FnXhoOoGbhrJjCzOyfRs5pYnftc3Ke/c
cn7bgFPyxD7L0nrNI/cwQtJp7kSntPLMkO+6yxWie66cVWzwFBtUq/+xeGKWXN9AxgKRqeAj7IQz
dPmuC5S6H57QXLrG5VXe2JSncCmEzpiDUqXTsGmGy8D+8B+KFIQUUMjF5aUzttF+ECIViqR/JTGM
mwrteoom6htCdfb53MvzFrYviTSutDaM3or21V0LhvvXBptTDpjOuKBDS0OrdWv1i/b3va18ciaa
DZcZxM8+Q1Jv7XJzhlXsJ6ooKksNfP+wjeM4db+IxdmoAKFU+FXNo+iFkp9K99Anc1YEpMzVlEfP
DOR2aafcXKp47Ts8PMm02grVpO962NdIjM0Qs/Btp2oVzibIwSQq273a3ALOQVSQM4130MRY59BC
e/8tMcr88YwwkxPBha9z5BymbMUJ23nhSHGz84vP4C9wbkfSG9cmXyfYpTeYSZ1XU9oWS6KUA+de
mZrpjxumOripOJKuiBUgJA2HyqD6T/rvCCCHtoTkTYGNDTs/b9pbUZ1ShLO34JLhPuu5ryqx3ZYa
zFZTo+aPnxfrda6UiL7oF49jMX1cZh5hc8OFBc3/Rc47C/EmFEGZixYMKC0rH0vcnGEGLn4wxqga
eXHF7qo1AFzMtWnZi9pMUD3vPXq5PaVMsZqVWn5p8tI/fbw6YwzEEgAtjKtLiL+B3o940YjufXas
Pj0AEJ4c2Po8U/NwOHvNEsdD7IVldAq+x04u3RJUxFQKiVpvld7CcUsU2/cNzu//MohX4kdlLnbG
pQqYSz5vNJvA9oWcDYYn1QEM4PQQy1KNe0Hffv/zOarYjke66MzmDViTIPBhn2YdsKEDkg5xfvui
nTlbG8+s4bP6AXTxGx47SPMZRProA0zBQY/UfEsl9oPWrH5OqkHeI5oR2rPbgG2lslxscACZXH2D
QFu78EDgtrk1F+mF44mQINWbXTwHNzsYiihxiO0uPaGdTvIACAevEKmhz+yaAhjuLj/W3ruovBvi
NgE8tw2WHHW0PgJfAAG+eukHWk+nDAvrG7krv01481cRyszUCwW++uRJJzBXXveOjP4uo9/AlEln
I/yE3Ujg6c5NW4Zh+1tHag+b3c14fVwAViEfzJhAvQ0J7WObUJmOKi6bKnrKYSf2vQZFzrMHEg+r
BBjhLumOOjIME9qsuXuqz0pRPc4KNp8AN7H7IMvdLLNTOHUR+xHP+jAat5Vp9CsCoJJEjEwSB1Iy
kReqpfdoRqC71MBk1T4eFrdSh29pa5ZoAFpjcGKaS148q7DKBR2PCMG7KyvjnS3/tvB36vpbfbuy
ass8xsgBRcLyQ9t0z/w7PJaPFnwln9QLuizUafdyuhEZXiqEMRUQ/9qmMEJvcIu6O7gIdJpH8xTU
Lm4zXZEy4CHHlAdI2WEZmdd/CTRKBEZiT3AB24NDQsh5cmb1UjGpzcEQ0ULW3KqPDIsQkvIXHlQs
NaVa1bK2f6NkND76Ihdl6vGqBLoodkr3LuPOW02zHPwjxNQqiJFHZYbYjBk8LRqH/AcXRnQEQtEA
uA3T45lB5kEwlspK1ATBJzmQsA1KW1jV9CcPtNhgeNwNZ84uYQfJz2GJPVDCxuOfb7gr7hVIfISq
AjORTnSFtJ1DUScKPiZdn0+IkOKF7l8WSaq7MBOrFaUxuaMnNXbjD1E4QbVQDw5PVIGo7+7SQ9Ev
EFkgQgaualJd+70dapNiCbkzOaBws8S4FH/Nq3s9f4lOK1OttX+OZXQ8lIvwb5r/LEddRzxxBtci
WNoEv3gbZYY2aiKzDvoIYBlX7Rlj1DVPHEDG4sQZMqTzP+Kxi7Dk1f4HWouwnpugsiqQ7RbDQpHM
s2C//hK8rd0fyseQD1ERXqikBYA9GZpoAl2JBpYB9Mq9Fo3nojSvmzEtjERsz16PoMScei/mvBJQ
BMs12PCcyff1qQM/A7bo+mvEgBXzQ7LHLSfQ20ILQo0kILufFsztL99N/j42Y0fMt4ZTj8w+Y0w6
5ezRbG1eROaqZVhTxExDnqSvTmjzTAgJBxg23j7L5Uwa9rxi7CFkRLtkYyHxKd8siWbTNHo9ys87
jqcjGTwvm12rPt5NT4Fpu5yfwh1ZIwND6XXrRTsRmzH2q2Gde6H0nVC/pqYGEkyXrrrJ8jEGH0s4
V2K0Vw+ofQS/S2i7rRsHLA2z2prBjT02v8r6vgdW3/i2ZzvqrWezEAzrXd42it48rvMDG2UTKz5j
p73p+/wLlxK0SrBDMr3qyjbGeTJe/hnFK9FQmJiKGQimxfPCtTX/4LbQDonJ+R3xHMxjKMj6OprD
GQFFdtqULNbDOGrAXFeaqspiQcaAzlsH48vBUgZwcmP6KOYpX9t5EYvwCyMI0ZFvlPmOYtszhO80
/ymhA4ToQic75s4DaWxb89H1M9Dcl0ZNez+W3RsLQXkJVcAiYJNlmIKnLo93nu6Nb3+ZWPXfv2Wb
UNDxbI6CeeciZyLnOl/M4xcfp7CGc95tEBPlPj00WlYs9xJn04cbAjI7GC3W5OA8pg81LnrWSjGT
yJyTYwcoVEr8KoKdi1/siZXTlpjDW0cCaGxkzR+fz4xL2yTVJcL4N9GV4+NQNwtfIYg0OT6Q2uXg
WfTvPFiDcZvclN0QE3pBmshmxASxtCBxC+B+cKkxyaZzYDf8tmH33j/1ka7ri6ODeSW8PBjpa0pq
rqkjS4uilvTQqocZ35MgUm2nzsPecYt4oCk1yCk0DycIcU9LvfBevbynaeL8mZSUK8/GsjRyCCjb
p/sI86/cshi1BRzen+KZrSLFsyprIWP7czj3WS+ENlFaSvWfrLTIlRwJiH5OT7B5Bs5fvvxOPNAO
bjxOgfShpou5VgX8dE9YKmFB6ONbW/44yacpwEu4YqLWek3SdnNf3cOFfMODicV5KJnh78QSzNZu
Kw++/9ET3hJ0hWXohQtzGSABJkFpxEWIa8OXQWj80ZLBqG8r8f+hRKrjDGkCKEJu6y8UfUOwA6yx
1HtgecCzAlRGqRQj4njMALqksynK1pICmTE5UVrKXeFGb/7OvpRqWl8X4R/1IavidZoPJfQEIcFl
3D3L4VwYvSKFMi9o3k8xg428IHlrqIhkBRoOSlqPtclMvSDhgNqy+PDg8TdDoLSZ3/5/XkBz9ZDl
67ccmuCUpOGuP+JRAbRocmUrrQfghOTxMUDQcloo3xx9EZpoa4YPoXE3FQHmjagaoNI+irHodKJZ
wkGPrVGOMu/1Y1XNg4BhSnGPhN69AOdRrTO7jzMGGXKCWYqDWLpsyAmQhsOezoK2mIX4O0SE2l2l
HT9ZWCbOs3I/0/SRT4QajdBnu/02DyFbWGszwAjlTE/3/yjBEsQk4g5RUNC6otE1U0boeY1+QWw5
EpZD8UdRX8HsGri3xhHkuOaepyH7eEuts9CDgfK0JRf+wh9YX45xjd+ji29T22gYD+Sp6Ph5GZo6
VK2I9wuI+aKG7XbJUeUtbltkGgC/SQ5OkHZ1xkE306iWicMt537izfreqkbbdzj1qK9x6dFjxb8Y
Ovj84+95iBDv+ThnD2w2Y+DeMNJNYqnRM9+U5yKJrvKTPPiH4yMBAkEcr9fwLF4Qjwjp2lBUZL5O
vZBw2UAFWShoSrSA4Wl25SK2uSZfkPLZuMAQwKji2+vHHWMnY1W0TYn/t83sZO47vqwbRFxbdryQ
Dx2McPmGWIv2uWrCrg0/CudcD/4M7qyQSkzG8OaQScYmK4pxNehzG5Ie2zFjtcR+iD1q9Jv6jkp6
/Bs32P4Vp3v3vkbA1qweL6KzZJDmZ/rU9b0z+m3kF52gV06sY2i7XT69A6ocqUvVmZbHhS+yvI1k
NFqjkuJoNdONSAPJbMrIKxbHX8Mx4mWuvukBnIzu0Ebr3RUfYIrg3J+6AFNwxNTacsUvJwlIEMeO
7SuIVku6UoFNvIGg5bNzNsaerNvO5C+Lq+nh+BLXjZFc6EPR7LpXtOFVeiSa5ytXNPa+GoXlNNAW
Cdn3v1Zet5zZN49lYCndIbEYxU3j/EdcMpPFzuVWPc4TVzmtupTG3Bz+ZYac1LmvCtHp6nVBqdLw
ueSfzXynia8m+SA3yifvMfkxLtepoeFqJIe+V+la4Kk2mn3mr0Ets9BaD7Ma4KCLWeFz5B39eeO3
xiTvjWcNHzTyfdheLjJDf9iQpBAzXZPJz6YNH3l9ADsFbjvvdxaiy9eEd9/ruPdHk+LI8f2cr7+u
hfF+sMbfublqWVgPA8ExZHlZGcFPv43QIukOzXLMVDBlU1Z9IDQ90zsy4yCOI3oC5e8E1T++tstl
XFw/+g1xYbG62ynIiJCfzjzmyGSsP+jGTAXO8ALTv1ZKptLsOC9QWvB3nPQdlmN2JA8LGCJVGt6j
gIlndWdG3VW57HhGmypGdpW/1x17qJ4El8YIrgW5UtmnC58O4kmngrn5OHrT5HLhq8qD6QWaO3i8
3Dgl9go53lswXB8q5yi2p+m6ujEdwq5gMvYLW3UZ8BO11MowcXmjUmwsG9NgULbuczaIwaqlyswh
0Z5jcsuqpqzJ2GQONqVUOgCWTbA39EXjxSujWf6oN0r1YSZeoWyR7XI8jias5vV6JPAWpLjVBlAY
3ydfl/uq8ZSko/dG6xspWf7OZLlZ74Y0TOKsc/Fc3pMPHJliNGqwO7qhCc8eqxICdrO1o7qisxg9
e0mgtTbH5+2GvUONpp2ZQC+SgLqKEAbKChC3ve68ONarcbL5kLWcuaOHkBytkTrntT4iphyInf6R
UMU0vKT73Texd3099LWzHmmX4GT2LyC9oYQjOWW8T5ds5zlcna97NY+xF3gzqhbMWNzDVkK82WHX
iAvg8nN1jsn4GzDZ5gBRieTBBn5Q8it6UbRB9M5UW/26ARsOZZKqzlg1aF1S1+pafc4sNJ+P9pc5
z8Kqn4KzWGFzYOyLUR88OYtAWFPheqmF5W+k4KLIF+R+C+LC8QcDUOQnpFhlYdrMLo5LygEyUuv5
uA/R4eqIDKDKl/JqereR+3msN+6XrDpoPRm4Grdj3JI0L6ytP7vgCxzYD9OPWzG0xCpwGuqRi+dl
ick2TiJz1X12vogP2nuZwOzOa0pbJIycjwkTa7Jtd2KT42dX7Z4E/ZVzbxsiIMesNeVlkoLK6Kri
bm4RfzNP4Dm2wDKOosKHF9CwEPCyEiwMtso9DFZihJKtw+vRHXMkZk07iQVhL/3FZuiLuOUSeTnO
6Kb/Z7DWB/JCqLyFIvtrrBllmeQqGR6dsJPlt2Q7h3fnBZcQznws2Jz28pj0Wk8vuTSFuzkMbcNa
oSxWb5bttbSnjpzohp6LCeAEgCoWBxUG7u405yuU+0MifbsCEz2JC91nQb6XeayVia+KNEgfX5UD
tOf1IKaWneEceTYrpaE+qWJsrKPbtwJ9SQksC5vSs6ZlUAdOdf3/ZfizbrxyKnOFVmfi5X8P+1Cd
C8MIFMTEbG0aQbQ1+fgQ7QaDrWkQ+EnZQVqOIkM07aMX3nqjosKH+tbP3c7rmvv6VG6jMlgZwJFv
3dvt0PNB3EKEgIwq+hq8SRWOBsemvKPSEMRemwB1EjzT9KQA9DZNKzKbz6Y8LOvR1/jucJ9wcR2h
QVrNEmU7ToY91aPcIqzV31shhkOEWDvA6Xa5l5UfCW6wQnqaUlXMAsAC1d/+NJUHn63HRnG5/bhI
ly/xPuqEP5I825OzWDKrghRD0XJRcBdwvg+zR+UDwoiGtXwE7AU+ab5K/Ngv6GNbRohLDsN0F662
IdSVcn7nah5tAdMEdorrApZQvDAEjlOJSghJJG+PkaHrAVa/mmB6paPsMoFtxFAGjirMQNqlGfPW
U+igj5+Y6PZ59IMu/IGd04NL3kHcGoCr+XZp4RWhwi11SNj7qM751gcA4Anvf6yGSRTWE5xX9FyF
Fd4SxZhN1yiHMFMy4mgrl0o5kNTaDuJw+c4nUUA+tvRozktMdIF09peY5mYbyCEqvyJfPqSR3Z9l
Wr5Boraz5FrjzqFVWHmp/qohHqKnhoqeint/Y2UfG/LwvT1VRiFmeSzLhy/HrqlB4NzunSpC7JBB
qI7wVcNUkoge5JsSI7M6nKDGOsIUzZuGQx9iGrJaRUJie5vqGszHnErtfoTlHsavXUyoQnaeaEGe
Bie8Q+VKpr7NzxMugJhWQAH9QJ/K6Az52O+YlZGrRdUyf8K5IbjYbJha4wJxEKkEPF16uomh0PPr
dMnkKhSvRO3+qJq2P4cVe+ly8Uqh/zfEIyCFF6pRWVRMa79y9BW2qd9C26Ewl+pIhrL0g8Qvy4H2
qQw3gRbSlWSUJVOposQAj5ykWam66Zj7k8Gwq14TYV5DN0k86PoQ0VwgWkJU9VPPxDswSYlrdgHR
deG/1aVWQqrc6Xd+FQhX9uf1HMNXQf0AluhlUlSlupevTp/M+kfPXZqWyRtvuIjc0/myTDZmhKyM
T1+rFxDHi+unb8IaRyFXilOEFiXi3CYwh5uVqyCmgk0zQQYFlpvuG9ju8hPTTxyO1UiV1YmVMc4z
a2hCohdReXMjIsVdm63Np/j+hdNpPO0sMx9pgNcb/FnGAJUWrn3n/VtfYoXS76W4J0NIci0+EFcv
HlzfDdW+bJCpAJqIjB4URGIcQ/FqWyaTcaMBFoUkBnSQYPZa3teZnkZZmt2Dn5eo43yU69rsbjQ5
NNte4X6JT/eGGlnS1+DHAFs5IFZuJcg88yZnn3kWWQdaHhtLwNta70KUZMqUUFB1zTmt0/EB7rNi
IFceBocg4kARepuMW6u8GxyXSJBWIa30qbvejCJTCxRYd3gqIj08olD2Z7Hmdp1pP64iAscerNVN
+6DJXWA5h9FnHLGl06frxUpMjPFHMJbiSkcF72ima7KnKNi5UzfVHsZZEseN8Xe5EqPfFtzf7LZS
JUQ4mMprpxIr/J+XmU8G6R4rsJwRe5Xdmoo8X05qL/6VNHTnf4dynHebdvbfYg57vT3YK+7GPsaj
FYf4Z/ObCR04t3J79deTSWZQe0eURVB4fBNFJGuVFjEbRDkngO3Xk1ZfvZVIfb4CSOvuovE5ve+h
TTChvTmSCVH+1ozv5fFQHsz1WlsUtxMmG9ibk0y5ElHJAJ7HvCEhkBLLsnWYtoYfqgUu/twiqTzQ
0SqRj5wghp7bQiejljvkCEu+LJE3jsO+1ArxK5/iq5g2cGckbwBwKKLoF5FLEiDQgL20XqPHJblS
nb5N7a67Nql/2JVakroOkosZ+Zw3ym5xOkvFE2zQprfLunkCs0BN/U+8ESLwX1ejtuD5qJh3fiYz
97rPkzGhiQVwEYxMCLoxgLlhcwpFjgKhOLzDLsW4aP0IwcYgPTquy+p6xo9eJoV5CV9/y1JHh0ap
EZfN5iL7LjfJLMInaB8Zwk/9HQyKR2s5esTT/H7Yrwnu4zkr9qdeEINvNdYnVGLPEUmw6E8Mhn8j
52DW4cfoq1ECWJTMiRFgPkxss2PMjAyGutmqFvRQUlecZ+lhLWQLVczEVyI1H6SIPeqblm0SN6nC
b/j01mXyVY1gIqtT5RmcoHx0SZQJoo9Stnv27vgw5d+wsldHWVswojddwbSFkTfplGH8mUuiz4Z+
VFqRkoCTHXi6PL9O66ULAfqWorXT/rQyRvEKI+ONFhPlTplylU30f2PNP1X7Bf/x9X6/pjKnCII8
2Dy2oeeH6DHFtruIUBKe2S29D66ym5kMs+V3k5SBZmoljgyeJOJio/ciSCWgRW3FCWHmuaAXNs/g
bub+0javZMgQ0KSo1OLd/Q1LVVvJdjDciC1n9kOYlGdxYWK3ggfTrmFIhfqrOPGCuVB8z19skRjC
mcFgIT2bjeV2vdxMT4BwbTroxTAtk8I7MhcJ4hL1uAsDfoOT+K/VDTCw6cqxNgJ3Id5dud5XyPeb
VbRAzWl/ul/HIZnipNFrExX+rivLp5jq8mH2jKGdX04/olbKaivwHpGcDEdyiMiLvYBetxxZSc4t
rLKNf3/2V+cvLkrDlORTPPWHkIH8HsTt2Cc5ekjGtARsjkIlw7bD2zEdUsS3hp5GM15FBzQkj4ZE
az5KDA3tCs0etaQF0XNAHIm/CiM/81/tJk3eZ6ttWv/LVxz42A/Q+EzcNl2zEPYc52w5RvPgbR+r
95zIxmmSkJqYOjr37YfSZErDvtnu05UBCuTscBdEZxkhF7Dl8YxxHOX//v0VXlXldO488jm5do+X
apAQNlAhvu/eVCiwUOHLMqW0QgAQqGiLo+OQ+C0LX5HJQETNfxeup0EI8xfbOURb9vV9ydYgzINp
jrIYMvfL1SLwCC4NslJbcy7p93iBMmXJNYzU6FnLgRVI5Jl8/MlSAezr52MeEaxxv6LP+xQajQBA
PR+yiB3o96lfC8ZeeZ5tQsUC2vDkbRD7fQcBaxn+gEVXGTjNi1ZS24mmZbg6auguDt5SP6qBT0x2
YEhq44vqd6oSN8sqTwdW1SWDHUb5ysM3mpbamj8GMDkC7QdQrYezggGhCfqIRcKeMnmFY3RHW+LC
u8ArysjGtYnnVkACCM9llSj9Hc1HvNhy3mQXzDSsWpkESSvoeERe+GJ8GqjyQf8FmWc8n1TE/i+I
NupC4vHkbvRfMIMQIEtupeU4s7D6LLJx0br/a1CW8F2Dh8RGns8VtiDZnTqmoakQKa/2aCQNCPxN
aq0G2eJDQwZPcQcL9FfFEibBVhbHyxki5ql2T6BA0uq1yaEh7CMOJ1+9+J/XbDDKkytF20YmW5Jy
QGJZHJwOiz7Yzd86Xl/VW2lgHXEuOC8bTFBOwMcsFy1g7SkcvbahP78QVQihEeZFubcf6JLK6w3G
pcRcu09n8LlI7WYenkQzLaPkgqdlZlYWJQ/yCtQfcc20zliIGjZAGpw8MS9Wxjgfa9JZcsbXu5W4
ZQUQ5H28pUtDDHH/PAudQaE82oqK6izy3/v9aMgHRbW2s23apXNQJV/Cko8OjrYLNCktaRHlDrJQ
Emvl5w5fYzTiUhSLMpcghKG6g8UdcOsg9/o4KsPf+h7P4jx6EETyGLhEa590/CtVTA0Tp7rx05bv
kDMttxB7mQ8fl736NSuRsBdnUFaBrTw4O9ytbbLyOBHmbdsm+TIBUh2jmWOlwrrb7PCiXpCG56pM
U3KlDnuiFQD03KrlSHsUxc2Bv1pN0noEwLLHGBqh9/Lfy3Bm+JSEpyXWiC5ZYWbRMou62qM+J6Sx
PjFChu7q6a4emTE2O+EyPIsW4e6RBvl8cfVxO7yukudF5rKTw3xQEnDKI8C22wyYvYpzm87c9ERQ
nt/FkZqNrCb//To4iwI5B51r7u3bXhh67zxHQ4ZMgkiDWJmlF62yiuqFSIQITxBwqO8COOI/q6NQ
eGclQBYt9fKY7kbQHJS1rKDAY4a4GuFVCyJh+vzGAlGIlAoIsymKb7igx9G2plpxJbaaeI4OaY+P
FQiMQ7OIw0kyb00xUTlhyqqQybCDSBrRbeW9GCpq6CMjMcOTb9Tqw7sjY4/cZ0ej1M/32iL1v06m
QDhawOs1Fm9p6ugvpTcwjfC6Jt+UNx0qXCcRqE7B5Xg0DmMDFsciuOP+1hO0BCGIBoSX0zuc9JDB
W4gnR7dq6QiMAwZr1ypScw9LehoFE7ueKhSt3FcRfXWm1aERSOfznOb88CedEJbfIXn0Nb5JCeUq
q6CNLiU7zPUzgG+JPB4pQCAQ2P65N+xSRLqjTtnKGk0pdSYGZk0sPiiL1mF2YZMPHwCNwJnioYyl
SgeSfd8FSL22eriPJ5xS+2k3xN7ujWpRYNaHtKUqTXzLFT5q6yykOR0p+5gOiVpOLQh7bq264wYA
vryJ16qpK3Tn6QtpTPk/L2agu5RwJhHelEUIjTtZF7Oq5cvo4gOikdoKjzf+vMUQ41tPU6gWh9kR
rN7Q2nljVQk77A22W/84dOBFuJ2berj83YxGWrc84DDN6Yhkp7XRxUdVEsycSMV2Zr2jGITeCX7w
uqABIm892rdOhim7ldbGOuhWPcl4gTEPnRZagHXW6ZNlL+pEesMMOn70oOBmpz2Esan0gSbwPknt
133f6qAbPSXn1HLTOA5Hk9bLYd1Ihj6peCJXhQXwzFBOQt6bO5pQi8xXaqStndrIOJ9jCl3SIQ+N
5zemo4bzJtAzHQ6xpJhG+hJP97L/TqKdlupPfdwCcQmsjm//dMRhaEzuqehuxn+6Z+UrnABouHfh
+GiTojIPK7cOY5U8sg9/QkO/6aWke6ZYF97XCXxXA8dIAANbSiG+gVUJTmvQSfiG7TeXwRnaEdmb
bHlBJfF6RL3JGga8Wj4AuUX/OEBc82Imt2uSn9pEsqjYmR52vaSeLmICijFjidPlaTXwXt1avSlf
I0BF6j1GtjH62ebDJpQ9tjRjctUeDDYW661U3SnOL6Mf3PtTLq7Hwfj2jgfU+5uyMYKjtvqdjw/v
fe2fI4DBQXRr952j3QrwEwM10aKT3+jDBKoZIpmsxmsIewJGuFkucUI1OLDMCYm6LLBtH0+t8+1i
+5959ZTdC3up/B/mtfyAdVBPW3HMsDyggP3Yr97MyqN+wyUO6oTpDHkvBy6OvKHmSS1Ny1DcJDo3
hNqpTilkjI0qq30sJWRa5rJecW8R3vfBPKNJDyMjW1hCbuGuHDQG2xNn+DrQSPin1STwHo2DV2II
O8mS7HMzmbm3mENZ0MCEq4EhMiX26yd+7WDn+rIDk6BixVhQ2Rt68srXfk03oK2McdvDG+GedgU9
94ky74147aNSvCj1shYg3IDpmiJ4qvmWg2+JIkqxHqctHyuNtnyjWMDDrR+dDDt9SqUEbMkWthLg
0W5fxPCUrYAOEBFV7bBwSXMoq9iOirv1moahW0IrXs5GROYvfqIQ7JkUCVZ0Cgv9+MVT0Q7lyWqD
aH877AMHwY7pckdCGCvv2pyqCCvLqu/pKtqC5POW5wmvmx4rfk+vcYSjUHYz+YXo5Zme8SnFsnCB
SMzuQSTJy8wRwvFImN+xUGIGYdBBPLKzp69lTohCcgiYxIVtmKHHU56L0BpWc9/Vv7iQWPvBedcI
MCJw9eib33nSJ15pN0+I4Mx1fy+u2oC2RCoviuBnt6f7diS4jmVyV9JMPIqQyhZgcK8wyWoyIrI4
7wBaCQt5YFXmczBXhaXAN8mYMOwvm1aeS+fvmbE8/FknKPk+zDphampKgK3gVxnpyx772kcyDnAt
F4xQSuFVQLm/Q1QVW0Og1PaHUyCb1PMfuUhjMo+zRiFL9lMBQV1YUFKn1IUeAUkF+2QZZKn3wirB
Hlwn02/zG52q3UwhaS0VHKDCpNTunHR3hg6eX9S9AXUyax25o5Njd03+pGt8vOopScwEpHso8z+n
rKg50hcF6NRKWPAHsMMtU1pC5z5FC0fT9zSeJg20HbSBroTSBDhelA1DeWGkZKXANmQ8GY4JS8tY
MMX+/q0bNliMbJynlQLsIMxcWNPvgdOS4ggGcVbj6uT5FK2zBf5+jqDHqdEXOPnWdZ/HiSqNRfbk
TMlh+Kr8UDjH8JSm32axCQCuEGLRI5cTpCj0UYrv49w4VP03pqqhjtXfcTENk2INwp7OAMPb5aJ2
icVPbnM36RaV7nFmsH+WjvEzPlkJ7IS7lCPFsGz6NNHcx/dtLEYD0eQQovdUrYYYnMFb1rzABlCV
cpTeuvy+eT/o1Wam+n93Gna9RUlG7Tq7RY/Aee5mdLsfGNlk7wSjEzIy9P8k4ilR5Je8zPhEqn//
kN8DnU9ppJqDaeEUa29vHMinD8B2ukAvoNG9GPYq9zVprBj6tTBa3g1bNxCUL5DDq3NQ7EeNalvB
KXE3EUTw9C1PF3Jm391a/rGHfUPr5tcuwXxkYeNLF9bp+jSappjhggzG7yAW6ViZJKPwvscfGxQq
Kg/J+K+8yGA8X86gSEzGruzSAqiqkzKm6tizIbtGiitDeEmAgPbPWlKlIO8qnWCIslUb4xClJUzG
rZzvep8ifmK7Sm/lis8Co4yuPD5OEncely3COoET6fTBtYtBsVcX4E12XZFJ1MiJ3FjDH0+JIaHN
TNpnfnUyI9PFFtOH83j3olMf9saZxgeXAQwpdeWFuiDYaDpkO88UjOaCi/HcqaXZel5tVjlYln9r
+rDWFp0JaHUrzy5VJb4/FsyHBJcJ0aMsb/+BcHHBNJOEw28jMwL7fgI7FeC029q9FZRPi3DbuItG
harLqBQvAm6bHbPUN2F/LYYSB9XaK/KlfPDl6uTdPsYQhuBuqrO+5Z5jWzWmH/BULZ/zvDwf0rKY
q1n+7jj1rYd7tDKezM7SDJY6tCSJELQlJzsGb25pNFhccD93MdvO5rg3CqaxchnQNgODRpZdj3ac
nLDh64nJJ3ANc6fnGWZ+70lcHvhRo8lcchTpKWevEdzEFZ178UYLfwwXKadJvK29MDMaE7th46nk
+3q7tQMR5xsCrI08dJl6Usc+6xYvnVjoWZKLCDi2u+XkCSlNlcLyDlB1/lbZt0LzCBhDV4rIA4X4
bu4upwzZiD5G3x05Ypq9c4AeZaFrzt5JG8GNMuYH979xTmk+9xHgs7r92goJB3+QS3aWBFLx15D7
hzp5KQbwn8k1XEjlntpPFuMUIqlRE4d3suhWqQtCFNm8AWeiOBM5KHjHeCC1IA4opz8HSiE93b/n
12oO4grKsMxQPcmhxIy1Ati7RCc6UeLsSCeq1fuTjJul4Y5ndePiNddRTIJqDwPBI7Vb4620Dryb
+hO5MEz5pehfGuk/iMcUL7P75EL/sYJSAGm1qGYLXdige4Fze93Fka9nDdXFDeT6bGVIY4adv93n
JqDMFmL8FA53SmdShWpJk4ci4fux8v71fovAQp6fHXMh3AhnTFwhlIyUsjg/LpE0dpXhbbLuRMyv
iFR2E9O/Jxs0nPY4Wq7LKAoRKA5q3Pf6Tb0GajEnBUP4zeRBOIJLSU+XfLoMsiShg4PoeEhIe65J
452b5d3z7k5VNs53iXOj1M/OSYu/xi8c0HMudSPGVkicB5mAurWqXR6L67L9L9GEWyHpmSD3Q/i4
0W78dukPdPYvdH2gyD4EwV6rajbpQHGI9nfWL0vct4PbnCRJ6im0jy+8mU6WyYXjts1pdytVyCBQ
zNvSO24wq6vRD/L7+j2MSlGt7DbjxCGBS5aStor2TF/g7m9hvybRCoWxhW9sV/5rTHkDheHH5D3T
JGHv4vDOZFyqqtRQ9E36LQdCE9NH+w3M9pJP00fz3uew3puUo3/bz6ny4V18Plx06Lu9R3a1yKsp
q8BY9MIzED2DhDPM2CIAqWqQtvrFV4+tdkrMCh9KAMc4p0xj7Pafv3Y82sI0evp/oSeUZ2YYY7U3
nfYJgf4V9kUD6q2NYxmaHGIKTkh6rcZwIDjxRgllcvPNtW6U+aLP8k44SlZeQ+Khpahlyqp9hav3
4oJN2ONlNERiZOUQSiFejtjaQhNU7ayk/c96jtvZ7sBCzccCbqq66OEfOs8CxAlvArUKO0kFYBeX
Flv5wohyyaamYCj0TnB/4MUD+aiFGqwgMTFf4bO2r6pu2ffo3ZtwWJEFgCDW6z2ZTueowquyxWSk
00mfqVjkSsEpy6NDcg9GfsrLN1wSc+s9pWUtVUp+acTJr4wmGkaQK+Z0/dEasMhtgj9JuMRsZVVd
sPNEuNvne2tSuWWcz/w3FSdd8RDhNUUKaoXHr+ugspZDYLcbi6D7X/0UxZgnBYBe2SGqOJ+lWwUJ
RZDZnzjCKz7F3vH6qa3ccZy2rdeeYwnNOqqYuWorMV8hIV30zqmnjmGxv3evmmYMT1V9Mavq2Lj5
M3Jn6YpKhfcjhNYSHxIZcyzmQiOHeDN0uMUHEN4OQu87HKJFrZZWC2VdgzbFgv3CbK3o95q0ZYPz
p0ewKPm3R3H4byZ0oT6Z4Z8f52LZpTyx1JERWe7NxdCyAEci1bzFMN9WAOMomd0I23fXN5qV+gkN
68lyXt/k+DR9VG0yrQzGFsRKrVfJ8wBaHDS6etyadl+nfCazLed04q3JPAoDogoO3lo/AoWmIWXt
ZHUSHgTDp/j65OLFMaBiAIyP3rqGjk4GoKB7TShvUWw4tjPeEKJX1A/+NcV5c98HuJfi/YxLrvyH
4Sh/OeEfgunDYBJSRuzehrvrqtAVVy1Yd7WB9iQh41ziy2T/+tpt7HH6/WAbw7U9Kv3LamS6Gg9R
WnBWVR/xgWWulGIFXpKYsuGgRVMIh5AclX6tjtFQppHWUQZOfk1+IgzWKou5JU5ToLG3qFdVtFmf
+TbNYp0Pnt2Wl9rJVORsCF6YYdTdT4g717qws7j7nzWC6yH6xH+ky0WwXjDv1fMh5ZR/Y7k+ZyOs
MxJNDeretWcAQaV8Mg+9HyjFnJqa8gXs5xy0bpNKoIt+zPW2fIfOgmT+FGAiQ6LX1OUyxJdax55L
CkUh4m/J+ZcoC32XY3JQhP16XFlTIyVsdGnBp2kJldmKDqJR2OohdTuTh9hzpV7PWvBmRVNamja3
AN1iK+O26Rf0rSIy5B9u5XaGttoaxYCU7AxRw1fSDmXW2fJXznRQyhRYnAy00+XrWiLMz1tm0gaB
/iqjB+emLeocQH2BdUadfuL5L1eTy25ohwX4yonijHFY2P7iJp469r68KHjUsaQBPJ1DsvBV2BOO
AtnvVME0G1PJY3Gceqya7lCh4/KK5zmECpVq+wAXG7ar/eYLwN2CueLld3FNXjfDFHXNOFcKRqa2
Ug0IriMoUCzfPsLN1Of57C9owBplldprPBKVhnAc50fvxCRcVPB3Uv83oq9HT8Hc9bcymY5DIW7L
HAZZ5AZpq1k7eoj3XutoxdsdQ/qnAN2IHQ8IQ2biyuonvqrfAwssCcdkVU/up2wlsLlkL9mrc0Ic
cdw5B8wm9DpyuYH+qumc3+uvL0KiwZfsx937sdryuEOjCmzDPGGh7d0Y9B1YTQwSEz/PZN17D7wU
j0Z/imHjHmASGTq+S7EN7GjqkIZJ3Eu7d7XG8j6E689GzL6g1Gtr14U4Ph1iQyqZagQgXL5P93/C
zF+eGiWqe7XWekh8KQewXtiDywUDsB/GTtSNhE8/XVZb0H17lBIGi6bGIWum82CFBMTU/Kp1uq/Z
Vf+9W8PwWabebmAKBgqzU8lAyRi+4436DJztKX1Mf3peysK+rgR50vbAB8daL/z45BLiJ/ZGbp6H
p3z5valTrHc/It9H9AhmmTtz4tmpNvh6eq6BKS79qvwVf8yEhjfMW/iMXdCB3LkwwzdadqJQCSXV
RrRz7N95NCyGiBpLRVY7fBJvoEgA+b9xWzMLi+6mWMI4RGH6sNngd1peHrKMOqkElC6PFzDrnB/u
f79YiSsx8APb5g6Jsad6i9k8b4cDEv+hjV9XEhkulyF9JV9BR5Tzfc4mkB0rTZKia3KJwgzFIm0c
5EML3jcLJQe7ZntnP1kKBI9Y10WPYvzho6pi6NHi18NIb4LS0qdqNyV6H4QHsrliePvMeWZR9HwI
Adea1h94THgTOD1D0AbyAbcBJO5xhKMfsmCztf9F1ZQf5Kv76CktYXVLXc5H2teZ3AsdNcSOSEfU
h9hWCZb9Xu3FJMb0lIipkXBk5tcE35GsnMGcT2HjN5qkKxSmJBO56SLFwmy8P362+erqAaqPx1nX
w5/984AGVTdQxjvCjDxzy+ng8B3JkD1XXFdvT4z9WclgPy7+9y46Dzqex3Kn0lDbO9vn5SOPSM8R
BIZAffNp7tKuoDxQTwflmef1Y3zyDuIHii4vIEOXgXQxc9iwXcAo1dKdZfuYHtEDwljwZdihUZxV
X3TrGEqkunmhmSjhZtkynmEnSyHqgPV6zLK8JCK+giPXJYFoymWBkubz46fabkb0s4HxVun4D5ZL
qSDZokCmMdlp85mQ4qtA6dWrO3AFATIRC1cLiORIbGCZYBvk4qMDmk5fiTqpjZIBH5mQud+ZL7Tf
+41OcBygxXGTOnEJplKfCTGwukRgsJQKqWIo+I76ypwgM90UbmukobEDykxz7tFfAunr5TaPNRN3
9HxMx4UbirQI27u5nE55dt2TF1LpBWuEd99vXkG3KiaHDLHwRgsnRe7BT43xYvhDHX151dh3Hmfa
k/kWyH6h77ws2YcTkDZH5X7d813Xm9b+6mkDyEAPDS89GaC5xWOEx/ZVqZOS90sYOERjW26KvnIR
9slZlfo69FtoO5cMeCyWCQMjl4nO/jzSdB0+dBtv8XuSEDx7O0W7xNYZ0fXWgNtTBA293Re/mAj4
pqSS0D/ov374HsGu46KVZzDUCLRdksbAHFT0hhDAguJHAjJzS/TWea44Qc+6LYkki5XVYsY3q4FI
T2VjWwf/64VHUR2O5GLvX0ii47+tzBmsIMA+rohMsxa4s9D6bVborW44bv/wHtQ537f8trykz0Ti
k+aTKmwewbYuNjdnIN54flPeGjxFD/gncSkbc8pi34WjLyAMz0maG3H6dUfZAwARhbvo71H7XZJn
QNvUyycZ8nRPT5QAhjPBi6VoVixepBH3l9OeFOx9X0BFJUpZFBAaSUO3zt4tog6VNvouROYqB7UO
VMG/ArXZk4w+D0tOfGhVwcxhThzSP/Z33cEq6LHDU03brh8tYflFC7KiYrRCCu9XUVXRvd3hQCd6
NBNJARA8GAtvWQyWEzeVSaPSvMpxDCtbGm7pUNvh2F8OIFcDJ1AlB/Eco6hXXDGvc1NjGTEs7iOL
Fp7iMv91Zo7T16VghBtj3DROv3q9QNj7l/D+kGRALh62kWiTeQCU91ov5cJ3ZOHv0ThDfqIYVIbd
QrHU0vx9kJMkV3xS7vr6zhKeVODsh2uBgL+HtUgzsoUBtnr/efMlAyt6vdmKf0Bc5bpeXkwn0P3P
GcpVCrsZ7N243MsxEGG9Fz6Fq+DL8xhIdeTKlp0K+dIo2MkEeUncc+0rMyKcXZD6oCGPOoMmM4sJ
82f3WJSP1KfSa5lcyxuvKg8cjYJAzjoLenzsgbMoXk/1BPebJ2XB6TVPDkVS2x5NiHRfi0qvGjLG
JvPz056YYcw+eHc/9uGjbEASASV6fPQWTe25fZ/NV7M4CqS+rc1qw67Q7y+RRH4Bpg5TunjYtuxH
drWKw3404ZoNMYFiNiKxNvB1ZWUavXdDQ5AcTY8Oy2JF8pAUwv2OcjzE/uqcgU8GXc3IYBG2aCR4
WcrPIouj4au/BPMWQPMMoc/BMIvbY1Qp1jCwhuGNXMD99wRorcGhqe6dFAIDnKGwVQZFXCFyhKyj
TGZ3gJS8UfthYPpGcrpLOUEJ+ZzKl66SctLSBgonN+7Z0VASRk+k9AfCOMKydlPTd5r6emXUyPKb
KcOly8lhI8d/qMBXRH+XF8ZdentZmkRwn+LvLgU5MGXnbzyj85n5x4b7csZWKMfjaAOx+7TK/SFr
8IK1So22Nt/c5xwlCkd0ttxz1VfvKcy7Z/exxahqxPgwyrz3sk0FmOMwxnLzvMsTZo/dQ3YHVYcG
mQ2wi8pF24SahUQaFPCqqDe72XfRZskXwct+dKwhsSzFNel9GxeEvRCPPRNoYOkc3dFzr/B1R33m
8NXzYAyHjVppxaFOyQUdeTQDD1XQMZcCzGGpsw7HJr397upgcPeEhYqEa1eySxsZL9MxM8JpIooh
1CSR4lRcl9zecqCVv57w+5CjgYnX6aAFRqXXu/eWPKqE7S0aK+wcHam+ymWwWHAkb94oI0Eis1mr
/6p0ktwM40FzLNexFnHveLKsAmlgc/gKIzhHw279E1szLxW3KDPT6mSQ6MA81v7GF7lXLz7kcZe4
aKQV72Wpo6MoLuj4pnxGhjUTT5A5Etb1QJ0AwT6Qy7BHzO/Wg+NXofSSJbIOy+Eo+SZIYHvKVLwa
+iM9nrXz8Bmzuqf16DLEplLEGab5NBWrUf+tAfC3DnIsjCOo9K5RWQhR4x5D9jx+ZHgWhxXn57YG
QT854oQeO90LbkgHv47Bvb/zl70X0ZfFz4us5OAOGGv1zI/LNCWTCpQlubBf+bHWP78OSDhhX88e
CtOiz2hEnPvnfrY0EDXOxaHfJNqhY3yhSoW545UkfjYYCSo4CazKwaP0uRpEM5D9Cw3QV+cCDEmG
fBNodzTsxHWZQnVbhJypd3jjR9yoEwU2/qKWWwA9UlGz56iJQbPuk3fOIieiJWn/5LzvA2v/Ie6k
78M9v06UcqiTJqod/ogpvZXycMpQC+R8G+G46Gs1mNoJY5ZfiBgyYbxDA39KOxdkrT8f4jDlTUkJ
/k/MEpXCcGaxwescoNcJKTRyovpFcfmTWp/5OQR24tFGRBv9nID4HPuL4NnuSYarf8bGCv4di60f
iK7WMf5jZLYYsdZZUAOdZzh3+4AWb1+o+IWROUskKHn2oSwBxQ8JdpqGXMRCCdP9iR5vF6lh9O3H
0+QqCIHFEFgKM1PfeqmWX2zpTBvQ2J6NFVGXMWcxjB9/iKX6sNuNijOlVZnJL92PqfF6HfN19l82
D9JhV/GMrQOpi7vbcCwgXlPn6fdwrqQuQUMQ3jeq07yQ3zU3PjJYinFud5QEAs4Gbg46aTsn28QL
/gyMx76cJ/dfb2+M+BzN7iHpzxfUTFyV38rAldfhxzWLS1GwzTGus2OdEbbjsNRcosJrMNQeeLlg
KQavm/JWfiP3Ucixo2nVWsJqYhHp5uxWzMkGB9rTzZESW8lqZyi29nrXew57UVlSPMgjE27OUjlR
UMAkjJeQ+lE1jiEg3BvusZfYEu2r7aXommtZyNmj8izdPyKv91mAGROH5qKTOZBrDikZTxtNoRjg
MGC3H9LI8CI1FFrkzGIOefhw7OiraGmLBD4mI+JWhlfEt8r3l6BLiNWluYd0O4mHS9TrRpARRyI/
cqui4QpxUAsqjzG3BLNesQx7OAmd/0OSjrvfcvCNnPsXlTlSScNvL4b5jy5SQKobdPohC7Lb0Ayx
Loc9EqDLoEDxXtaHRoYXYKLB8U1Q0qgC8P+BkwLDHxsGqKZoekLco8FJla+GgO+1jiM4Sre38I9I
RVLauPIMQOvLhTieqB+RTyaL7fnkcy3/QksL+I5k+YlKOfCUZnHqHBE5I3TbI+xZBIXIvxXF4aXW
s7vOoPF2cFFY1GVht9I+N/ioo9gj9v8IgFvNe+DcqFXXvA3UrP8F6UjY4ceCpcZNipS0By6kTDD2
5AaXSWJw6jQyBJvI0wySoSZeTJ2nBrx32oXY0EPBpRqWIu//ac6aJK9KfQKhw5WBZqJ3ayM86/ww
MaucC1uISkSOFYkRTuc1hvwObPtiKhTtlZVDm6QCpOFKn4UoxE+kG/1GycQBBXomIcBGluAWtbPI
nZ3GIOmzpiQV+KxRcdDhW6BovUqVQRrk5wZe2omwsmsFgF7aizskl0RApCsQ3Yv4NS9Wg1Fx9/lD
E4ngQiDKPRxyNtEgFtyU4XFNps2oRYFg1P4b2fl2uFeA8BDYJ92jnZPpB0CaOyiBYYyXt1n95Q7B
dy/cRdrMbVIjORl4/1ixMdYlgthmyQgpnp/hY77LTV5Z9s2U7zDg3BdQ8XYfpz/tzCnxCTLJx66D
RFXRMbhtFjyJ0i4OUDukNysh1JLjFFH8OJ0dZn9X+74gBrH/dgyVJRlzo3hGslH7mKyJgEs1PUhq
PN213qNkmqYDlI6olIgZ/kqQIYOdxmuoAh8OzfjMiBsDVzpryqRrEDejLyUFp8En7nyREIr/OZ/L
yCuKv46IbtReewIXXy/h6YLw5qxhMJ9atq3T8Mi0SX8Uk7TAhUz+4RQntNkADJgjaNxEVpUZV6Nu
gfP5y02UXTRH1zn6unw/8wFpLYgppt4REnjMtDEOZyHJ1b3qL1F4yLP3aEdo4vGlz7dDMtP38HXN
A45E8/nOc0UoXu9Wy1eaAQFsH9jVaIUIfvFmpSdHK+kyMVeBaDj+6UBQ+1yf+M1iMpJiWDyV8mZo
WSzB7O5lCeAQ0dVa6oep85urxFwk/4o9C8WqGAYy80jSyqoUP4hr1DByHJS6qj8/PVwR1gPOkwsn
qsCCyMrBl/SAhv3yk20tW5JjEgqdcbwTfgtk92pczttjU8kdCw86pYh9k9yFkAIrrRbUhGw09zKu
kXVA1aKJmbf72VlXc1GRzU9wQH6dUtOjB7jcjmIf4uotcje1s9OaDxGou+bLhCbfAHU05OunHqLE
tLNX8ZSTmOaEEosYtDfvghllTr+k5SlHO59eFbZQNonBNTG0rbkIPbYcvGcuV9WGvDaUYjDQx+6n
a3LNkpOKLvPSrLFMnOSIaUCNHWi1TEd8DjHzjmp6M24nM79SPGaWIKy58xWTQOnS3ZyL86sLhOAS
9hi0xiwmV0yByfXEQO9DBHQXzS3YDihSdcwZ42HyU8LQ3Cmm9hSdipUntdp/hlFx4XbJLxRT9QIT
34Y+TnsRbt4S+tfAnAY/hDeFqAo67O3SmZy6ggZvI8ubUay+ZygXGawR36Iwq+1PFNeJPDQkAlEX
P4ygTm0/Jb4oP+YhD/mpP0HGjsFmnLN+6w6kh2Mb8dno0tJBLC9JfP/w6nIOY6Ez2hg2sQ7OV2ZO
t6yXmZICqFxxDBCWM47zd8+Vrajhpnd0V+K1YLivW915BIaiffI8D6gTG4SpLK6SBNVhf8PgxwMx
eLRnMvM4yzrK8Nd5WL4wa+xm+Kqv2f8i4hxp7MXo3N1BAuXesw22lBJEMrP5ikiddANjSlHhEI4l
yf4DaDelZjKhY5iWSrHuLHFij7YKXu9qwiYfCvUsj/pHPII192L+iacJ84phFQPntVWmh69ayp32
U2FYA0QOQwJgodQdQeIvIRNQC817DINwWTEY6qFJQP8nBqVI+R4All0OxL8tcdxNkHR61EMoPiu0
1XVn7XNw0JK9CAD+kUNryW/SJHrvivGAoPBdeR0WCw11P6qOpDwTmDI50OJj+m/zEaFySq+ScQoC
RmngeH563AYZUqZIW8mQqAVO4doB1QG0aQ6z0rqojROX0H0UWgchFb+vw/PSmPUHY23CkrkhZnj4
8GdkBtO0jKrF8Tia12tRm4nzpTH0cOdaQFcBPKrAOnZQJmzRgxsP5gk1FWjUkbsv1tFW+4kxKVhZ
CnhXFiOMXhvS9thdBkfatxAww0fo3uCE2vhFy/ilUi2YE+lm/+WgrxldsnKINd3xz0qii1eWJdlU
EHqENOaj27qylTCTBhTNBLlm7Aimbft0xLsG4pt0kyxX2XmCFQrrnOwtYMqxsF7BvxqoRVAuq4uP
FqV9Bfep8ghTMItF/N1fG2AnHmnumij32OsEahMUeu8G8RmKT6V8tEFs5XUVAyH2TRO2C2BqUzoO
MgTitmEtv6FbOtCZ6RU6Kyym+cfIYq+bKfd42LeMqRGRHK4kWP7Yj5VY9b+bd0e/UlI+tqchXFPt
fjxiIz5If7edbYrL5YRBdPhfqW/1Dpj8XjK/KEI1wWGuKwCF1CEiGw4nsdnpTCpMuD7xjJiY7tTa
7GhqTzuteV09X+NIh/RuMRcYmWB7A3avQWePUDP6idbEKmOd6Ew5aQYO2YyF7JTKcNFlEvwm6BJt
9i/aG8gkAoYyQS1OAtyKXiK5I+ofGwK/4qF8mt/MuyFg2a6r6w0TeZqscA8j/tv1X+snrkevWkLT
Z0aiByz2LsCMwGyatOQqlc2xjnqPwlMHXnzFAKU1xX62GEHquk1woG5ADlfXqJb/EX/Rd7FqseGJ
ZT5q8Wzku8ohC3kG9NPiwj5fP6oogRoRfrTi66/6B1a3nPJ46QDMIvfIsTp6Z6U+yOtEerpmFLp0
SRQOvkI5p3Z9Bf/bsOtK76gJrIBgJbNGrQFVBZPXgeRBE4L+uEJG3oEjQPlQe9iMz06IzmlDhBYx
agfOehjItS8BwjDyB1PMJAe9YiQbpCKCoLn3qC4VyvF9mvOeXag5IBZVA/EcAGsgxk+lvRiLXrxy
tF6aA7PDJSz8PdoPJDjjZVIkbJVWRjjYhBh7u3gKacBfKMbVG3vzKuKan2o6ZH7oxzTY9pKjAajQ
MfDOR3MbY8TbAYmnn0/SFPSGNUSoSgSDHf/bAluf7Tem+N1S5ajxKvCpc5/qZC2HW0fnhkxB0n9y
qEB3Gyfd6IqARQQyx0Xto4c7nAL/M8leNPMuY/rCDp+ykWodQd7PadveOpxXF4ZEDj7QK3HkbSym
8U1f+6SVU3JoOWCuhucGAAbc1OcPb0gDDQm0BfSB2HoFqDUYpDqDuh6K0LIh+FjX49x9dy4CJhgK
ezWsvHyoCjd5ow/oqi4f+tRXYFFlZlChRSUCajHLB0PjIfVyWCQCqR3zTquKgrLJYsDbJo5DZsfC
nrkbPBOCx1PEGGl+GQwHZg089c43RHi3ugJa1Gw3nPymnW6i9zGUOOnleuf4vusCcCnQp8pBUiwE
fqeHaTf4u0NDIGKSg374Cz/navLedPkEYxO0zccllex3lXXnjH3Z5wE1h9rHaxjIj+mcF/J+cTHZ
4kHzNiNZ8+bxoLLG/uMYTzEomNU6WFw0W7WshE/koZa2LcJZ57O/pXmahowdQ3lDC3LisWz13gdo
DwBnqEtX6IcP0zkW/75txZ6NoZNA2MX34d3rRC858w3G2yQH2qIlDfI6nkDO4CUkrzqJHQNTewHl
aDZ9VKVjbajqwtsfyAZFUH1Fcp+MxbM+YQsoJA2frsET6PR+NIQdJHIUr34zHfwfwVEDBeeHF8s5
1YRgBRuKk6c+Vp87RrAdkmMALVyPbK8+loBL7ds02r5M2Y51KK180SInSITMKWbP0o52zPDJe4PU
BC5cweAWXxFdIWhzqNSVAfZcEBRB4eg4LB4Lpnkq1jpr1KLUCPuiq6w3n32j5ru7UYe9IqoF6dog
rDbstWPpJt0Wi0eYfYL5ts7ipq8aKhaI8CzbyWi/FslfQ9gGZyHaGFb9xuWjX56G3E031ZvXTNnb
0SlpOQI9L8rTAyoFAo+jLl6uSBvzTWpzRDguc8MG5BihxA6DWkq7LfM3TDnSlX9bdnwuXY8SQTqN
YmWetN96nrfUzz/DZ5OjYUjf7qiHKeuSjN0P2eYKXpJqATfHtznWYm95kSZv/45s11Lpm5mPv6Go
lR8uIhPPdpAwajwBCwzBXgTHXvj95oFegMBSdzfAxeu4YfgwZUaEOKLePzS9lCA+sI4fkqCIvU2s
AlicC3Us20Ss7lSbDkQstWERyFpFQFCwJcUUy6Lrp9iRWqlwQ3E3uNVezn4DB8vlsMJjI5/uUwMx
992HsmmM77UU0WTUlS5udM5bZ0USua5xlF+FF6kKG/ROJOXptRagjvLfPUIuHzQkcdNE1+yfPH08
IGUL607sD6fTA55cjkVA03I8+LQPtLy/ZManhA1EACMMI1NmfmQEJzzP8oKUFNyNZLQN41f5qkHK
ilJokRSh/9O2NwYGCOyM6DMopvKsRblAc19PySHOQYxtINqNZN5G1DZRYLWItwqiueAN4z4g+FP1
llhnFKCUkbvLVw+r/Wg2wNI6E3wc5L3rKZFCgf/nv2hgZjByxdCmjQM5Tdk2QwA9a0n6ikmCrg0h
XWbL+xycALITHrjgYHOlCf4jrj3leCuvyKAPIsmK9Jbf2IBRDYqkpYNNnaTie9Go+cj8lGf/Qm6z
4nfuxz4+5Pq+YpSMwGbC79ev9Xb9YYLXHH8NPWgNy83VthNpTlJIDTx5K+15JbHeKD7E+0X54fVu
PK7hrV668xN54WrVLG7nj3rLOTpeXObHYDgcwD7q30exkH7C9GMZasUvvXbC7uBVydIgbU7CTE4e
u25dZ3xceRKa9E7C/e1qSgu5PUklnau6KfYgu1bw5IUBftgOwhwjBkzj1gvG0K58ZRLbQvXozDpn
3ekOnMteu/lo24g1Xk3y+eIo+VNDQayBB7ubZ2/jtzq6JuHd1VqeX/e5i/D8iT3kNAdb5kLIlsXB
45/fO5zBwmXwQhVncfF2EZ9BRJmJSNQZ2p7tqGLkKKLvfhPrWXFkdbrQIPcptg+GZDkKMt+aCETk
xIqDNz8Bym7kjNeRKOyDPUIPVml8XmEbP5UW+UV47BAJswSqrHfiIaQ6/Ox8EwdDOmDAypjQCrD+
oxKz6VY2NbgxIpuBvl0a4bxtJ9UmlytfES9mBALefxYr/LkCwgG9lEquFW8I4oViCzg0BkAVY4e7
A7QdINzfUr8rSwVpbdv4LbA+5htf0PZgBq/cLKP5Ajgmu6Seed25HlzucZYZCK60hR1HX1V3PEzw
wOOfcMSJ+SA8Gk02Z70CVKY5u/rV7F2FRoPtt6Lckvj1h2eI0Nd9X/ndf+Jwv1saz1oN958zyqIh
i8WsFSfHRtQDr5PX15M7EHzDJZqytWojI+7j9RPKpbtIM3yrHEoaV5c7MIUJg0lwqxp16JE83xQB
U93mhp4cXgIkthj8ECU+bG8SNyImDKxs8S2Ki5UB0++JuqZAhu0lvb1Nt3s0QI7ra1IjbF9H/9ib
dg8+nklHhU4NqSiFFFgzRcUASPDgA50HsUIFpwkL866F5afg60jw8Y8HSUP+5fv+wb4+1bGl6TI9
j7620Q4amLlGkg8V3VQUN3i40txThwhw+ORCaTJNyBuzMnUgxkG7MCIh+MgztruDU4NNL+RUcDmj
vy6k7Chc8OsLJh6gD9KynDosd3mfr0IrZ/XqP7dOi/s3NqehiCPqaSvvCRxr2iYBspjt9xYuKM96
nsSLSq/ayqz8yEwvB8HHe1ERH8nXRwH+Gg+XsQyx2/JHT2szbK1MWZinzev+BgU1YOtZHbgvhag0
oJDWWvgq3SLStt28GTECDrgtd/NuVeAImU61yC55Ic6eOnu86Q/7pT4NaOnDRtktTiV+Fqp2rDlU
/e2Wr1fJZJ9QffJj4SjInInJSnHmbXBJWkbYYTY9jGJZLbkYRGvc9/498wPYCjSJAXG7TeMQP2Md
bdfThE/fXztlqGzf+URXm2sGn3S5rY6iejhzC/druUikmsIyi+7wJrAUUo8ZkS6BkXVz9yOVBktO
i/leusOb5q9uaFV0LU5RFnp9ywgLrQr3GdL6KtlBugyRxx2aGmHSMUQ7y7+FP5fTpHHcM/SfHldB
O0sfhANZFh/9W7ixFcqu2zGB7j/oVP9qEQl6wUKX7x2gpurJCLx9inelGkEx8Hol2EHWHq0QUOGw
hRNVLtoYDIy5821V9Dzfud5uLFUlBA2HuNgyPDdNjEPl05WG3mjBiet2ATowLsHZP3LgqGVUL1Rl
WTNYAw2Mw5dOY6t91RKFg3GoE0gokO6dOcoD0Rlp4jNIOXYSsh1zVyd+8tTlm9brXkspuHxl0MCB
SljoAY4rlXq4RQPksAGwTNXLaHRxnf25KN3FyVnbiiDnGytX+w36DCJfudsqR96REiyijMQO2Upd
oglOXOKmrfbXVWZUtpzqakgo4V17gIO75dCt0O80jZ4eRV1gXzMYWS7mTroK5F2Ja/hlGirPf4Wf
oGJdU9iaXQ0d14FhKNChtjw+zwYIYWG6zrWGhHV3TItv57KEeeOX+Rb+WOMXuxpDLGE7IhduXYIW
QKf7MfNX9U6Hxgi5HulyACucmCku0tsSBtxX5yXpfnfcY9G4YiR/ZBQJ4A0PKmPCiPeC7XOmhOsX
qaLI215M/Vn4hFK88tw67Is+0r6Uqk03aZCrh27DtFSaPC9rDfeDEyZZTf348oh88MJaPgvtauOO
wZwKV4VFMXvb9s8TeY2ZXwwGN+powomZQbJCqM9L7SnacpXwYH6Yi2ydrWguEoW9wawGCpFlwFnb
KKydfia1EFIdh4Fa81Ps7lY93lhhLN91xAjGXSe5kH4uw4MDLCidJbbSBzQGU1h7++RG7GyZUFmQ
feDht/J7a6orNLYJffGblj05Ft7+viQ3KessZedg+Y3MrOOVFIk0tzOiG0K36kxnEBM9dapYmfjq
Oio62Q5UFASn18VONw5dfkv25AH1QhUbk8Yx0J3t08V7tMMqeoFSWwUj+21/Z1RIGhxyPdhetsdC
ZI9p23J9H2Oi2pE2LcYkO6N8WygCYdxhmm8J8F/PYFoO6cK0xBbVAN1OlZxsOpVGaMWlo7x2CYiU
le5sjEjx8Y47Aov2wdWkOwGaEbK1Yc+IO0oOYNJ6RnO6PTyFxwmtOkRcu/0E/KykNCp4LYR7xYrs
MExUbiEiirw0BIHWFgPlBJeH974nsD0gtOF3YSWA8lSn6BjM17CQTuBWNOcEtagUzsiES3KZBI6l
qa6RXod5noNZa5uocgD+ssteK4Eom9KNtQsx10JyERchrjAVjc5yO0yzbk0DF122oHlgfxzWRyM1
0pr9gPZL8dTBMDzU43CO1N6bX1C6k7eIPp1vi5wLPKZoz6Al8bDojHiQCev3dHclBevyynhx8ls8
zo7efTaUowfyRofaOvS0e+Ab+yrbwjgjqwbvT5KNErQwIWh/wk99oMwgywvNMRqpOweiyp2LJF1P
PjpD5ShuiTKRNBd4hBreRDw7moEoicNoRn4OqCwYauszH41zZhXk3BG3O/BCi+jw7/NfgCk30BC+
+CTtDJyAGsByW5KOzz7vEeSJfzpUokV6sG3monn30ZytHMWIgRFl2Fp9hKkt+NfY20c3mP7cH2qv
YfvPnI31UxZSdDN3jI/0r/K6lAo7WeuOTbcsZJeV0667549iffOqFiIEd4K4Hz7avzT/gdwKqhfs
2CnKiwOKqzN/hXTl+t6ChtL57KZK5QYU//RpqamYkoMkb4tjRgzQyUVgjm6i/+A7T5Rn0wxaRcEu
ECbI00VNofJpk5gwUNHO3X01XtX0aqmT0XBKOTdbMqNUf0BRQZzpFgkXIhI9dbIGPu66nOUOxASK
S/3IWhx3OlrqR8HhcMFylcc/JAM1gxzJS1orAex4qbDCJtrtaghxuDliVBwR4LM2MDKZkV5AXhpM
bV/5KP4qrvLA6u0kDQb/svz8saZ2HWnCuBhHE1hn5Q/7KHXxgIPeWNankUmDXCJKCv0n4CYQk8yH
Ra8to0UIj3qJksTmTQfaYNwONOGzKV2urFyS2TMJkC460v/mNAJUu+AakgatFHkfUaPF1D0o+b9c
ta/reb7hqxGwFk82ZNJbjX0EGeL1MPBio2BLvLklc1NqXGM2lax8SGhYaRLbB2zF3RxlLtK+lgYM
W7TjFxY8C9Mz/WEMhKqUmoWUmvuKxpLSQsiTRPUMh01tcLfoWb+oXeXYaIevYYNTKiOOVzz8p6Hq
fdzRxxsogewN/nClzQ2E7NDt6QQluBQLOQ5h7LMoC8MN2QecuaFfKIyKAEOzpHoBpgszTeSIvFYk
W3lnU3IEzksBejNMucPO9H/hw47chNPkGpRQN2y5LekRLvfhtdWeiG5rwuq/Uta6RbzfrgvOs6Lp
cbFFOnrPDhwqUceppCd9EydWC6V7FNDwaF/CEUUMnty/EGFL1+BnIyF3ZEp5aQBpotKb0uUkwGWY
6cKgy0VjvNoyx+h1hI8xj6rpPaItsj7BZZPvU2ynxus49ronOjKSVWs5+lqZx6dFveJwiZSsMgX1
/6gRt/rBQYBINUNKw2dEPaHQcC50JwXDPsOnGGO7D+2AfD6IiE2roU+S943t3UD/7Fzs24/Fn/Vi
pLOlzIAocsqpT1YFw6Ze7G9RTaAk3QctltNrgrA2apFjJ2545+eNk4f3Uop0A2V3VQ+xaBYLzwQ4
hTvvNNosaxmTyiwNTZuTih0bt2FcF+XwZ4e/TwYWLcIZxsUzEsJuyeyoPBJnkxsJcQajUgHVDDDw
n5cwOWGNMphtfbR38BPYuxt5HaQSyy9jT/k+qEBQn8DqDpflR+3d2Erje7XdYOTFPJpZYi3zX3Xk
vV+Ipvoel7JlPn4qoTlR1YVm2l0yfdlPI9q1AyFmFTwzXZANH8FeJJ7GeHvV5CwUU3kKfb/ufomh
xUTte3kyCfBqzszg++aFLPdNMimUVWNE9oqOW46HfWSqexLi2yTcauXd1JQpB2veLlx5gT5a5pJx
Y5diljNR6m5GKcniMZaNkfc3QtFwfuGPE3d5fBT/YEVgAfa7xsSQOrLA+Vr79wCiqP0KGDof+UWz
FjtvYdc5mUyPL/bW5PG2ts8k+1ROhduRIIUArx9GShzmcgg1mbTw/+fFDvecjXPwDPKx7kh/aJTb
iJVXE+dllwZiC/PzMw/5ZDHq4MtFRYTKi8SZZ0EMahmCben9rGFQspD0nXSeXYbdN4LNKb9mkipU
2Pwa+x07pAuBUdNW1m3nH4ghbaTTl51QQWX0WWFTP6Lb+A4KmuogKQj/LEJYkJbLKlzB2zuj8cKE
RfmqdjhY6Di1SVKASfNqorLoGAlMvN1R05F0ElRwphxdylE0P+LUcTb02nP7YkUMGNVZZbT3DIPQ
6BgEgdpYeOS17vN8oevcTJ6S3kZPKtxbMYHflqJxVvv/6qS9c/DpuvOw1oB/G+n+9EExjT68/XCc
YgY5GxwMi0qUM+JjVD5IDv6gKoYBTMjVaUxuEfrxcTh/X7h7ydKVxeUQZax2E6vz5k2Qc0mBJFCm
fD7uFKU86ss+KiZGUHGTeeKWw93CV5PgDZAh0GiVVqw6daKEmGqaJ/il8SLa1cPZNspC+NDGzYab
ca4IJoy4gzRuDG7vZqgGzL9iITaQVKwnU+tgBS5nK+jdIkvIc8QI0MGWi71Xf0URuDYjjgiv43eH
Yb8OeBOGVcXZ+70JfEe2hNs8HLGzUvuMygcroKCl9morOkY1u3FX+XWF86/h2+9LzmPq+mVZ6WBu
IAGoMp/stlbeKVrYx7Qgxmkimh1N7qGvgJongX1LZqbFSx4ECS3rrFkWegPBRQRzZizNNegwWRg2
V2sJrPPKwzDniUAXls/1ele4aNxJKSRT88kf+f3eJ90FXw6F3z/1UwaiA1/19TrMyflmY/59K8YF
rgwKP6Mqb9+6oOcb0whAcJnf3WaxkJnTKXxZQ35oUL0C/zrLh3i/prFFDDZlMe0o5n/B8aC9OK2M
WPUudIWdqdS1OClU/4XQvwQqYYzdJhYTQ6NTZ5OJ/A0gYAxhostkBhdmenSp4gBa8DXiGwJOzmLc
aBmQlH6hyrHu5IC2z22gchEcABw3X5MI7rU6AxpnmGYDHKpXWVurdZt/Z3AgaPvS02u1BDruTVw+
rQ0ETy1+qEgC8TXwCxDq3B0nWy+KJ88tbYhG6/H5EEimzEh7F3BxHpIFezcjQUlWgIDKBRZ46DXe
23FwJ9U+5oxcObKFtNVzC6v5rNwGgQKwdX4hwLXym1C/4Fq0lyalHoGdHSswMfCAVpn5jN1vAco3
LOAmBIqHeCk7tzpo93GRIsCA5HM0+NdKsqPzHOOTQuRqRoHzVlVeRpdBJbJ7nHUtYDxZei8HZI7+
bb13AqcO4iLpZ9V84JssrUd409Pi3eVxd3/VHFQ4UIukhIuT3vFk8QPZgtzz3bZ6GH9MvUAhZOqs
1sQoeia60lgFHsbmioGVaRWLfHvV9J/Ntl4s2ubu1hL6Z03pkoKq735QdwENMc76dLKzsKrcBaVD
xRmswr2MV4QnakToCninGXDbPkZK6i3RTgBQjaNQ5SyYdRCbphdTWr5d8Mt4ISocdFQYveGwPRqM
g1IcurD0uUZk3K15niiqIOF1Fbwcd58R2WVqP3W4phXnbYxp5MBxMKaBsXfbkcUIMbRU2juSj8nH
2DX7pxtt9+TU9AIEsglAnMg6ip/QIElJZAAJPqp+SgnY0rGu5pw1ifyTXgSLla25oBnJiR1AbmKq
tHVVOsLeqDkFvb5pH4mKqmH7obMTly76TpeCUkeV/Ejr/fWyiShG5vaHn3GtvlZzMg9tdsXfSUWx
ZddSN9d0FYt9cyVQVbm1GRj/jjGHrAF83QGZUkhFjybDOcSDQw2PacXtTRjNZ+yfDADj6G5kJcOj
9ePw7rihYCHI99AIspxtKS+fTSe/LPkfmiPSLK2ZWRpgjGd5DZepZ0OtG7XKS5dOB/NWlPxmg5FE
9DUYFhhNFaFrg6CgCvewMlP4NQWq4jpCASFZZjGocryXjED3nJsAO8ZnMD4rpl+48rh4fn3gYHD1
EI0vZI3LCuXNTl0BZvNZJkdowiOScgal4FL4Mt1zGUE8BunwDeWLSlFg8q6Lo2yELql98vmxs8eQ
3JX2ugwvtYCoJ8/pzHI24yMh9eUKx9F6VZm7Q54RJX0wrpx9Xc9MflZLnzgxKbQBH4a3Cm/8ge/o
iwtsJIGNZtIF9y3uwdrJVGcVDm8JiP6HOv1XV1LJN8eCRE3nKuds6lTDeYGmQVita1/c8MW7EwGa
rupP574UXEwvGtOgzcVLqU+WZ7ygzliHl/xRVlRQyQSZi8nEznvJF7p68mD163PEjOWzIAVDpC8D
Fq2FD4d8XvOdmdGK281SlV/RRp0HocLrwaOc4ifSx+9TT8RIshKuHFPWw/vwTnqSsnVVINX+5JQ6
h8RP1REX5jniTTuHvLxmCKxHPmM90OUy43pkXIScswKLOEhS6/7vSvAy1YWOsRiFqIUjPF3ioYOX
+O0b0s0DJXrID88KGJIMHdqS1Xo/4TfzjcLnda1JLTHlZ9aW2tmD9T3H3LkCRPJ7O7w8PL6vavT/
tRgCVkbhiVaH7bUKA/M+T10w2M+HqaUIG1clL0sZ1fmtomjCv3OcgqmRYCCu8wWfUXz+wUSDziFu
fpqzrtFyCAVEMugL8gb8j2wXmYM2KguSaSVICbR5mqiWnOrOPHeNCNqE39S15hzDC9QoSi0h46Mm
Lup8Q53a6qK7FUY0BUWPP1Ig/BNT1TUQg/gnjz5h8H8DeyK/+WoSRp+w951hsleSlPevx6DK7m3h
5dMW39FKUszwUrEQiviiwOyoa1ZwTr0SF1kNL7ecCAZZ3MFEYnWzl2OyWbZv+8NJWIzudEk9NPGs
uPmdZW0qJ3mKgx49U/r2eo/TWb3Vji0SBqwXbPONxBDN42apSr2nIDKGlYCI/am1zUjZQytpmcFl
6MSbN2hAHMOOI5pv4411bgR09Pyss9gbEp0lZEx0f/tP65OogApqnRGwgyNatVIvBnyMaopYCC6Y
aTfi21uZuWx6nWo11rSHUJ1Pt7Gn0a5ddkK1iTE2mGnhz9ajBmXcfaWVIOiRb95ZdAShZlfox0OS
qKZ9sD3MnTMwSQB2yQu06UTzQ5tZzncbqyAlchJtKTd4qBGF6qVaD/iFoyGWzUPrZAeIk/eF1Ky/
WY+qfvV1zjur85b1G+X1YidjyyRm4wUE1iDi5GgVxYlPJXzW7FxdjPolfuSdSIz2E4poZlGm5iRE
lZqIpXrptE7xNSF9ruNXfsjhLRsgrAOfJQH/EIRiVO6ZDeonHSSn7rDoZqIjsGzHz7n0YyH7mEyx
trC2FlvAFQIiv+CSxY9m+q0sxEh+yOSA387vWjpS+EBOIoloV+6QQQ7STcRbzqAv5q0ygyYU0QIX
aFyk6gxWmHIeMBYdHHZTa8f5+BoFw3mnC7X4QbXSUnNE/bXrWFcG78Mk0xrD/K6P7Aa6UHNi90N7
DMFWdKr+g66dLCfohTg3RQv6FrpNMmxIvRNewQ+21DTRYRCoNHzyxaSFCD5P+9IyY9l9sYtu8XdL
42FqOhEEUrHQXNFKNVWtcm/m0yjPhbDbRq71u/xUbTNdyo0uYqvfk1L3RAsxl13jx4n1LdxFcoYu
Ha5LIt/TjzZ+5QB8mlNZ9qWATZ3a/pkdFUTTosn4kC4NVfwt7XT4Sl5NIhzOa57Uq1u3gukmVKWs
j/WX28kUZU9XDXl21FZSWvQBTj3f1z5hP10J1OhT70PPzBf47hNsZX8IgfOs+X5yC1X6YXZD8nuP
ysO1I9lsfV094gS2TmsvQAsgY4p+Bw8840vXexEpUYFFPoCDAooUSIIt2FEsQlzm/YDIDyibYzbc
6am8sYMwI3+q857J1bfaRjeDgikXp4xgmJsFEWyaEsf4yu33Rt2nQHeVMBAvDNjM2Nn2yl1zbQ2t
dTOJVf4V43FoLoQE5WkVXH1/QOGRF3LyoCV5q3lyuiJh4PnzvuCRz4CZ2fUnf1wkWTiEVymqzLeo
QYAixq04QQLKLWQRov4Nu6zoBDPPvN2XVsO9SkFZTnC6Gjzq6PWi7X7WaQY075Vr1fDIpcX4cYKb
pRMepaBzmb+oyOgK1agDwF2v2MM04+TJKjzYyiQgy7tVypr8O9rbRpEcveNchgP1yfsBJIMNcZeE
B3CUZO6BieKpj6g604ilJDRrihveHkpfRVU4t2gS9N95xWu2aerhkZZVxwLdaqTOIj5irGA5MpoK
6h7Co1u3sHS+WtRd9NakUNePdPRo28+Ohkem8mIFnGPyI/1Riqt+krV2wwMd4ni+iFKSDv+qGi8f
hfOcUN9KJg4yAZLRXTQ0LmejHM8yWRakp3+AJ9ReVSzxCLJpbsQqkI+0GmnIVDcxW4Kx0heY0GgS
78SMVmExt65FsKmzKI+G76ffdhG/fzsIRf5lTqIxsF+dXvBZFTi2bSbfucMY+KrXFCtqQnOOdvvT
a9KlBWJ7MtY2S87YGVi1obuQVBwLGLt9ed+SCZhGsepWa1LO5lZil5CgTChoB7TJxn2Ixwk6B6Ku
rct2Rm7K0pirHVgt/lN2Qpo3pwB5kiMcwS3c2ys2LlndBt4eTJjxH43BCbYg8xs8+mFxDNGuhHxv
CDnvaTXKryAWstNPfnDPXEEtGWv+5mVmTd92YkNWIGLO6YjgHlkO6aMYRcoobqUCk6MfQGE9YJ2v
DsSilT+ipg2ftv3LtHCJoNOmMr5kEtJp9qd0ceXO4aAmIxHy/KXTgrCiGZ1EhxMTBL1OvafooNnn
bYAScmuDeY7heCxRJO4yW6OETw4XhdGf2n/qhF7V8ftHWVBm62BW0zll6YhVvNYfhtzWemhdPxwm
lw8OZy1PqZ/Jnimji/r2xhmeXW8hLigyUynkb29z/IFRGRxUk2JUxeuwWXn9M08wZ/n5Z1Vbh2Nw
9bAplCuBMwhRnfrGgLcodyR4wHlzocvfHKoQpWIH5G9Rslv+k98YA9uADMXTbw85N1J1cwShWJNE
sLwrjyGGt51jJVpebj51qu/O0EM3XHpeCrVUo4sQQThinDWxvoWT2IMGIttbqmlrsCk0cb1JxeCf
qbjgRNfRPHWNi0g/s4dLXAKHOH5vZWgrmgvEDGc0uwzCIOdF7QAkNNsSpjdg1Fc/wCOXPk6LB4uZ
DtLGVKNvEy6lvp8k8mt+EQW5WYHekAo98V0GGubIkZeuPTdDKGZmhThjP713pWs/OfCx3f3ZLbvM
8jHuVl5Y5udo1CmKUHGNq1xcGpaI02pe2hKZB1ADYVUF2yxbbGIEEvpxUknYgbt0OZNrFktfLu5l
pinB5ESqiSWumrjMUQs1sgFKDuqwuum3SZJocb9xZfXtBSvomTupF+PwYlc2C6cvWM70AtnaMVaY
ZiLUalsE+imWYroERKlqw6alZMaP8BP6Shr7u0/4K5TcjTRwOT1QL0TF7MyaaSPHPBCR9+Y75DGp
txlib3GmkiH6RAS8PEVNsB2Gt6D6XOxzWjjaOjJ+ChlOdPa5bFhowFa5BaoCvsoFAsKvIoEV81NM
hOLpbRDg+UEptZmhnhaqgeaPT1I2XTS1nidZU+qProJkkyfGbkyaygWzkBXQq+Gde7i9c4gt4c0u
hrSd2c3hJyxHtarGM6xkgMmaAvoOTKN1dc4bQbHSZHuZnpPl0yvbQFweb0DwrPd8ip7IzJ8VADUk
QZ9AmQ488WdRpIQCT7znMdfSiGjQR4NHYLPVJqThrHJ3+uZJ/FLlMI0JY8VEuscxURaqgjeW9yOT
rcBaKDvbl70xr9BK1IMxZ+AkiVqKRqocLOU5jav6hchHu9vCQBcgPxiI498/491fKDsEHk6+hSNF
7F7WR4RkRcLYQ5dZW5gLD2rqs8pZrlBPb3mE3m1vgkXiH9IGP4ZIbvU31Qx4/BAAQzNpPerlnXFC
kdkG+4PpU6kVanY89muJont48NJ4fb0JUfbbLz1XtgcItKBUDeL64HGQkvLxVdOQlTezdmKms5bU
wd+fuxWoMiQL9mcAGIz/wUwG15mcOTVvsn9ei2blR5/ijEciHoux5aWcATDHMVHb5Nx4DIDtoXfQ
uCDyOcialYksv1nk90VMVWv6yWCs3rEmKXA2Rb0hJJtMPiTj4arthyv6zPXuw7V8auZwIeiAZmCS
1quk+jxMadF4Mgi5+3cCfhfmNXzIvGolBqz5Cu1aA/SY8N/rKOpvAY08vDyOh37ch39g336md7lA
YiTsJhqfM550ozfoLh20LCipoZtRentm4E+2k5L0LPzClLepZSO8Akwyuiwz4SQRd1C/fs0XSLRm
lBldxWanDDPcEtUOQf0N0NFyYpfrEy/aLli60FM8kMcljXWNnN9kcrk1hhYPUOcLXXEB6POJyo1j
w2Wz5gnTQb4XbqjE2CfY8quTHanNiDuGojhAOn9NEvJwQ8Nlih3sWq99d3q9yxDN722/+YeUcc7B
yZebnXVfZvTkeE5Wb07ionS0fhFMaYujcsr3uHE5lNV5hEHWQ/1JY9JifUNiDFba5HqyF+NeSQ28
+cCRScGzgLUD5Y46ZhOTBSHVzti95oL5W8G9U68u71dBoG+1J5HSv1FwVF/wz1aVQeDCGGgDnmes
HiRWKhZFWBQMfhMdCREs4GsTp4cSTFSgkMr9l85YtWKlhM7yIz/V7a1TTKY9WbRyxfs5T1Zla7jI
Hw7Uu3Ehfr4yc0p0NOlTAsJF1D1AMruAVcz6Of/Szx6JYDZhH3LntktL9yBZvfb5jZUCtJ4qjR7X
8wKBTFWQY1j/9JbAuijjBDzt3j408SQXuvxdUlxdhcmE+O6knL8+dmlfFvuPa2icEomy9szLdjrb
uQawGfeaVJDfJuKnzJV+Rz8OYqNoET6HeaUG1bScgAAHjrGi/qPhf4kn87W8+5/gD6EVv/Fhjl6k
yZ2f9VqwGsElii+SviX1yFbW+/TJesQPHm1WKmEAxrFdeYsCdFKeOzu7KSnsWrgPAmaRA+pQAo5p
yoUyspj0VsNtEoR5V4+ofyN8fNaTH/oyBsX+1ml+uZytihW7Csc0HBKbSk/JFMobz3Tx+tm+a06E
RCpf1BGB6TviekiorYgAMTfBBqMBuqT67xXcmCt3cWqgGBhmgzCy+jJsW9NtcnLVeOtaCgyMeTdw
9hka5k9Z89+nAqu+AUtvy/M9KhASElu8s7QNPicVfgpT+pQRBiztVb3n3XMl5/2uKdCcqNNp0DH5
3pcgg3j+WUALcEaeDI7ZkvwCBEGOEwHlH2tcoYslepyF8iawv8x1B36byVqM8N8EwObIdBWiB12t
VbIFjjGY24C+w009mXVFZvmyUoJV18PUbOfr1JPJ4dV9lTKKRmNnNQVA2EVYnI343/jcznyOuhOP
JdSXaKQ8cD7bkSuP2BEgqnb/wB0MgyJbWe03DU4/+4DrGekH91a4d3bn29LEJqpo0k/KSwKdQP8A
8Lpx/CpGkAFZbP/CPffp7rUU8Tl5ygPGEy2BBtfj/sJyoveCp5q2SjP5OdQdTiw1SRvzD6LrI/nw
NRFU7ylvi3va9Fz4j8kUxqLt0KXO91qTzaWYEblNt9QSrYyjDkVmGYW2hecMFTRrpq3LnydNAYQX
0rrDspi09MSfyu9y7h/qOAX96BqtSnYRcpk1Wz8EC6nhQXsr5+XWIATynY+WSC0zQKUUdP8goMVg
GC2SlEdfBVmjy+DBjtdLMOUBxyWAUaNvJ7TJ6l4iybkKBxRPCwlLHDvlLrhBsnTMhiHTgiEi5uW4
oDxe4VWH44JhgeVWaQqVcxQL6N44PRFuYlrogL7UvhYUQgn8TPPxd1TMFefUBuASlrO6fKpkwqeU
kFw4ld+UWUHLpErbrCiILrqhMZP9Glk/jFePIYoxaOI9Do6FcftLQXZkIPCagDs/+enqOecQFbCo
kt9cxkQUddL4J2VkCHYo/2i65jVsA8XR5jpswEstKGvLtBdjqr01MpV0sDMmuQXnF3CkSM5y8mqv
rNT6X7eTr0UVoVoOGD1C2KLwjd7BWET2CEeLtD5wuTJfv59HGoXBM7QBA7d3J9jV9+HuILGmmMUe
Lyi5bx46Vb1O+renQ1HTULHflK/xBk/TmXagWFS7CyeRYUE5teKsXXyUG6gpElp/coMFzD/gRjdZ
1fmUqyRUMou2p+/JvewUz+Re739dOolfXGBqdIbPMzoROWQInpaj0+6F/2Ud//gK8VSN7Q3nTCxv
+Nl2jO9XSJiK7qM2Pn0QNG+snjcnnaxjCtwvugtP8+G+Ty79Fn+MkXkk8hKFpjjEtXWYWC+/Unwy
VRUCaSnsCGXhTEpvT8eM8b0r4pHTaBiYMmlDUFUaT/y6SSBgmHHMNNOn0sWVAsnyBEzdwwMvT+qh
f8ne5LmoobiU89aavvg5jQy8ODOVyYvJU7PjDcFAJMndtxjPAp5NVDWWb34wQ/xbhPMCJOGZwENr
X8JtmC5MycdOnPJnAqYjprL+35b/JyP5xOFCCeKDQKuFkzyOGNGieMOLKi4TEebn5L2ZPImHCoS6
stXMFUwgzLuW5UOj89aCIBap1K94ClKwJgFgNzQ/REODN4NFBJ7kkHHK6sNLPMYX+0TTLgVipPFA
ydlcDwYo2xaBhNdAHe1EaMB6Jpf5OeQQRxHzvAuEiGOlZnWamIejBMc9bscVh6pkAYy5cWfee1Sq
2zAQLsflWV8NWUCrHK5Kk+LWEH0UAf91DdL+RFxXsqrWKgeyYNbku7Vp/XKeOa8Lfdr9deM4lmhQ
kvUiQPweUDOqSjIQWkusFBTMQKTPEqjsEB1LdGenxCnhMDevszO2+45ECaPPe9IZs0qtyHyjPYaW
t3Ws9p34j8JVeWv4xWlLC1FCRuLE7jg2Eau4i43nBdnfjNyzNtiqE/89nVqwtbmDNMoLnLs9V/9o
Ysy0p4EaKKlgoiakQskuRDVMLlgbk0jylkbIMiU7ioIfQjELUSefAbQv7uuq2+Nn6x2SrqpL2bIk
efw3LdgygfxHTjk8QUQ/lnMr8L4JngE/aBenSLyKk4J7gCUFM/OZF241W+hDeIxxp/4qaydQ0bVA
/p9FJ2n223+LDPoqvT0oDbfVJrXz1FCqx+2u29HZMAX2m7be8wInH5ORYSMiV4x1wQuHteetBUy2
BKSAp0j2EncCVXeYUnnbqt9MprnR/ak4u9oAixjAzMfSK/egmy6MVip52w0g0ObZUKiQBmVOr22V
UzBUuZ2pUvK0uBsM14MMpFUMYEzJGDJZAz6vmkW5mtPS6oxy23PnNXMCl00mI9mn0VO0IZ7V3YrM
VcRZMskYaR8QgwBGKelL1ekqmwBEocZnDGeOeYxj4GtmpGmUbd/28Jw6GNqFANb8ohsyOJ93mUgq
np7oKTMW8zpZ8AFey1Vy2z1ERyw3oQ/JPtqzyjwv9R0137M04gi4P7zqbaI/6vnuj8n9rhQcu2FY
GsQiZhCQQkaElkZT2/LLVnaQ9SUlW7m6cwI5gPsXZEhCUKMfTnX7h5b3ioKsgewUUvFtvbmfpXUx
/EP5HxnaHg+vbWb6j7hyfn0D9wkahDbF6ldK6s+v8LWBO5F+UoH5xwXGTlBH1o7XAl84ZxvEWMXp
xC9oaRwwQFw+kxWuA61/CzRv1Sn/hk27m6R07JmuW9a/FgrEtnkZu7mUsEGHZFclH9evqE1wUe1J
Ykcf9HhxTPLUl4u0+o1qNz3bwKhrAYxaDOxNqojaCCt09vAgVIsVjSRynufC0Z9eX+Myrpn8b+4E
PbNj9sPvZTsBohNDQeq1Rfwk9n02gFQ6BIY8evqoNnqhwxb/ztKXnojbAGhFEk645HsWJ5axvmi5
Fw8DM+Wk8LlYzEoPuF36fJ8dJoEv7JHXy3oSte89CuP+TBGSi7OPayBqatlrwFTXN0HhClQox2s3
9qVmlcbRFWqFLYQBBntww4GX7QltGohocsKAwjBdc4+viZYM4jm7SXBZy7pW8SJxkxh4oLKKBapF
OkVfBUyRT8yHfxxqD6tadA1KTTfUdw0e881n4HLpk48UUacuRU3Oma4chDMK2ZzPLGE+Ny7FQv8k
cD6jJJ2OwWN5yVAaUpMWyz7M1mdabK9gT9jH3gdoYtHtEJEpKVVp8EDkiqpwfWtKZBtlCoH7eFV8
ZDs1TyoLYnEArOvDKD+QzV+wnpehlDgexlfef8sfEnAbllO5t6w/8TwehMankEZRenJtuQMp1KUX
havHJjltpkyOj5Van3lTSZeU/Ov3scYOaeflF5vY79gYojOk7z0kZrp9uxM+m55n0JwtuMSqYjNT
7/YCB/G5UX9MTrmTDC4S49IGdFX+AOaI5DLzZnEEiLVfsjj+zD+mYG9N8o9bXTFOB/Ib7xxFkSpL
s99uQZVcdTfxwnoQ70RHFRXPrgY5MP5CCL4cJ3+DVROYLEp9oI+xmw0TWZpwcy5LOl1rmcTRdm9+
RmbaVyLQK+4KuLKPvuUGr0dCzoh0bxB0xEXXCGMTMQudWa2XWtVOA7uZIKK3P3L0LFI9nvbtN+hd
XoA5UVY1hDN70za9T+uVA5hpT+otii1ilpIlZfTSNpvqwwcKhNkI8R751xh35ua+iH2rd2RvWxvr
nv2vnCwTqPlluP/3C5Tert96l7jX0Pj83ZVzf/K+Rc5YjMq4vrOi2up+6c47sbf4G9DgGLwCXykt
jZasdM2ky/MDfRwYhwdNU3YyFdIBxDQxlZrIMNIcgb2xW5BiDxrfnhUEBYjctucneLWNSh/zONTP
2QhbD2pMZ6UKpPVVsRA6QEl9lrFz+0AY6QsJIbabB5GyOK4ZT2kFLh0ofCSPjdHVQyPWGdR355DJ
ww7eNLgyg5DSqaV/RmjZ+ZowsVW60i6CZn+PADIAROWsksw7/NJOZ+PYf2LG+6XmeAn5XxpGHqfB
5e1ZmY5UfXMQIi3BPt6garpePuxcqLjmTF8ooJLRLi/QkUDd2iGL7rLyIxyP6ZswFHU5kXE2LdCo
DioKLqbmr0Su7y8TbO2NQx0PtJzUD4bCGFvnl1YdkWx0yHGA0KxT202N1tTwZL2SH71DaUij10Js
6gG70GlFIJt6FRIrHWUOT8gmJ3RBblWj2gd9SluY3Gqpp14K20lavBmZu703fiA3Blx737CBbQg2
8JB90I+RkRVPtHkmJA9KH0anDEHKbczVvE8cT397TQxJVdmBPy/1mdnbb0Jt1jQskG2MOlR3FfWF
L4BGcOihYvR2F5SXeAqGp7REruAkCzj4ppxNVAylU0Sflu5SSbYqifsDw9FZyPQgFLAkCPrb5H7u
j/2kkWQgub28dYz1mtIqaSMe0gbi3zqEf7WfJC6p2b8pWSKe7Jpvg3KwMdELa9pcB8mrJpGwHUWe
49frOZthkZG74eU3SgrbJCXUeb25BV9ImDUPafQGZlMh1G0bQQIvBbx9EaBws+wG/MHaODcCp/aP
qeYdm4onaIHFaiKQSuw6V+zCBpwK7ctA9PXOyRxswDlw2QMGi1ay/QU9gkQpGIgIPPAcm3uMGhxe
60hcyY/9YCITOt3BJ+RotqZGFoB2AMmaZJNaX3y2t7GYhGsoStF8ZCXGI6vRLh39QNHIuCdFMGTI
4i8o6drMZJgFgWngcdJBkXBZpASID5+yItzPfY+exh9TZJwJQaaShyeqlpwk/w66By8cJPbe884z
GDcW8flb4whXmttHDJl1WhRYuIBvmqrbBdU1IdlllO7QBznxdNcNawzKaqrp0TiKOKj2xkaiP/5W
jeqjhIOkUqEGEQSG4E9SWC6vuxDhYUgXQQxaxV6PNfsRddDQVoh8+ZzYhKP9tH7R/8QUL8fvvf8W
3DlAOUzjoRFQCYfy0eIE8NPAdMi6OMAdMOYps46te4KSwRapiQCXgkGHpxF0nQ4fo1UJ7ePsRrFm
KdVRGWSCCSYiTUEycaBFe9w++hQk1cglO0VHpNcbzYFPc/+CYR27WrJqwyqdk+SJo1jLaRS/uiNH
i5GmpINu5Ib4SmpZP2DCa/fOP26ejtBqLShtmdjVFVnXWiUIy+Tyll11JYZvlJfGo213GvNOudme
CpMyS77QmsFiPV1p0+KdWB5sA3CuJ8rOhr9t6EyH4ZzAQBkRTc87jPQB1atplMw36PGMRKgXylXT
F+1Tl8AfBe04yLAC2oYyCVixKJ9RRmEu0sFGpP5s7MF2x/GmH1rAcESveDpkeiWYNf4wwfyVslBL
jvOhbOZLrS7WmD1Dc1/b5CPdlay+jmfoLoStLQy78BYwr2SV7wS7G3VFnYh+Sp4WgaQrmalP1WDy
ziybM5i2SFVCQoUJrv0aefS8yjD9kcYfbhGF319KaEzIUs7KTCNDjQlT8zYUBd6fJk6gJl8B4rnG
iZiBQG/vKLTw5DhkqES3yq1qsCWuEUwuDG1b2AX2KSzwqjp05/lrvhHBqcx397mC2j14kD4Lv4yQ
ieZAeBxACwm9pld+pV+JL5BaX3oKF/uMDekcFSc9Cijr3lIIZvcC6g7JScgiW00/YZvUE7wC1Kag
GvdGvr6sdpDwsEEzU0ZNXM3AhefVMwkriIZC9XMg6+TqpufBDhQkmXeeNtNhc5hWZW9AA0czI12D
nkMg7Ue4ps2gev/dknWlK4Un7Nib5lEVRzoRIb0i0rwlF+P9gVWhlpOgQbb+IErO2+rLx/E24Ki/
p345/Jid09Lzg1CWHYx/YxM8Yhl3uE4Kzv9SL6JUC5q5PCpRN4W8v6EB7SKNVr38ZneZcpVkvioj
CyrDLrEJEYs7jKuOBdmAKAMaintAN82q/CYHPp1SSzygqsSwkCXEUXb1ARt+4Y+9dgXQb3MWgoGm
69BnfDC8wh/pSEyfq6OiTrPyvskHjQxudsDff3rd+SjeJGkiw1hGGdGld3+VvKIvk3t5wJkJYn9T
X8Z3zCgbxtYHVyMbSIqAUvmOCYh1XMvrwRw3U2sv7+K4yqSA6d4Mz39UCKcOkNm4exBmnwibBEth
Q5wJBgnPcKhDI8Gzm93fwo9Z8c66ukidWqq7iyrkggH9cGp90Nq99zMF5f3MXAElhmaAtuVpjIAh
rVk79u9Qe6MOLpLMWsZQGLCxxVCAneLlkuxT/qIwko9VczHSHoXqt4VOGJmks6yNm6khaK50jNB3
15tNf8j0L+5o+2i1u2KdRvBLR17ykXeccfpFPZ9o0+Hjm207FRnjjc1+a/+m+jCJJrVL+5fJY8j0
JsviZi9hnES5cjOPEq9G/bi6DC2s4wOkK8VVJ+XgX54rYL4Y3F+FMnlNd65M/YB+A8bS76/fkrYt
qo0dCeRGImggWZ68HV+JLaqg9CBwtdVW+8hCxEg3SRHINQTTq3a07WgSnoI/r8iteCrPYHRM2XFu
uzvgr6yaXdo/rDM1qhbW9YUoux5ezTuP7cCtzUYAjIW9dlCTpSLgZlL6JGmFiIhROIirvUEkIT3T
emY+TDr2IXCe6CmK1wq53K2xSigBboe+/p1qTq3GoFJ/sv+dFAopVS1VUyFH9r0XKF2MM2A3C87S
SmIW7brdcR6OKzKD748ej0M/DQLxQB0a+NeKd2UkVRc50tIrTl/ato327ZWYH0XqmO6A3U1X7FP6
nnNVWQ5va4J+whA2WrRrzkT1b1KY2ebEHqEiG2d53GuMOmCIEM/rMdUhdZRZMe0s6MnW1dZk/WCG
2SRkxfea/Mcu4LL8GPcedWB554No+qVAJu0mfyYEIXg0n90dQ5nexDT6vBbeA/mQ6MW4Cx3DEwZ8
hKQqYe32I4Okx76yJxxI3c+Q6lz+K16dZtr3r+NqGQ4m3nSqnIYwSuaKYbtjB9bnug+lmS8yvOHm
/GxkIfsTISUMJ5ZCNDfgecliA04dkWoC1/sztSPcqocx5r3xxW6BAVngRCfcJqMLoTc9CInFyRX2
6+jdzGkx3RXSqiwr2o8bIhRNYpL5+N4XbZWfhNo73rrE7J8uZF7zHTBUy3DJN8oMIgYo0GCgp4T8
jL8tacBqo2rZyLkBRpDMPrZZKBScOi2QkByIE6GOiw/TvKJMAZ+y74Rx+0bA9L6MgL55WEzDsoDg
jgCQngGB+fFeBdMnHskL5YoRoTrKeLM9F4mLYjPUGJhhKFGE41gAaOT+KNH0JWPKv1Z0eyLD93I6
twZYfE8OZ6u0kb1H62Ouv9FnwbCn3a216oDYZESgWn9GZL5OkpUxhaOFGT8Z6W2q8XvNKhDzDtO1
BHHghlMDrIhx/oBmL0AVrpB7KD9Gss2X/Mxpk31qRASaOyrnRr/MSg/MDu9jqoiAZBE7mvitzcoW
CETBLYUW5z5n/6p65AspvuMHlbXnARAz0nRHIMua/P1+OFkCPOWev3WK5h/wWlTsgiv0ZA8MXd6Y
pt4tedwwsjwBiy6iMGVXik0KKmF7H2MmXxj0imsHheHasQh0I5X1eMaJ0aFJRNok0VMDg6K2kNlW
iMjJQ89Wnxsk4jhRA/m7XxAN5nK3AHjvKG/3hq/ABQvO/6ZIbQqTJnYoHzFSsUUdJfurg1OQhfme
TRF0SdVl04iXfvYG58e5J9sxbvSEQgqfRMDy2D9uK4iVst9K8NbMEWPWzFG9lxt5LXDDqkl932e1
qfJ/mOBV3VonbBVoHADLxEmsI4yGrnTAzvpR7Patp7I1Qu7kArIZ4DOQoyWnk1UXe0F9EDGc1YAd
NCmHQPk9ADjGaJMNd/Hz5JtgcPTZ38e4ZCNMesUbwa924AeOc14jQk4g9E4CvkOE8F9MCCxP9uVS
v3/3diJ4K8RccwyEYRilNPouwJ8+U4atqgXRIGGVmW1qeaOXx8LExP7Bec8UtiqGk/s0xx7pXZD3
qdnhZE7KL1uI3xZFsF047pPhBKKRGEpikE0r8A59QVuj2k+Ma63xkfRl3Ra7TkrBQ5bMY9fXQhON
WI3npa4pXbEyIaQyPI1ocCL60XzzX1RwZAb9omKrbbz5ySdnaPUnw7BDQe4GEc7c5x+ZBZGhK4Rj
3TE5FWzBWJ2hkXCrvNO8y8VNGMPnaCCmm+dZDS+W9OzAThtSu8notGOWqPlysWWfFmoOclC7RshY
xvNq17DbJW7GDp1a4iIm/A2T/S8Tgukqofe7PD5K4mGZohkpbgdhgxjozQc1Nd5wrEQYtfZ6q9iY
X0tIySvoGNcIxYRs0ntlHMEXUbXK3lg4nFfZGtykjWDQUE9anIX1EGkIdUtsQutdlGUW+NxPVeXK
+uPV32G2jC8BKv6pG6CIuxZ0VG4FUiqVkpdJv87m/L1Mf3dpoypPy1jh7Ypu2VK8eXzbscGXjvNc
8RdcmlgDJeSL6T3Cao84pfagCTmk51B6loB+4rEWB/GmE9clIk4sIpe0B2RGcinMPsT/Nio0C0+C
pEllE7L3V1crR1wLDgwxuH8CyVilbjceJyeXpp5lSf9USnSsNCet5QVEqDxdLTZPl9oN37KAcJJD
9Mo0zr53Ghp6+rov0W0pEw6Co0mV2eXTVTUwnAK3imkWPLQjohMj8Ocu3tfnlRhFMUQCQjJVPQPP
NWB6CxoU5aY/kcx4f2HeAtKikfkgKlOhf/V9BzO+tBPwHPaLmi15mMkaTyZMS1vF3xf14gbXtARy
dyp8f4u/2MSMCUYXOjIrjYgMManKRknq68E5W4WTEcLLkSakgLYjRI87oWd22xKy9Mef0ZM3gdtr
475+gkRI1BTZjWXLbrou6jedlq09fBEfxsmg8L8xRH8uD2bZWtNohdXnwKOBAHQJGj3vivjuL+be
//IbKiMrHUOa8FVT+v6iAm/naG8BhAOaGiSscHXz6t1uxu5M6ooyZE2XijGY7/8LDLKVegsIOBgc
G0ePu2qDzgMgGtCi8lSMb4GQe8dCm1D1n6XPdO3kPV/61eqLS+s0ABLvWZ0Xl/WsBGT7LySrFYqK
Qgco5aL63rSiW6TXXDfaeODjneBvQL8V5oipYy37Ardfd+z7Iuy6pmaXO0MoLepZUzSONx06c9pU
+utXuFE1gw8e3XJM4DAG+YOaDDRDyNSkbClzf3Ofh/FYXDfA3ONddu+bQ0CdC9s5svS+v+Pi4D1j
SFq3Jc5oXwAyMe6bshAVn47G7qnql6oOpDQXlS+MlRbmKXQ7RfbNg1uaDRqWEZcY/K2vOQkrtWCl
U2hMRybjwVxgi6fAu5jMy+4QBQ9U0Fc1o6GFpzttFVRYR6SfH5wGUqfhwAiDhVurkfHPpKMNseuR
6w5AQhlMdS4VFOxN3sk6r4/PCharwfiJ3ZTyy1aXAY+vUwjZnWZhaPSznE+Hwbn8tSEaZGrCu5X8
pYymHqUSODG+UgcFr0YTEy7YOD16quVCawcZMrZuhVRv1BRW2hF5241E6fbIkGG1nxujBD09XRE/
DB+fLLeknfXiRHj6+k7KlRPishiKZa20UM3jrWH7mGcoRUHF8E13D+7xkhGUgtZmM3DTvz05oryH
LRcdSV5MbhxULnwCySlSz/vaCfux4sFFUKrd0TYHTQFr+nWnfDaze3MNnleBbI8mEa/tXX8sb4oX
TnaHMHE4LocgEdpYQZnQIDqppGHm4hxtK9SsT1+3F+UdaBiloqbdgJIEsM7zDt9TH+3mucS27wFC
uUVgIHYXUseqrUZCQaCMGdoN2Q0XYHKHv53egp38jCL44Q2zRR9+bQwsfORr1GFAPNiYnN1r+hMq
3ecFQVpugY9Dixg1cMNxhi8ZWLQMrdUiC0HI4WPuw13nrAY1SHyZfiRf69ykpUtLXv6OtvHGCTp9
7ZjmDaiQik1AmGfsQD/p6AIPSSmVqD+PppXgxOaF2I5Fci1cQuIYc4sAycqeM/MRJ8XQhWzz2Gaa
mt7i76zJHrMxZ9fq/GSfh38qaFCY872QslP1d3CegWw3l1fRjOAQAWQSZ48Jp+1xk8p0ZVvLns7N
o/qeeo4HLxfZakjk6iBa0RQt9z3IvPY7y8aDT9nHqJFhM4YEvJLMjVaFErODXar/OzeEulQGCq26
MOpJNtvxM72IXwCWabZtg16q1NsephzU4HYqn16ENpNAz5VdRZJ3+GqUOqKtJ5bi5AEnzz/FD1fs
StFD4YP7MTt9+TNEz638s9ir9Wm5Q/sYigxOzT5iiqYCc3SmbVw15EuCfjkpTqrvXB72KX48KqDe
rsHW+cLRqMs1XGJx6HdE2gRNE2x4koRUyw/TnwEqavkEa29i4yd3Fp+dhFbD+nW8wc1RyQJPbFQZ
Bu++o5wFoGmLeuuU09ZbVWn24XEzX06HhL3QOxv5hzCYJIjbQsfnnQ1AKkr2ehy8PacDKRnqXpwP
ANSiX7iEntGgLWKUa6Nir4m5IR2g5g8zOhKtwC0kxG0iugr8lPOdCTYOPao506lbiPp55ahxR5Lx
75tBmporCHKIshzdeTzF/slHbgHm9TqZ9/cdV/XDnsGI5YIQh3MDYnHTlACl6Mp8PYf8fqulsocz
RohQ5PRWuLOWll6cZvXAy6jib9zyZldAlLo+A0TADA4qH/TuZFcO3gWReYqRWktKf9vGxhD4TDRp
CI6DVoH3iCF65Ii9Zun44BprSxflYCnGer1XBngfYqBwinbFoGZC3RlZPJlBWSOGJX891qlXmta4
HsLKsB0EhwqTgyqKAKn1xtm+tDkOiL8hVV2OCWGwm3bMZvNYRRQ2CW0z3SBzBclJmg6bD3Vl/RHp
CMUU3ZlK1Axifc/vPC6U4EIm0u5pA5/2DbZlAosctCbG96EeBmoezsXcCYS3rEjZZlJ8lyfKWjoo
HY/f08Vpg4O37nqUvzoGBTlW+op32HxRi5AA+A5ZTaLJjpd3D4GjNudonhhFIOyFdV4Sy82MgYup
5ZMUxSbq0VTKbq1b9hdgPjvCSc6ILC99ZztXtS2GrvUFNQFvZnSPm50VTaz1/biAG58uHKqS0NLO
W/8526HRiSvQIkpi55m51avw3zh3mjou393CHdJEoiRyxbOsvgukTVCOlFxu2u0vb1VSNOyR73DA
KbEKhGB0ktIUBoxj3c9++Eyic8vnnIcDESeh2l8ZhwTdhKn5C+ZT39HgH7nphm0cTu/Y6wa3Njq+
11pnVrmox3cAZuFIjXs/W8Orx2ZA9fMAWxEgtbgtUhlgP7Y0QHel+YDOZyiAldGcZahWiV0DT1MT
z0vw7KoNoqt77lttjV9CrpCGPjVwzNMZALw5XX9wzcEMgCP2NYD9k3EBXmOssFCdbTOKf8XQIvI4
kBJTGFHlxwQD1xbsdn9mDOXaS91QINh/ly4Grjac/kBtCTpTCRqVV5WlsUrMDuVNo08BfyGb/IXO
a7rQL0YodGXkMN2voctBxD8dlJUerPs7TNSkCIBrydsMc+hY85t7n4RFxZ0l6aPJA93MqySvT8zt
3MnKNE6cQkcdpmE8R52JzgbNLXFdD+wvNUxk6Zy9p3n66wP6U7BeX2cuLeQbFkusyff4blvjTGtX
kCdV4Q9IX+ymxErXQ8bJh9nAhx2sX28oRqCmQPnXGZYWUIXuqVd1V8IC6v/fCU1A0UMqMcLtUXOs
dE/B4ehB+oYcRZrq3omuPS28EyTNZyQrLaZAmEhbVzAHYhQWa6tG39vnlLUBKugojavUQo0ZYYJE
V0GZNXoJX0Ol5cJijGKsET1gwAJAqMtPaT3qK8B9lepb+kjeQN/CW2l4cRvt56V+APpD3egvA34J
MVzR+6X8CQgyK03fFmmbsjZoN6Vpu7449/VutEzGwM9cLn0srcYQERMfH1FmOZvwuRuwYf6ZzUjx
3J+bmkpvqlWgVTo/aLEDOaCYi/QZ4KQZQZ/gO3CKJx21PvGPfP/WpwZzi9E8JqHVLuOJGYFlZBdv
sTwnVmqDcOoNk9G2NpZpVBuXeKtPH7JYMUfcnDpno64+YR/sy9dSJ11aVXXcz0XKklbTV/V9MH1j
cIPfRf4PjJBl9S+PcS7B/JPJs4frhvXhvWlnBisOprVEhSsDv5Q8uUH9abXhGhlQ49iAZiEVNg98
sIYME34ue9fUYlfqgRZOuDcsj+4wNcRTBgGtnIGVpoUulF5yHLvvjCrQqb3bUC0fK+2cwlqImQB0
UIme91pZFnGyi9lyUBTAXur9LOdNCKU/SwfI8daxedmvc4FwZY17FG1IZq2YljFXZGSi1efyXcrV
rdL/MYA1Pd3aNhYFv/xfA+30xJ/yq2XiLnc2RWyZfYXbvEgE38SJT1xFc6RP+YDT+QzELmlwJaS+
1QAWW9iz8x9iHIjqfZR91fYVlD2/pz2nvEG2Yvo8GSXq7dvCnCr/mEQ+AEiKCuBKy2RLZOsCov9G
0Tm8lTNBw4kUMEt6Nivq5wLoM+L7jhqqVB8UhBpfpmIBRruQ1ELF+naNEDVuTQXX6UOFzcMN5xe7
MG6fqxxFbPe3T6y7tGfG99FdlgfipiUyhUiYF653HOFLB53xOlrhJhcLw5ZBF4B4iK2vn6wqCiVX
ezOELgx8uSKgEVTTRWOX+pY/NYayrQE0BJZM43jdRicTQfi0JSLHxVf4T60hWyunqRd6efQjBdkb
39jIGIM9DQcbJZujnaSxXkM9/GzKVa0wsSjjAlr/6PGYqyrxnT1yvVP3GbuVf+bkxzQo33/KC8rZ
qRXUyMb4C9X6O1IbJuoi6N6FL0WfDdeOn0PceRAr3TgUv773l98V8t+Bi1CRJSS4MGpbchGHZ+xH
eappCk/MHEW5FEr9LbjE2O5mV2LfgmNpS0eMNN8WzmyV36G8hev23Zy8vgYoi/HyWCrpM+CnO31J
UvUzS232m6uZPrqrXrOZ7Vhr5jWDlBbpkPo5TnTGQMwNP5WKBjJyrhVfBwwS16D56LY4kFL9xdT5
G22Gs/UW8mXQkkx2MbDrj/7EnfIo6BAQmOk2YgloBNzzeDecjN1dF8Azz9bYRkLIAqY+uCv7gp7U
+NnFYla9nuI1vjJSVwpooICm97il+niXbT5TjC5IZIG7o4ouNzRTAByJNcKikiB7GpAhsk1aWCD6
HtfI6TuKTbQvsKTHmASBVoF1s0bHEF8ahQmPcBV2wqRKcHLUGA+3MiHYS+6TOBxiUfFZ/uccogCF
ihLdcDZFnK+EQkWSqLv4t4hUcA/OkdhQSn6OfK1uAuKwYfXo2I0nRXZux9rTBZA4n1qBVr3+qTxU
jmJe5gJn3kwd3nSlOuMvDm88hD1z9ybD3GiLPrjeZqAuWmj3aKXuK8yGI+R3yDpg9eFCvmcSlg9o
o2VdqB07to9mFhCYhRLKYk7EMwit2ZKQGG8g6ruOSMFRmbLAxt6YnRej5SXkThg3uVjdVtv7aVFs
Id9d9Lj/+OENlTGzVqN1b7nkuYs5XP7HtUhn63zf6D/0iOob6ZNx2EcpFAnHsWTAV/dHpr3O+/RM
O+rddDtr6S7VfdXtaRVkotVyQBM5p7kRbx/xF+T/BwTH3nGOF2pQbpOkeMihPnZf0LWiNO6demkB
OPWLIjgaauqfAN5A1mzO13uISKRwbqOCmX8J+w0o4cQ056cx4/4oK0rsbRSGFHHuJlyiT5rW0C55
zzBQ/PqxOsM5g4eS6ba6xK43DHoXehFbhLRDuXT8sdvS2MVg+StSwf5OZ1DTLoagDwZC+lpbu0Ng
x0YbLczoBjXc5rZxC8hIIkKOZDA2x7jum+pZGBfE/pofsgS2lyf4zoeh0AfDqHBCwGHGHnQvpH+/
eZJ3YWDgXhkKuDUOmO+KoIGshJ7bOYAGSJ/FMtcXfbrYyz/S6n3TUDrnv9F8kC3z0RDDeS16olou
X9BE9kuJoTifMreV50fjWgDgpQGQJ6yUL3sMLoV0R4MGu4RS2fk56aZnb0DR8vNtAhL2cs4pxGPG
LQHAYGflz9wkET+1yMyjLW/LeohLg1fo+6TOH42GAljP4Uaoi6X7H6L4/BfjPkYCxINDKXIfOKxo
5eWh8VkUJhBNyfLSa3PbANIA+nCsuLQDHn/0ticAvOf3leaYmn8sBJCxc+NWX6rR4PcbE+miVvl1
Uns1ze6zu3zpeUkDqHYYr0JFvEF1HvLKvnI1N6XkigRHOx0dcczi1Hy9JRkkg0eC7rJE/9R0U0e1
0jUFf3+eKkOt4TK33kF5UQvsERlJuP7+RWQt7QCInU4axZ3DLahgHXapycxEbh9KkbtAFy+JCXxD
dSsgIolZi/9UZtUDblcS1KNhVc6CF1jsqCgFUc9e1MY98S8fxTqW/8x8ihzPE/p4KZUobyk7SUBv
krMMsKXAJjRYlEFSdxR9/NyL8LBOeGOOU7zUGY2txvAcHKlclXJWLj3vb4rGyu+Jeek+Uq3m8Ikd
vXXyTDrBYgOqkByBBkTdIkQgVpvs0CSK1ix2XABhJe73nKHPSL69OR9spOlOI+DBPovUiC+uS4qL
Kj1WRhC5LJrgS0fixBN4ojfd+8issXeIl3dX1G1fy8Zdds208nHJHKKVHGLiakCanCQrP+hjmE/d
hYirH1Om0sE2QvAx4F2PU2Csvho8u7m8wpMk90TCIU7JieNkXKM/lV9UdgC017i1O50ugTMtllx/
wHCmK67HPczoQa2X1dwANiCIiVgSwUqeI1ryUFeqL7GkA9vTl/kbfMBWWMCN+ktgWmMJhyCIh04j
BVGXQhlKAPR710NM1ZuSNlKuaiND+bugzgI4wpAyckfvN391UhiPdjOYsOrFRHmm5uCSpKO1OYbJ
YLHDYZdHP/EceCM2HcZhPKdLAl6UvqHMgyh+/LpbvxUgcr3lbK3iPpz31K21SsMbOe2FEDwteyeN
i+6Avp1n0E/tQhNBayAg7SRr1RFDbzAlCS4ULJPPVIJaEZbUjQ4wNaXt0DK4WBkJ0m7rTWtr0SvD
ScgrIRPbPpeN9OUSAfJyABMyL8fW3HrEznYOYvyfwpLm+gToAWwwEvMEuQjyLmWvM0vUEYYlN93Y
BhzfgbG4eIKfZ3Vh+XXrHvA+U9l8M2EJGblnbZsO/++rOtWWh6Y4jDIUVgn6/UPj8UYDnvteC2Hk
HXqCAhlj8by7btCTCVsBD/IlBcPK6UasCtA2uKDnY+o5Yg16D9NDwNCXz3eCPqkmJBBd2K0467TH
Nw/ma/RHdgsnBfPUDvs0mIoTY+n1R0kAn+pa5q5TEKbDgXiiNBG45kBiFe7vyuxZSfL+eLhAjYTq
x+WhOs8K80AgeqLmUyBsRCeZPNUDophAnPFRunbjJTX1iHZ2ZfW1j67zIRCo/Q5M4V5ABeEZEu8R
HdY3jom0udJ8SPL+prAbeaNGDgSuIUOueqwrr+RKRHx8T/Qudy1R8+mA7Qnj8aoIHDdkMjQrPDqf
S2qT6pLVBiGPP1PmV+ZBRgH7TQqZrGWWcI9uipMu+7S+H9i0OycCmooma0chNCvvHx/d9qX9QwIt
bCq70XukKwCwlmGQh3AdRlFBqVAE2nCIQ0ahBD1u0KTZUlIMnBl7mIUDaUDLbPmPkRUtzrO5dlj0
fgHNLrssQlseysU5NLLuqZM5WmUCF3Yg8F1EbHKVtRwDI+o7j5ascg8xNUtXn8GN1tuP/rkAz3V3
nNyTR0ioxAapHsXZHC1y06LFUyjhLJKKtUE3a9J8E+KVXGB1UPPgZghzbLI1QczJAb99t4/iofX0
aNG1ZNuQMLD2vSvMbd37RvNd7AYVfa/h6kozuFtHTDgH1XbXuuP72Wy3djJUhDtTXcL/Jj0DmgZS
JbphwlgL+MbRL9SIeRhKyhSkKv3T+B905jELqlzy8cC0CEZ9wyUMrAljXzUAWevy9TIxq1cwgBNu
5SKETjAhpYXbMqOR6qPnjEW1ThO/gFWbpso0FU03JgFl3pTyFXItAYwdFZbvtBgUCphr2IuHVAg8
pBdSsM2Cps0wyLWim2NgKJM1MoL3VnfdL2Q9/HaSOmTUDdlX1xemihrcQtPUnllztxyDUpB+TC+P
9Fw5wlr/4kxPcU5LKeua7u5jS8pscmV2A0+pUuS5YS/vvogXjpvAAQqYpd9qk3p2pV29jINzjLGV
mvdfSikMbXgYwiro5HV0YOqKRaE+gWSJILLHG5ft3YwK0sfGaXEVgKtUGIujaKunDSnZWTnfJVTA
zZAhgAtQgNV5TWQquNXGTmBbMmDwglc4xRBS/gYtntyLvMHYFwRMhBQs+LnRqGvpwdY7kiDLFBOd
TtR60YiIohcJaWmRUVNDLHyDs9c3cPT9WMUEm21Df7LD7EG8uWpDBHnlVG5PFSw3XQ5P5I3dtTnJ
8SUKVCqwHVvASSGHqW+lkgYapWeawAQs7I5FJ0Gk5fx4kJCmKtxFh8zxuYuHf0ZQ9zHjUyPr0Zzd
djqRekifUh95FQbZQ+++SUq8Pb+UEW3bAbhntqPuZ8suWUv8yMDsxgPI3iEXM+5DT0Bb8DtUH4je
bfqss6L3fap+Q3LWUhdjDBsTQg7V0S+nG5n6Rdi9CTZQLfkzVZPKmsdA78yMorXPs0lIwiTPgLUW
LUfZ11NM85nfRhUa5Od8K5gkDfpoVIxZeJhHcIH1mtwm3J2g8SqYQAF2eooAp2WOf7K0Yps98XPu
zpJj/vHXFejHN9Y1S+0tDXZ2WRZHzTB/8OFEKQybT8OBScarUeWFIxptn87r+DE1p4mDczgRBzha
07c9qm1wumkiO3rY+AFo9giGDS+v1QsPUtGJqKml3GwGmhmy5+XPjc9R8hmwHl0+bX7OoY4OIgLb
c3SCETcBRNIFvB96u1/OeQ1Eu6vSSPWOndS6mYSfuJPVIY054P1kKSDmsUeXcyHef2sLGMFH6bLG
Zi1p3JKt4rL1u+cSITV7mAXnj3dszYuw9wZ2ALIX5OT911ryxGjmEorq4nW28czKDQR2ajaNEbXz
v8LMPAZd0DlV9SIpocHW2rApEONbSLkEtTj4pXhYFMIZg249x4H3pMpHL/1AN1/Nn+wNN/1GkGST
n+Na5dCjo/e+Dv4Io51Ubz2nhKXx3l951qqkdy9WBUkSqgZ0qPR7xO1Bq6o9EnL79TT1KIEQU71s
9dHRvMkVJ/DNsyBM6Xf4PyOas/BXHVWkRP9Xge437z5CiOCxbdNbwdk9snmPI7d/yYPNe6jHVdze
2UC0vOz+AJ8E3fJ/oSZFfWZqhL8O1LDhSZTO0EiKRVih9ne6QwfW4pYJlI0T6XVesHbVc195a4ue
QCV0GIKkyKjj7wjwijDekmO1lES4XHE0rff4HUQhdOarGrFm74GtF5WvU0P+qjiPMNkOzz8zL30m
slXaLRObki04wcAK+x3JOsR+/mmAmPCx9XlzwtAqHoLUQMqvG04SNGpdZK+LEDI4VFIUvUG/zwR7
IuCxggy6gkjCTj65gRbTHYlNN2iKIaD4zhqCSK+1yTY1X/DBvtuCxxYr3MqfH3rIQtRbcNT6mpt8
sQpOB8AQXVSN7rN68sqZM7TTP+uy8tEzT/Sc/OhrbFfQOUXSr3b88/3BV/Fa9yaIZ+w29pQgAFy6
zU4077EmlVUXO1mck3J0Ou3nfKaBoRKdEs5ZgsdC7I718cBI0J3x+qem2noua2FDFimbgApbNOl0
lDlANEQHqtokAfTolefcY/qOs8oWfOMO7H9EbmWLs9se2M8EmyOc/o4kASVLdle/jEHwRJqbD/Cn
NJMXHQYCG7ks/P9DaPVGqUxVPKeiGvnFdOkUk5fQ3L7cOwv241VVMOgeGxv+TzjH3Tea05vBLi6f
ac5flFHAmUbmrb2sw1xUge72o34ryxC7ku3M9tg6QZJwHB32Y2doHuGK6n1XzVYwSwqXCpXSEgwR
SDcAYy2STDRfk3mSjmZOAAcYyeKvnR/WuP9YMYeZR0NMUcJtKueZ3JNT6+LY5aN+dPo9ZuOTPCT4
FOsjtiwf2mZ53oout4XBZqFXX/7F/RIqx28gwXwIUggHKw7L4lZg2y2Zgk3/ccxxHx1zkuGMUjf0
VAUu4ymf6rXO79ckbb2V0XIS+p7bI1orqhI/vorK4x2f6g5BwaCg3F3bbYeQ2x5bBvjEW8R/A7EX
RxL73BJRU+cNrL+wAkae36CRX4edqY7OqhciMjilianFI/KGEF7Bb4YQjNG1P9XJH3s1rct7nAmB
aw8UR5UBE93q5MGTuf3MRkElaKKPSmwhtOfD6jyxJS7st3mtpgCrdvsrRvNCX2dl49I0HFN76xYL
2ha2Vc79jeoVkVteMT+hkjAY/GdhvfUZp2amygjNMyx083Qqas0PrprgdfGCatMr+wOBAhK6V29m
0AsoHJmM5QOwgPAUw7cf6mOe3goFPtgDO1HFmj28HbSwTkBP0QLmyGv1wkz67ntq6yptHytmdz7d
8SWlBmIQOB3vknb8Ku/NmnMdZzm4sAxEPo4WePlcBE9tUx8mOfFpzIcbOZheyOP4ElJ2zIZR14zm
1htTu2lBZyNQHGyJ6LQfhL5x0g59+3YE00CB/7xeuhnTdiQLSOmxcnLSPbjjmQ6z7mmCPmXexGCL
dpE6qO0RjxzUNmRL7h5spb0KOvHVCQbNGMD5xywg/GFIW72HUZ/kzooyWohMvNqQTD+4QEOACB6A
nrvBX+eIhrtQsb9GfCKxUf2G7tVleC8d+MD/oYSegcGUFJeKq7JkJnXDQI8AxbAB7JSYXEL7bien
RgaZTKilrMIy41PtWaZdpDPnvWj7G+741YF07eXlHTaS6FQqxQtEQdU4omZYCqf+Io9WSdWOs8MM
0zl9Z4184in7fvbCu3ZxGY1dOZxhJczhDzyNmiKgNjK5cuPstW+0wQiQTzppEXDiCXRReDB662Es
C6wAFCd5zR919E6woVO+fkhaMIeTeSm2n3oRb7lUh2IlgBELDQwoOs+n07pWY8UWSyfJhK0RSe4S
CcLbnPjkSxEBL7BD2cB3WAlscRabETwKjGgk5kxZMbjtko99q08Qhqw6Wttes1WLUe0tAh4tMF+x
YeZwLSedbl5KP2upMpIe7jzhvWPwe2lh/bmOvU1y4ai6zpxn0i5vgnKmnYEa5Kwz11fhf8E1T37x
k6C1HV6wcz2un0DbuUfDWOTRHohm9XsR2xlJmo/2xkdOc0E+NSwpSGsU5EsUl8p8+fmQHrnIqzOc
U3gEYSQ/qrrzZNZvwAJo/mNLFdB3oK7rBP9xCi+98u7/UReBl6aerUvhjaNoWcx5SLVfkS64n/dj
hSBL4o1sAAXzXYZkWUswZOqf5e2ZyWLDiUiX4lKR1q+d0eO6GkfjAJk+4642ecP7yzQCsqUpiJQi
4MwXHpgpn7abefayfNwLRCQwUhqyk7+UC+kjKvIfcMcfBMR5NyafNCC6xWP1YhMX0XyArF362uRj
gz/aJDb2Qe0+ieLDymDxRAocXLuty+8Ie5ijuF5bBZNRsKotl0pODktPHecoDA54oG97RT5k8cUh
inn4rmGOnEK2Qh30z773qyWbmvrMWlApS/RNIqp/8AgCDAQwNEJZr5tVqL51unQP+tK7UcCLpYib
cMZkGHv8iqN9VFDT4bXhdnN8X9YcaNXSBgBjl0Vv9h1KiFIdFutSBPXqgZKuqo869CnKZvh82xDB
E1lZsNhxJicpwHH3qCg6rDuEEPYNScrjDNID+iQPfjnwCZn90X6MCcxZF3u+0ggmn1TmTbFcGceD
uMcLsHbj8xa7IEOr1TQGFV92764jkUGO+skSayAwASVaNe8KXuDssuruE9HT2hCGDdu/UXNAHU6G
ZFcgq2YlaVgWH/a1Vf0LMXMWjRola8AIiB0DBYMfA3v2WQwnGxs+5Wc5McwkqEA8dIqCPtD2tIrM
fIT38pokB2OzDHVho4wvhnxW2ykOqk1SooO5Dmh7mQ44KWxdSRoMfMSi/fGAE9EpFokHspI26odz
LJzPWe9cIrqdl3znRb0r4Iz2cBmDmlLT3IZvnxDPoXHNZXtbXwwTZqHRnQQ9K2DR3pHzbTbTAMeF
uYMpOUcu76SxE6huAAVrnYuBLdvMLmRY/t65VY/TtIa24jePPV152x/+OszpGWSTHoqV0XJPnW8T
pDPbkUwDbAx24g6TxN/fIF9eyBV9vQ3mM6hMv0OiBFiXlVjwH9SmUM8Xy8ehCOHoKtoZpWrgJCdg
zgyw5ROVWrfrGuSn3179xkCvv8ekgxxi0wwcan9Nu1V0F5mF27PLyzse5suMH4fTNNjrSXdYRM99
H/DcC7ZtDRS2nd4LQPgEbTEqICBBWkjdpOrXNmPb6IQsGVqCadsm+682XaNzq08m+bqS9yCF16mi
W8etJkRIuUZqCXGYWOjbboyJkC9nGUUl4j9MDRM3QiNylBGNGdD1S47ka1Pnji2VbrBHMe5rMYrD
xoeTj8M5+1OnkHn4NpGExkMlelJ4r1iSNAzASAiXT16Xr3NiuOeRoFtyjomauAHPlp1/+6VqYRyd
hFC/Q8Tx+VtHoI/fvxz04rQpYhoeP9Z7IW8H2afwHh1Amz6ByRrrDhCL6WYSpM0zgxJttnsv7i9H
lk/WQwuvV0rLP+BBDF/3yAEtl4OGJLLYBo7cY8dQZ1y8jJ43Ki0fqUjxt9nVQD1a4Gqf5IeyBx+z
aZd9xExEN2mZMBlzoghLY3Q0cUsHXZ6dV8GYzUDmwJ0JsqZQOs7HpxLjtJzfJMWHngw0JwwTx6pc
EXzde8uV0tKUtqgtIeAxZiAoGDKFK8UIFDXRlD6oQ9Ew9l8cCHLiOi8/NCudGDACFHAWp+Ws4JcF
dDpLKA5nm7b441K6m/6LXfwn4tnokzvNPtQynuxJsR/k/ltMQyKSbMnIdsKVxqaFot1A3YxIYnb4
HF7YNbO+09zagcqVGuOneTqzqIoAQS3DsKKX14EtZ1scsCpqB8ioh+xDX77DSX+MXEYZNmTEYVKL
SrBWWfqPhKp9vC7uC2CGXFVgQFdR3jmxUdMIdQMKoYBPwDyzl8qZHRRA48SzD4QMpBgLp2sT7KY9
qLTm7ny65jDwPCRv0BNkER2Ye4PEC+mPgD1F2TYypPYQyDBMKpuqjElS0fBlmOMEpBrWSyHS+JLN
52X8lWrSr0oO/DmApv5eShgM+X7sNZjDLiqUMTxtP3r0fas3rij3x8juumD75pKymO4Axr9VfaDr
XDyT8Q0ohXu/wA3g7cCyBkJxStdqa74NDCBsml8WKm5JQOu60QTa7RRu83oJntL/12LnlcY21Unx
46Qj1F9e3OvnGtjA3BbKauC/lSBsybQ9kMeKdIALwjSs93sRs9p3MIsEnGEREjXJMBO10aEIgyme
9OSulo1J/tp8xAMR4p4mc6JMw/qrd5iKP0ZcmewFkg1ZrfCasOtFRBFdWQc7URFI/hxWuwuowONY
M/8Y3jt20lhl+8RU3AYCipR6Ey1xoDmgxwGQG7w/oKJfeoyad/UJ7lH2aGJgpLn8CGADZAR6sfUx
jpbtQS0mkk0CJe8WDOM6YoxK6nYVrk8Rj6ge+/Bzk5hp5jaR0KfMcqWwUQvZy5mh05ntfkYo2ceN
PfIxncDi/1wQ9R4RnGBsIXkvBQmfvoAeNzwJ/yaiv9dEKp9DDLYxa/gzxtwwbqPxa7tEwWrKlTQN
KUJhjDl6ZGsebPCzoyLB9bWE56WgtkSFE6Xy6NfZUrZlCoqOgVvUR1F/aUDbtsoIFnfykEwxuSjS
FK/+dRX0zAhcEKAY4W0TVpgJtZq8I0zFcI2+bcHo+qGJ9wqv9m94A6WspQKNcL1Rokgcu7nAockL
xX+occVAoyspZMzxzMCZLEU3cFCKDMPj2FeQRePnlKJ683oLhpcpJcsrY8PUACVqhYvffIeYbNJc
sLjMOdTwFk+nDSaSQiZrnLcEjyf2PvEeZKJTHdae8kGIbL3P/ccER4PJ4dbndL3P2JMHf4MmHrRh
fkji/dlGvOrS2SF21BsF81p0AYbtGC7xeFkHXgtUIacs76lkoCc6BnjgHjOvRfv+px1y4CKW+JZU
qHUUOAV3oz/mEqxhxNyE1WzhmENRWjeAx8HzeuFdr3iEsWeEDJUII/3b+d8Aojkv1g0Ry7hwHbbo
aFLW8FZ6z5wNQjVuctBBrYfh/W2iuXz3kUy2SFQZOfl7Ea0OYhkD8rqcZR+OqfxKGqKyhMcbdQxm
3WSOakCecw43wH01eO0wujLlS45UJ+Wyvn4h6VCbc9uWC9bb6K9bsbwDIFuKQIS3Tw5trYLtPUXX
oB675hr7i5/wVENND1u577V++ZyXwt4UelqNlAMjyHmEA5Cx+BTB55LWzwSaI+gHfLTr5lWw/vwn
k5BkVXhwclyv8qYfbS5KRa2FuwmF1aGNnqbSE5eybTeROkZTw3+hIV056qKOFiIYJu/5vog4P2Vt
6aiHBwlA31zBolvwTFEyp3JP7DtbDm6LT2I75OksHBpAHzQwVrGplYFu4iHYzSL019FZrPKnyO6z
8pDafPyfDFg5dqiEVM9dPhtYH/n2QxoDBYh9+dd03l52wCtEq8xA9VtWXLTy7Xg0xqeGuMwI5D7d
NmyqIES/wO0VinpO5lr1sDIB30o2MBo/Xbp9bpMxMtK2qWuBTxTE6aFD1OEtezgKv3XvMFeaUWQ3
uxHoaLVJge0Jg4/LhCPKuzST94mDy1G+3FaXV2eXcRZVBGgw4Kl3QepyyEqqHvh+eswE0kmuY2x+
CKB3VyJ6abkHbiH0Uu6zc1FYZeXZBB1ug5FYp9Wr8bBccjHMdA3D0yzV2S3cs49JaRwlEs8RiY4T
TcBmlCPVhHOvDitjob9Q+H7O7lWzkx9UiKgay+dZJbX5Acyz7hUghTlQtUh/w+FMSTMy7uHuXgy9
vkCWU/F1gHUf6xYQn5wPJN42YOB/QadHFrx7lae74dunFYdnTK11GiD9EFALVh+O7y5QyG9kuly/
gnEuCLKmv8s65+SFm200XTcJxZwNOBrA7UykZ3sjeWliLld1HRmVYl8Gl8bPdOFYIwL3dUui9dE+
kvkkknoZpjA32iMLczCRlWcWbsj4KZO7VIAellfM/fyIAoAcCJWJ/JuUmwaxFzOk9FUUGw+vRyBl
bdJvYsVtIYVyVGB/0p2qYFIb9R4yUOKJcJ5R1ZOVdux/Tg+gfh5detnLG4bffsV4hkTvDMAhLetR
M++mNnF8dwhHc/iXBAJsXEPQBOfTHklA74eOzWL4/8M+hDRE4JTPVLybtelNMEUXvPaPGd2OdJsS
dGTiqzxv37VPMJSVPqcxsNFliax97Cqdh/DI2RG9KEXEhZ4T152i93+YUUBCLkNZjUZnwjwbSmBy
/9+XPZRaSsAwyalQ2GOODXWCyRhf5hHs6J4CM0QxMBy+jKxunR0+dVcjtoGxycrIPLViTZdiiX2H
aSNOxTdfj5KbNGGFjJ8NgLNTsVPGCPNxB0pBH0pUWt9fCAlgqsrf1/6HsBNh2NQTLyZargnp6YF5
30cxiyh3BpHUj0p8SHlwRx5FvqtzyIRlhUnq1tyvkK+VIsIjEyGG1GZujHWWue43HPMj/bJz8fry
DbXuu9NK+T6xc+/AZoi0VL1IZVH4pfylUHWAlvi54AgXrYZ5QoQWksjLOyVNK7YIFEEPW0wyADSX
934iVcu83JBLmRygIT41QOgh0k4hVidXi7jrj4VWRmHhBfhf+jdXaqHrwPD+MRVv56ScE5gw6+ZC
kYNcJIq1+u9+DA9/KOOm2/LH5+ZZC+L+WChxBhUCE9j0SimNQWg9yHlCfBQkRWlxmSpcfklmcTVD
cGNGuarGqO9OoxyoHesl0XDIRJ3SPOeq4FWohC8sBHlig/sI5uTAP2HOZe/jVK7E/Kz/ERg+i8/z
62z/Uux8FgXf30vWB8HWTMJbLDhBqa73ks2FhwCJ+YTFNvp0uLps69VKJcTrwKuR1u142f4FkFkk
78B2YoqIKIiEY4sTn2U3NaFZFgkEgP4XPzRACFa/6C+8Kbk5jJw2+dzC1CO2H+GMUH6GaLR7XjeK
XttMkKiJS/YeMDS8K7PPfKlo3kohyWSId5crZUJ3b31b/itH2qdZkD3cmt2FY35s6KyZY/r+vVHT
aNC7BQEMaf3+KrJjGBQUQ4a7rTTkzwymSrnSTScMK4rqarSEf0IEaKpZhnowiFetlQELGJtw69eG
kDolCP4xz5OczZjLPnoe9UgbP6v0x9U0xs99KcAyoFD6A8KpodKSp9rjXto9GOTU0Yen7KChc/Gn
jEoJ+T8oMbjVgznWsXjt17f7ECTVfMriKLM+WVZZIg+ph/TOhzsz4do1OLPY4CwE2QGaOglBUzlu
bhW2E9a/UG68w/h2P+qzAdPbDU0ABggNv1GQzuW3RAsyY9i3Up5hl1Vl1NZn26ewddTVi1OBGb2p
/k/KjiyVF/KFvMieY7ujbRsV+YzyljN3ArkEx5h+WcMiKoyCFBPoChAEen4QLc+7T7IIfUrK4b43
fXCIbHf/bxaTcqOYLVXzSIH4SO2FaYe/ceC+8//Qv+/ASOm+Sh+i5sP5/iT9tVgOzrTb1YMGontG
o6a37+8PIwOsdXloSPPwv3aT1Ock3+H7l7wOlZf/XYH5MWpBlaVZy8Tk2PJf+WTSpxHi7l4+Mx+K
58Zs73T01bOlwylWd20tm+9CY7NLBSi8M91d1xHIbVY5GpvcT6m8RbKSv/6iKg/wCUffyGT6C621
pWDFvM3jgvuKXC+ipAcVHqL8032ggRm5YwL+9d3ti9gdk+tsac0yDL8gsQ8Rw4nVB/r6+fqvjRYY
UERxo/SkPIyqNaOWfIe6q85QTMxfiTVilL969Zril29q0f5Pu+M3i8lLZZz99c2NRW01/EqEggk0
tGkAClLJ4N3a8stPJrBil3Ussne7LF9LQFkW7Aq7LyGb22yLMxpm5hiWwJ6hSBafTtVpy+OuJtpR
7h6dvnqQFX7gv/gENffQiAzjqbp6h+DAQiJ2Q2Y3/DVu41EohApoYuP74s0VGvRztqxuWJ01L/56
Rydm3ZyZdX4x0VGQMufJn9FH5pLjYL8TBCcwLxjLQNdoao39UtiQoDHTko2LWbtWIY7t+oXS9WWB
wJtO2HtKACakJHXA7wsWE8QdekPyvbHV0za2ruVTkW2rpn2mu2m+KLG74FGfMLsJgxWomp+czlwK
gPd+M4TmPFMhpLWIfMz8WRXVkmTIShOUG6zxdfCFVVF644GYN9LtS8MvCZb3pI2pr2cc2P9zJUNd
2WpgGb0UQ8+CeKTm3InlZmQaSurcejnvhZyAVgKa6liqMU4UhRPdhCQohKhuC1988GkpVzW0OSex
HArKz39o/W/FW3maMzh0QqXT4OedzqKsUbBrSc2noTKhyIvI3s75UhVnYUuZotj2CIlImu1w6M5e
DUX4vckXXHPs2QTinzmTpjAH8EKwIl38dnhJWDwq0azPjUMp1dld7voEX5+0ppYG0rFAJhrCzt3f
hah2Jtv2y9f0JH23Nb5Hydy9juoqTqTCpsq6hquEzr4trm7pKa2S1YbEM2mP5d+AbG62x5IBecsi
p/QTXNRhyi7SsJgcosyCs1L6bspG4XE4UWQoBKK6Q71IAHvhdz0N2l8G5rmZp7rRiopN2H3OKr6t
6ZM4+YE68xlE2uHeZGDQLtLCiMSAW1zbF7IJ2UEF9SQs9cKiCPkmkwR503vTktXl91BVpJQXH1/+
mhjZOP0GymQelyEUE4bAEevuIjCtnFwPBwT3P6qTM0RM7etuX80r75uQamJsc1uopZWiby3yvQnv
ZVvyI1nx3/SYb+4+rbDwldcDfQkhnXCk7OnZm3/tP9zlPDuczA63rpbXuWgfB7iHHHYGvOcW5AZJ
tKBGGaHdFVoDygTiZOcsAIwuICKV9qe6lPXheXfMFt6AXY6gZxJfZd+EhxqbeMX0KZpksNa8CRtY
hIOBkrCZKRuN6ZuDXxsWS4oN0bTiBevyqXKacNUMkTK0itr8+YCZ1JwdSSvASV52708FC7Fex1ru
R4zzcIgqxhfaYpXWt+9H7O2d4vhwQFY8X6tMhJk4nlnjZR9B0CH4FrLhOz/6bzJg8bkeSi/SCxNW
XNpZAtQkcimyuPrzQACOtwx8DX81rqIqMbJf4APsSZ1Y5fjNgaq58mIEJ/PKaMtaHBepDIugrKrx
laG40mqidVm44o9p7dA9grVqmNrbjsYrYNLGLfg5nv/bUdHyngQXbBphu9W2UEz7YOKuizndPgvK
yEaxobLqWT0sFK0ugQJ0hdER5IvjWKxNi98GGO0UREeKsfhXji7nEO14jK3uOK8n0io0G/WDNrYG
LwEAw0TUqAAra0k+93/5/Hlt4r2pe5IfA4jYNAxJk1RREuXVKJBGMVDI5MdoH9QwKhXZiJBwE7Od
evm0rec/XbhSCuDGsI2nyDWhRUBDtvnyhhk2yQf8WxA8tmbNF+VVrd6js6L5Gr59b7OqDCS+RIt3
WozUx3eW4kLNkfD0G1a9k7GSjNgWNcrBs0k9tkgHI7iN8+GByeF/Rd/6PSvqVSaOcZQ85Lr3f2Vx
majF67J6FzkCMNXYNrIFKf8hNvYKVb7akS+98oFJyWMKkEvf3NGge+e0fW1paPAzwRm1QYhK6rwP
cJhrAKI0So/jWes1EJZJ0T+xEKFXiL6vDm1A1MrOb/OyNSkakcfJKYwNUcJSSV6H6LjJT/cZ5mg7
XTIovOaORhxbBk9M4zg7B72wJT004rurfcZGOALz8Uygjo903ai8/fivyK/2KVOEWrKBguGrDH9E
O3LTsK3Xv8yw6RjSiGLuey54WK7PcFRXAyelx4IU0GDX0y8rsvA6IpLgD+CYWL7qvmsUJQmxCVYV
9oG47xQGub/0d91MiZqGIgB5qDqKhYE2Wglp3V7Nj5Szzc7JJ+bjH/4Tu88KD6aPyMNuhHbTaY85
DDvKj9vvXOWD54eSKKCmnMQ7aL6c/eAzN7BL7ERlfGZMEQaONNi1jLvbmW4UZ6h4UtzVlzIKzsjm
X153j7WXpYkWhLFotbNpIJ9uztLLaDlaxnPtjU1L5qcJPCBPlllFEp3MwxTE5+f/qdQGK0O4sSys
8E+GFmmyCPwq64Yu9f1jT9/yOQ2RWgSBdVZ64pwYrUygXT5/CStbWvC/9sW+PAcuwW4cKxL3feBg
jQnkM6QWK0ZQ3kQkoU3I1zopaFCHl5tzQbr1x9knYnPzSKFeIzrRG2NG6IRJ02z1TnD5KqlVcM7v
83RO7/bjoSmY8KvMpYtrdENe95ToQ0ESqQjWRignN0oHAY1mSc0Wu6R+W6yBNvv4UHKJBHCW7qle
66U2f5zMPBR56htp8tEKbg30Edg4J1iSvd2Ob69AmaFz1f5WNKxQSrtIzOmo877mxpdV9GDwx+3B
7AsEqGHYORd0AhBVaU7QID7eAsgISOUgFjgJfZsslAHnWyQMx9KF5lM3hndrsnTAvlkRRUUJZoTW
mr1PNQC23tiOSh5PmVwfyidM2l+Y3wIAPeVUnKrGQQNpajHKELI8VsPPBvWjFjJ4VDYLfWS6l0/V
EU+JMQhYcrYBqeyjw8Rib/b+NBb2Vdydmzg/Wdy+1+XMNG7kJtOP8tUzaMC5oMMCFRNe/wxo7SzV
jbK4w71pPPZ7u6KCqSsgeA4Htv9T8dPwLFoLOVxC64bRt7Nx614IUCDP8Z302j51lvtSjm25BGIy
ekTVBBwQGR3imfdc+HYZ5VVskaOdgAnZ7kARWAodxlqULdXzaDkvh0Ybm0Ywt+wezbUJY53ohxBD
YWsQj7jgi44EcWE9aG8ZRAQYk9QVOIsLHdf+iiAngU6HlWy1f/84q2BmeFeJqq2Jrt/KCHleXKQm
s8riYFU0CLVsHYfzwYA8RdHrOsKip6uEORv0snDg6DVofVgdqcjkoEBpNjyfUQqMXqib2wkPGhAf
XDfUZjBRRwU2o/KFf2R03H5j1nrwJb4AqDDthzfirv8fwgkrifMQ79+nfXRKGTTGxU0vwz2MVbLB
6KVnYLk2g7cm64A8Sz7cq/VxnDqwDijAcJilvUZR8sGKOhBVeit4Hni/+iV+mk/Yt7gBtvSDkFMb
9+4yWA6H3Tfiebrz9y4EbEnKgVS0PDT05YYb+RkZWgStzOJdD1odNzC0SzFjFwwCFO/9ZG/xjT5/
nC5W5sEUeanI5BHweINuzvzCyMvNqVsLztZlE8if+nNIO8g2ZdJ8vTlrCoUqtlwfLgosdtUxao8Z
RzxXJmrnrmmjj354GwX8PKQlCiaWNMK9fwu6VRlk07ZCVbyQv37roEq0q/hQgodCcg6ApMwFZNa0
Rxa0IMdrT/ZO/d0bIO8Ikpkm3m+cQo4Zg8CbycJa562VwEHreXQLe673KoWICKP8krqWeEyPeKsd
lxKPQImL8/PSV5Ftjs9Aqz2Wqf2tdK9d0LgCWw633IcUZNn1lVFn31OTbN7J5Y+xVEQSa86yzZY0
S+FTgb5BUNX09swEeDOLkmJKYW11c4DkzSItvYXXuol7PsadkPlk2LXJB5eB5tDf1VTfgHvKqNr3
TnyQuVwvpY5ybq8JrlM81K0FYgCWrXynZrnSCu7TPn1rs2QWiBqAg4686FvVGuWy1jqdpZTc0kqk
++IixKCelyFbqfnemZ9nWZdRFXqaffk8/EgJEZAMYc7aiUdHlGH6kBQRnc6Oq/JnfnKtzYvJN0aH
5nvYIevoCZ3NB7bXkJuDx1giGHX9JOpwTBkFoHZ5RFVyfsT2f7NUjg11+093wTC2SnopTUmdSh25
BAJKW/kXMJkB0Na+vFpQEsjk5vgJw3F+lBN85VBFSzS9z8Jt/UnQKz4VPz/OQhtmzfC5L1UEnwxq
q64P26TTkTIFqik0Ff5dOzE/NWAHtyU/R8t3ccy0oYap+i89/9FRGnDcpwrkkM26UWV43nyq2KS+
zwsQVbcS+zrt16qTGGPRAEDBK+hql58qEGWDY7cT+7QfHxibNaCcyTfdAyOVN9CNb6ft7wH66jqD
GBBUo2Mj2OmlXpwZUS77q8GI3uEiK5C+eSXOwcCyTAxnnvPxiqI/LjWy4CHMC+pY88f8f12MAHnP
M545NbUpyMNAXVd+hc7mCt5qGD84ASNrd2jA+xKQ0tn6utZkwWrk8zAmHfQjoWjGnc2rVXvdSHB8
jyUiNvlAnxj42bXaDvBCGPsRF0ilse0Wowbz4Yx6wYsPbdNUueN1VYRCJi7TzKKqPQAOoBOSM+gs
t72pbo978m5P5A3/n9BfBonta8jXKB1BrHJX44JmeJfipwWJDnON+bO9H1oItEO7lsOvf1SH+Izo
F1xht//2blpyW/MGjk2pKeHgjF+28upZ3Z6XpicePwvf+xKrjP31JW6yELhhecKnrIi6wz3tlTo5
rKPImztfoQbSHTRKcgIn3MXCj9YuaRqlB5bwbrEFJ35pVxZP2Szq5SodC6hvvhGQ2i8Jz2+0BnYo
JQm/9XlY/r5n18+ksD5G5hAYJgYKhOkZx0qnw83fZnTTZmPf37dBgeUSLCLahIr3f7E9AgGJPhPP
3UU2rdiGNwi70Sq2VZyi4nqdH90q//aN5hfP7kSLf0KRH5fAo1UajNO/6ysTiZH56h5v1ikYgEVI
/pjKo6n5Pc+lSOGzDQvqIBNUVg+YudkzKp6HWIAPjw0W41j5DAw5ch7XWCYBIf4VcdHhS8kFrf2r
1tqN9otQgmYwZsZqg0F3kCER6Bnt7/mp0aEv0uGzpMCtyx3sQ4fXtFqdEgRWFY03Cg7tFZfofFz/
WQzHn/TLrqxjvB7cb5ndcq574toqOoo0b1QGO3n/EmStlqPeirwKYszqmx2zh1UaMqhrhTOTrNIp
DfGjAJZUt+YdvGP6O3/TASLU/blqNdehZBJWNueJyEK6o6zZddWAsx01fv+8pmalZ2W0VXrxaA54
cXloX/1OSbIT3u6JMW9y9ZF6ZYTiTSeVdBHfnUeyX2yqRTX56yssF/AHncqRoFAE+WOhdFpzkHF+
pmR8sc4edTfbUKy9TyRfS7w8F8zcotAYP/DNO1mnJDcp4uscGk8bWQokO3zbD5RXKy9YcSu1MFda
Sy4IoP5VYY8nuLJ9qeUEvFDVnjiu5J+0Hf0E84EDUBv4Juhs0AE1+g/Er7kl64hwuMsIBbI/GeGT
IVtU/ep8fuylWIMgDycSKVn69dZFCNJSyjhCRG8LpfNASLwHVufmBt86m6ommRfYApX8mk9Tq54d
gfMqF5LgsP2EXsvZfz/00nSgVDgT4oXqdNNp/LUPpwd5wRNvf5dQOlnkKhZVzco/yCeWNFYeZJza
+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
pwZB+Q==
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
