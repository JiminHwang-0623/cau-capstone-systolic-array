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
6luf7w==
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
