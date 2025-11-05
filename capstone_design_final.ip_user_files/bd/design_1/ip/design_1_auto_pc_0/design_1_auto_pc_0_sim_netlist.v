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
5dQjXA==
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
