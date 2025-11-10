//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Sun Nov  9 22:39:31 2025
//Host        : DESKTOP-EGRO0RF running 64-bit major release  (build 9200)
//Command     : generate_target sa_engine_ip_v1_0_bfm_1.bd
//Design      : sa_engine_ip_v1_0_bfm_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "sa_engine_ip_v1_0_bfm_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=sa_engine_ip_v1_0_bfm_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "sa_engine_ip_v1_0_bfm_1.hwdef" *) 
module sa_engine_ip_v1_0_bfm_1
   (ACLK,
    ARESETN);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET ARESETN, CLK_DOMAIN sa_engine_ip_v1_0_bfm_1_ACLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ARESETN;

  wire ACLK_1;
  wire ARESETN_1;
  wire [31:0]sa_engine_ip_0_M00_AXI_ARADDR;
  wire [1:0]sa_engine_ip_0_M00_AXI_ARBURST;
  wire [3:0]sa_engine_ip_0_M00_AXI_ARCACHE;
  wire [0:0]sa_engine_ip_0_M00_AXI_ARID;
  wire [7:0]sa_engine_ip_0_M00_AXI_ARLEN;
  wire sa_engine_ip_0_M00_AXI_ARLOCK;
  wire [2:0]sa_engine_ip_0_M00_AXI_ARPROT;
  wire [3:0]sa_engine_ip_0_M00_AXI_ARQOS;
  wire sa_engine_ip_0_M00_AXI_ARREADY;
  wire [0:0]sa_engine_ip_0_M00_AXI_ARUSER;
  wire sa_engine_ip_0_M00_AXI_ARVALID;
  wire [31:0]sa_engine_ip_0_M00_AXI_AWADDR;
  wire [1:0]sa_engine_ip_0_M00_AXI_AWBURST;
  wire [3:0]sa_engine_ip_0_M00_AXI_AWCACHE;
  wire [0:0]sa_engine_ip_0_M00_AXI_AWID;
  wire [7:0]sa_engine_ip_0_M00_AXI_AWLEN;
  wire sa_engine_ip_0_M00_AXI_AWLOCK;
  wire [2:0]sa_engine_ip_0_M00_AXI_AWPROT;
  wire [3:0]sa_engine_ip_0_M00_AXI_AWQOS;
  wire sa_engine_ip_0_M00_AXI_AWREADY;
  wire [0:0]sa_engine_ip_0_M00_AXI_AWUSER;
  wire sa_engine_ip_0_M00_AXI_AWVALID;
  wire [0:0]sa_engine_ip_0_M00_AXI_BID;
  wire sa_engine_ip_0_M00_AXI_BREADY;
  wire [1:0]sa_engine_ip_0_M00_AXI_BRESP;
  wire [0:0]sa_engine_ip_0_M00_AXI_BUSER;
  wire sa_engine_ip_0_M00_AXI_BVALID;
  wire [31:0]sa_engine_ip_0_M00_AXI_RDATA;
  wire [0:0]sa_engine_ip_0_M00_AXI_RID;
  wire sa_engine_ip_0_M00_AXI_RLAST;
  wire sa_engine_ip_0_M00_AXI_RREADY;
  wire [1:0]sa_engine_ip_0_M00_AXI_RRESP;
  wire [0:0]sa_engine_ip_0_M00_AXI_RUSER;
  wire sa_engine_ip_0_M00_AXI_RVALID;
  wire [31:0]sa_engine_ip_0_M00_AXI_WDATA;
  wire sa_engine_ip_0_M00_AXI_WLAST;
  wire sa_engine_ip_0_M00_AXI_WREADY;
  wire [3:0]sa_engine_ip_0_M00_AXI_WSTRB;
  wire [0:0]sa_engine_ip_0_M00_AXI_WUSER;
  wire sa_engine_ip_0_M00_AXI_WVALID;
  wire [31:0]slave_0_M_AXI_ARADDR;
  wire [2:0]slave_0_M_AXI_ARPROT;
  wire slave_0_M_AXI_ARREADY;
  wire slave_0_M_AXI_ARVALID;
  wire [31:0]slave_0_M_AXI_AWADDR;
  wire [2:0]slave_0_M_AXI_AWPROT;
  wire slave_0_M_AXI_AWREADY;
  wire slave_0_M_AXI_AWVALID;
  wire slave_0_M_AXI_BREADY;
  wire [1:0]slave_0_M_AXI_BRESP;
  wire slave_0_M_AXI_BVALID;
  wire [31:0]slave_0_M_AXI_RDATA;
  wire slave_0_M_AXI_RREADY;
  wire [1:0]slave_0_M_AXI_RRESP;
  wire slave_0_M_AXI_RVALID;
  wire [31:0]slave_0_M_AXI_WDATA;
  wire slave_0_M_AXI_WREADY;
  wire [3:0]slave_0_M_AXI_WSTRB;
  wire slave_0_M_AXI_WVALID;

  assign ACLK_1 = ACLK;
  assign ARESETN_1 = ARESETN;
  sa_engine_ip_v1_0_bfm_1_master_0_0 master_0
       (.aclk(ACLK_1),
        .aresetn(ARESETN_1),
        .s_axi_araddr(sa_engine_ip_0_M00_AXI_ARADDR),
        .s_axi_arburst(sa_engine_ip_0_M00_AXI_ARBURST),
        .s_axi_arcache(sa_engine_ip_0_M00_AXI_ARCACHE),
        .s_axi_arid(sa_engine_ip_0_M00_AXI_ARID),
        .s_axi_arlen(sa_engine_ip_0_M00_AXI_ARLEN),
        .s_axi_arlock(sa_engine_ip_0_M00_AXI_ARLOCK),
        .s_axi_arprot(sa_engine_ip_0_M00_AXI_ARPROT),
        .s_axi_arqos(sa_engine_ip_0_M00_AXI_ARQOS),
        .s_axi_arready(sa_engine_ip_0_M00_AXI_ARREADY),
        .s_axi_aruser(sa_engine_ip_0_M00_AXI_ARUSER),
        .s_axi_arvalid(sa_engine_ip_0_M00_AXI_ARVALID),
        .s_axi_awaddr(sa_engine_ip_0_M00_AXI_AWADDR),
        .s_axi_awburst(sa_engine_ip_0_M00_AXI_AWBURST),
        .s_axi_awcache(sa_engine_ip_0_M00_AXI_AWCACHE),
        .s_axi_awid(sa_engine_ip_0_M00_AXI_AWID),
        .s_axi_awlen(sa_engine_ip_0_M00_AXI_AWLEN),
        .s_axi_awlock(sa_engine_ip_0_M00_AXI_AWLOCK),
        .s_axi_awprot(sa_engine_ip_0_M00_AXI_AWPROT),
        .s_axi_awqos(sa_engine_ip_0_M00_AXI_AWQOS),
        .s_axi_awready(sa_engine_ip_0_M00_AXI_AWREADY),
        .s_axi_awuser(sa_engine_ip_0_M00_AXI_AWUSER),
        .s_axi_awvalid(sa_engine_ip_0_M00_AXI_AWVALID),
        .s_axi_bid(sa_engine_ip_0_M00_AXI_BID),
        .s_axi_bready(sa_engine_ip_0_M00_AXI_BREADY),
        .s_axi_bresp(sa_engine_ip_0_M00_AXI_BRESP),
        .s_axi_buser(sa_engine_ip_0_M00_AXI_BUSER),
        .s_axi_bvalid(sa_engine_ip_0_M00_AXI_BVALID),
        .s_axi_rdata(sa_engine_ip_0_M00_AXI_RDATA),
        .s_axi_rid(sa_engine_ip_0_M00_AXI_RID),
        .s_axi_rlast(sa_engine_ip_0_M00_AXI_RLAST),
        .s_axi_rready(sa_engine_ip_0_M00_AXI_RREADY),
        .s_axi_rresp(sa_engine_ip_0_M00_AXI_RRESP),
        .s_axi_ruser(sa_engine_ip_0_M00_AXI_RUSER),
        .s_axi_rvalid(sa_engine_ip_0_M00_AXI_RVALID),
        .s_axi_wdata(sa_engine_ip_0_M00_AXI_WDATA),
        .s_axi_wlast(sa_engine_ip_0_M00_AXI_WLAST),
        .s_axi_wready(sa_engine_ip_0_M00_AXI_WREADY),
        .s_axi_wstrb(sa_engine_ip_0_M00_AXI_WSTRB),
        .s_axi_wuser(sa_engine_ip_0_M00_AXI_WUSER),
        .s_axi_wvalid(sa_engine_ip_0_M00_AXI_WVALID));
  sa_engine_ip_v1_0_bfm_1_sa_engine_ip_0_0 sa_engine_ip_0
       (.m00_axi_aclk(ACLK_1),
        .m00_axi_araddr(sa_engine_ip_0_M00_AXI_ARADDR),
        .m00_axi_arburst(sa_engine_ip_0_M00_AXI_ARBURST),
        .m00_axi_arcache(sa_engine_ip_0_M00_AXI_ARCACHE),
        .m00_axi_aresetn(ARESETN_1),
        .m00_axi_arid(sa_engine_ip_0_M00_AXI_ARID),
        .m00_axi_arlen(sa_engine_ip_0_M00_AXI_ARLEN),
        .m00_axi_arlock(sa_engine_ip_0_M00_AXI_ARLOCK),
        .m00_axi_arprot(sa_engine_ip_0_M00_AXI_ARPROT),
        .m00_axi_arqos(sa_engine_ip_0_M00_AXI_ARQOS),
        .m00_axi_arready(sa_engine_ip_0_M00_AXI_ARREADY),
        .m00_axi_aruser(sa_engine_ip_0_M00_AXI_ARUSER),
        .m00_axi_arvalid(sa_engine_ip_0_M00_AXI_ARVALID),
        .m00_axi_awaddr(sa_engine_ip_0_M00_AXI_AWADDR),
        .m00_axi_awburst(sa_engine_ip_0_M00_AXI_AWBURST),
        .m00_axi_awcache(sa_engine_ip_0_M00_AXI_AWCACHE),
        .m00_axi_awid(sa_engine_ip_0_M00_AXI_AWID),
        .m00_axi_awlen(sa_engine_ip_0_M00_AXI_AWLEN),
        .m00_axi_awlock(sa_engine_ip_0_M00_AXI_AWLOCK),
        .m00_axi_awprot(sa_engine_ip_0_M00_AXI_AWPROT),
        .m00_axi_awqos(sa_engine_ip_0_M00_AXI_AWQOS),
        .m00_axi_awready(sa_engine_ip_0_M00_AXI_AWREADY),
        .m00_axi_awuser(sa_engine_ip_0_M00_AXI_AWUSER),
        .m00_axi_awvalid(sa_engine_ip_0_M00_AXI_AWVALID),
        .m00_axi_bid(sa_engine_ip_0_M00_AXI_BID),
        .m00_axi_bready(sa_engine_ip_0_M00_AXI_BREADY),
        .m00_axi_bresp(sa_engine_ip_0_M00_AXI_BRESP),
        .m00_axi_buser(sa_engine_ip_0_M00_AXI_BUSER),
        .m00_axi_bvalid(sa_engine_ip_0_M00_AXI_BVALID),
        .m00_axi_init_axi_txn(1'b0),
        .m00_axi_rdata(sa_engine_ip_0_M00_AXI_RDATA),
        .m00_axi_rid(sa_engine_ip_0_M00_AXI_RID),
        .m00_axi_rlast(sa_engine_ip_0_M00_AXI_RLAST),
        .m00_axi_rready(sa_engine_ip_0_M00_AXI_RREADY),
        .m00_axi_rresp(sa_engine_ip_0_M00_AXI_RRESP),
        .m00_axi_ruser(sa_engine_ip_0_M00_AXI_RUSER),
        .m00_axi_rvalid(sa_engine_ip_0_M00_AXI_RVALID),
        .m00_axi_wdata(sa_engine_ip_0_M00_AXI_WDATA),
        .m00_axi_wlast(sa_engine_ip_0_M00_AXI_WLAST),
        .m00_axi_wready(sa_engine_ip_0_M00_AXI_WREADY),
        .m00_axi_wstrb(sa_engine_ip_0_M00_AXI_WSTRB),
        .m00_axi_wuser(sa_engine_ip_0_M00_AXI_WUSER),
        .m00_axi_wvalid(sa_engine_ip_0_M00_AXI_WVALID),
        .s00_axi_aclk(ACLK_1),
        .s00_axi_araddr(slave_0_M_AXI_ARADDR[5:0]),
        .s00_axi_aresetn(ARESETN_1),
        .s00_axi_arprot(slave_0_M_AXI_ARPROT),
        .s00_axi_arready(slave_0_M_AXI_ARREADY),
        .s00_axi_arvalid(slave_0_M_AXI_ARVALID),
        .s00_axi_awaddr(slave_0_M_AXI_AWADDR[5:0]),
        .s00_axi_awprot(slave_0_M_AXI_AWPROT),
        .s00_axi_awready(slave_0_M_AXI_AWREADY),
        .s00_axi_awvalid(slave_0_M_AXI_AWVALID),
        .s00_axi_bready(slave_0_M_AXI_BREADY),
        .s00_axi_bresp(slave_0_M_AXI_BRESP),
        .s00_axi_bvalid(slave_0_M_AXI_BVALID),
        .s00_axi_rdata(slave_0_M_AXI_RDATA),
        .s00_axi_rready(slave_0_M_AXI_RREADY),
        .s00_axi_rresp(slave_0_M_AXI_RRESP),
        .s00_axi_rvalid(slave_0_M_AXI_RVALID),
        .s00_axi_wdata(slave_0_M_AXI_WDATA),
        .s00_axi_wready(slave_0_M_AXI_WREADY),
        .s00_axi_wstrb(slave_0_M_AXI_WSTRB),
        .s00_axi_wvalid(slave_0_M_AXI_WVALID));
  sa_engine_ip_v1_0_bfm_1_slave_0_0 slave_0
       (.aclk(ACLK_1),
        .aresetn(ARESETN_1),
        .m_axi_araddr(slave_0_M_AXI_ARADDR),
        .m_axi_arprot(slave_0_M_AXI_ARPROT),
        .m_axi_arready(slave_0_M_AXI_ARREADY),
        .m_axi_arvalid(slave_0_M_AXI_ARVALID),
        .m_axi_awaddr(slave_0_M_AXI_AWADDR),
        .m_axi_awprot(slave_0_M_AXI_AWPROT),
        .m_axi_awready(slave_0_M_AXI_AWREADY),
        .m_axi_awvalid(slave_0_M_AXI_AWVALID),
        .m_axi_bready(slave_0_M_AXI_BREADY),
        .m_axi_bresp(slave_0_M_AXI_BRESP),
        .m_axi_bvalid(slave_0_M_AXI_BVALID),
        .m_axi_rdata(slave_0_M_AXI_RDATA),
        .m_axi_rready(slave_0_M_AXI_RREADY),
        .m_axi_rresp(slave_0_M_AXI_RRESP),
        .m_axi_rvalid(slave_0_M_AXI_RVALID),
        .m_axi_wdata(slave_0_M_AXI_WDATA),
        .m_axi_wready(slave_0_M_AXI_WREADY),
        .m_axi_wstrb(slave_0_M_AXI_WSTRB),
        .m_axi_wvalid(slave_0_M_AXI_WVALID));
endmodule
