//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_ed1e.bd
//Design : bd_ed1e
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_ed1e,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_ed1e,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "Adc3444_TCP_system_Trig_Ch0_0.hwdef" *) 
module bd_ed1e
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arburst,
    SLOT_0_AXI_arcache,
    SLOT_0_AXI_arlen,
    SLOT_0_AXI_arlock,
    SLOT_0_AXI_arprot,
    SLOT_0_AXI_arqos,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arsize,
    SLOT_0_AXI_aruser,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awburst,
    SLOT_0_AXI_awcache,
    SLOT_0_AXI_awlen,
    SLOT_0_AXI_awlock,
    SLOT_0_AXI_awprot,
    SLOT_0_AXI_awqos,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awsize,
    SLOT_0_AXI_awuser,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bresp,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rlast,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rresp,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wlast,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wstrb,
    SLOT_0_AXI_wvalid,
    clk,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 5, AWUSER_WIDTH 5, BUSER_WIDTH 0, CLK_DOMAIN Adc3444_TCP_TriggerCh_0_2_m_axi_clk, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI3, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_0_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST" *) input [1:0]SLOT_0_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE" *) input [3:0]SLOT_0_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN" *) input [3:0]SLOT_0_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLOCK" *) input [1:0]SLOT_0_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT" *) input [2:0]SLOT_0_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARQOS" *) input [3:0]SLOT_0_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY" *) input SLOT_0_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE" *) input [2:0]SLOT_0_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARUSER" *) input [4:0]SLOT_0_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID" *) input SLOT_0_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR" *) input [31:0]SLOT_0_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST" *) input [1:0]SLOT_0_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE" *) input [3:0]SLOT_0_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN" *) input [3:0]SLOT_0_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLOCK" *) input [1:0]SLOT_0_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT" *) input [2:0]SLOT_0_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWQOS" *) input [3:0]SLOT_0_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY" *) input SLOT_0_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE" *) input [2:0]SLOT_0_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWUSER" *) input [4:0]SLOT_0_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID" *) input SLOT_0_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY" *) input SLOT_0_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP" *) input [1:0]SLOT_0_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID" *) input SLOT_0_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA" *) input [63:0]SLOT_0_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST" *) input SLOT_0_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY" *) input SLOT_0_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP" *) input [1:0]SLOT_0_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID" *) input SLOT_0_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA" *) input [63:0]SLOT_0_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST" *) input SLOT_0_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY" *) input SLOT_0_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB" *) input [7:0]SLOT_0_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID" *) input SLOT_0_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXI, ASSOCIATED_RESET resetn, CLK_DOMAIN Adc3444_TCP_TriggerCh_0_2_m_axi_clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, POLARITY ACTIVE_LOW" *) input resetn;

  wire [31:0]Conn_ARADDR;
  wire [1:0]Conn_ARBURST;
  wire [3:0]Conn_ARCACHE;
  wire [3:0]Conn_ARLEN;
  wire [1:0]Conn_ARLOCK;
  wire [2:0]Conn_ARPROT;
  wire [3:0]Conn_ARQOS;
  wire Conn_ARREADY;
  wire [2:0]Conn_ARSIZE;
  wire [4:0]Conn_ARUSER;
  wire Conn_ARVALID;
  wire [31:0]Conn_AWADDR;
  wire [1:0]Conn_AWBURST;
  wire [3:0]Conn_AWCACHE;
  wire [3:0]Conn_AWLEN;
  wire [1:0]Conn_AWLOCK;
  wire [2:0]Conn_AWPROT;
  wire [3:0]Conn_AWQOS;
  wire Conn_AWREADY;
  wire [2:0]Conn_AWSIZE;
  wire [4:0]Conn_AWUSER;
  wire Conn_AWVALID;
  wire Conn_BREADY;
  wire [1:0]Conn_BRESP;
  wire Conn_BVALID;
  wire [63:0]Conn_RDATA;
  wire Conn_RLAST;
  wire Conn_RREADY;
  wire [1:0]Conn_RRESP;
  wire Conn_RVALID;
  wire [63:0]Conn_WDATA;
  wire Conn_WLAST;
  wire Conn_WREADY;
  wire [7:0]Conn_WSTRB;
  wire Conn_WVALID;
  wire clk_1;
  wire [1:0]net_slot_0_axi_ar_cnt;
  wire [1:0]net_slot_0_axi_ar_ctrl;
  wire [31:0]net_slot_0_axi_araddr;
  wire [1:0]net_slot_0_axi_arburst;
  wire [3:0]net_slot_0_axi_arcache;
  wire [3:0]net_slot_0_axi_arlen;
  wire [1:0]net_slot_0_axi_arlock;
  wire [2:0]net_slot_0_axi_arprot;
  wire [3:0]net_slot_0_axi_arqos;
  wire net_slot_0_axi_arready;
  wire [2:0]net_slot_0_axi_arsize;
  wire [4:0]net_slot_0_axi_aruser;
  wire net_slot_0_axi_arvalid;
  wire [1:0]net_slot_0_axi_aw_cnt;
  wire [1:0]net_slot_0_axi_aw_ctrl;
  wire [31:0]net_slot_0_axi_awaddr;
  wire [1:0]net_slot_0_axi_awburst;
  wire [3:0]net_slot_0_axi_awcache;
  wire [3:0]net_slot_0_axi_awlen;
  wire [1:0]net_slot_0_axi_awlock;
  wire [2:0]net_slot_0_axi_awprot;
  wire [3:0]net_slot_0_axi_awqos;
  wire net_slot_0_axi_awready;
  wire [2:0]net_slot_0_axi_awsize;
  wire [4:0]net_slot_0_axi_awuser;
  wire net_slot_0_axi_awvalid;
  wire [1:0]net_slot_0_axi_b_cnt;
  wire [1:0]net_slot_0_axi_b_ctrl;
  wire net_slot_0_axi_bready;
  wire [1:0]net_slot_0_axi_bresp;
  wire net_slot_0_axi_bvalid;
  wire [1:0]net_slot_0_axi_r_cnt;
  wire [2:0]net_slot_0_axi_r_ctrl;
  wire [63:0]net_slot_0_axi_rdata;
  wire net_slot_0_axi_rlast;
  wire net_slot_0_axi_rready;
  wire [1:0]net_slot_0_axi_rresp;
  wire net_slot_0_axi_rvalid;
  wire [2:0]net_slot_0_axi_w_ctrl;
  wire [63:0]net_slot_0_axi_wdata;
  wire net_slot_0_axi_wlast;
  wire net_slot_0_axi_wready;
  wire [7:0]net_slot_0_axi_wstrb;
  wire net_slot_0_axi_wvalid;
  wire resetn_1;

  assign Conn_ARADDR = SLOT_0_AXI_araddr[31:0];
  assign Conn_ARBURST = SLOT_0_AXI_arburst[1:0];
  assign Conn_ARCACHE = SLOT_0_AXI_arcache[3:0];
  assign Conn_ARLEN = SLOT_0_AXI_arlen[3:0];
  assign Conn_ARLOCK = SLOT_0_AXI_arlock[1:0];
  assign Conn_ARPROT = SLOT_0_AXI_arprot[2:0];
  assign Conn_ARQOS = SLOT_0_AXI_arqos[3:0];
  assign Conn_ARREADY = SLOT_0_AXI_arready;
  assign Conn_ARSIZE = SLOT_0_AXI_arsize[2:0];
  assign Conn_ARUSER = SLOT_0_AXI_aruser[4:0];
  assign Conn_ARVALID = SLOT_0_AXI_arvalid;
  assign Conn_AWADDR = SLOT_0_AXI_awaddr[31:0];
  assign Conn_AWBURST = SLOT_0_AXI_awburst[1:0];
  assign Conn_AWCACHE = SLOT_0_AXI_awcache[3:0];
  assign Conn_AWLEN = SLOT_0_AXI_awlen[3:0];
  assign Conn_AWLOCK = SLOT_0_AXI_awlock[1:0];
  assign Conn_AWPROT = SLOT_0_AXI_awprot[2:0];
  assign Conn_AWQOS = SLOT_0_AXI_awqos[3:0];
  assign Conn_AWREADY = SLOT_0_AXI_awready;
  assign Conn_AWSIZE = SLOT_0_AXI_awsize[2:0];
  assign Conn_AWUSER = SLOT_0_AXI_awuser[4:0];
  assign Conn_AWVALID = SLOT_0_AXI_awvalid;
  assign Conn_BREADY = SLOT_0_AXI_bready;
  assign Conn_BRESP = SLOT_0_AXI_bresp[1:0];
  assign Conn_BVALID = SLOT_0_AXI_bvalid;
  assign Conn_RDATA = SLOT_0_AXI_rdata[63:0];
  assign Conn_RLAST = SLOT_0_AXI_rlast;
  assign Conn_RREADY = SLOT_0_AXI_rready;
  assign Conn_RRESP = SLOT_0_AXI_rresp[1:0];
  assign Conn_RVALID = SLOT_0_AXI_rvalid;
  assign Conn_WDATA = SLOT_0_AXI_wdata[63:0];
  assign Conn_WLAST = SLOT_0_AXI_wlast;
  assign Conn_WREADY = SLOT_0_AXI_wready;
  assign Conn_WSTRB = SLOT_0_AXI_wstrb[7:0];
  assign Conn_WVALID = SLOT_0_AXI_wvalid;
  assign clk_1 = clk;
  assign resetn_1 = resetn;
  bd_ed1e_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axi_ar_cnt(net_slot_0_axi_ar_cnt),
        .m_slot_0_axi_araddr(net_slot_0_axi_araddr),
        .m_slot_0_axi_arburst(net_slot_0_axi_arburst),
        .m_slot_0_axi_arcache(net_slot_0_axi_arcache),
        .m_slot_0_axi_arlen(net_slot_0_axi_arlen),
        .m_slot_0_axi_arlock(net_slot_0_axi_arlock),
        .m_slot_0_axi_arprot(net_slot_0_axi_arprot),
        .m_slot_0_axi_arqos(net_slot_0_axi_arqos),
        .m_slot_0_axi_arready(net_slot_0_axi_arready),
        .m_slot_0_axi_arsize(net_slot_0_axi_arsize),
        .m_slot_0_axi_aruser(net_slot_0_axi_aruser),
        .m_slot_0_axi_arvalid(net_slot_0_axi_arvalid),
        .m_slot_0_axi_aw_cnt(net_slot_0_axi_aw_cnt),
        .m_slot_0_axi_awaddr(net_slot_0_axi_awaddr),
        .m_slot_0_axi_awburst(net_slot_0_axi_awburst),
        .m_slot_0_axi_awcache(net_slot_0_axi_awcache),
        .m_slot_0_axi_awlen(net_slot_0_axi_awlen),
        .m_slot_0_axi_awlock(net_slot_0_axi_awlock),
        .m_slot_0_axi_awprot(net_slot_0_axi_awprot),
        .m_slot_0_axi_awqos(net_slot_0_axi_awqos),
        .m_slot_0_axi_awready(net_slot_0_axi_awready),
        .m_slot_0_axi_awsize(net_slot_0_axi_awsize),
        .m_slot_0_axi_awuser(net_slot_0_axi_awuser),
        .m_slot_0_axi_awvalid(net_slot_0_axi_awvalid),
        .m_slot_0_axi_b_cnt(net_slot_0_axi_b_cnt),
        .m_slot_0_axi_bready(net_slot_0_axi_bready),
        .m_slot_0_axi_bresp(net_slot_0_axi_bresp),
        .m_slot_0_axi_bvalid(net_slot_0_axi_bvalid),
        .m_slot_0_axi_r_cnt(net_slot_0_axi_r_cnt),
        .m_slot_0_axi_rdata(net_slot_0_axi_rdata),
        .m_slot_0_axi_rlast(net_slot_0_axi_rlast),
        .m_slot_0_axi_rready(net_slot_0_axi_rready),
        .m_slot_0_axi_rresp(net_slot_0_axi_rresp),
        .m_slot_0_axi_rvalid(net_slot_0_axi_rvalid),
        .m_slot_0_axi_wdata(net_slot_0_axi_wdata),
        .m_slot_0_axi_wlast(net_slot_0_axi_wlast),
        .m_slot_0_axi_wready(net_slot_0_axi_wready),
        .m_slot_0_axi_wstrb(net_slot_0_axi_wstrb),
        .m_slot_0_axi_wvalid(net_slot_0_axi_wvalid),
        .slot_0_axi_araddr(Conn_ARADDR),
        .slot_0_axi_arburst(Conn_ARBURST),
        .slot_0_axi_arcache(Conn_ARCACHE),
        .slot_0_axi_arlen(Conn_ARLEN),
        .slot_0_axi_arlock(Conn_ARLOCK),
        .slot_0_axi_arprot(Conn_ARPROT),
        .slot_0_axi_arqos(Conn_ARQOS),
        .slot_0_axi_arready(Conn_ARREADY),
        .slot_0_axi_arsize(Conn_ARSIZE),
        .slot_0_axi_aruser(Conn_ARUSER),
        .slot_0_axi_arvalid(Conn_ARVALID),
        .slot_0_axi_awaddr(Conn_AWADDR),
        .slot_0_axi_awburst(Conn_AWBURST),
        .slot_0_axi_awcache(Conn_AWCACHE),
        .slot_0_axi_awlen(Conn_AWLEN),
        .slot_0_axi_awlock(Conn_AWLOCK),
        .slot_0_axi_awprot(Conn_AWPROT),
        .slot_0_axi_awqos(Conn_AWQOS),
        .slot_0_axi_awready(Conn_AWREADY),
        .slot_0_axi_awsize(Conn_AWSIZE),
        .slot_0_axi_awuser(Conn_AWUSER),
        .slot_0_axi_awvalid(Conn_AWVALID),
        .slot_0_axi_bready(Conn_BREADY),
        .slot_0_axi_bresp(Conn_BRESP),
        .slot_0_axi_bvalid(Conn_BVALID),
        .slot_0_axi_rdata(Conn_RDATA),
        .slot_0_axi_rlast(Conn_RLAST),
        .slot_0_axi_rready(Conn_RREADY),
        .slot_0_axi_rresp(Conn_RRESP),
        .slot_0_axi_rvalid(Conn_RVALID),
        .slot_0_axi_wdata(Conn_WDATA),
        .slot_0_axi_wlast(Conn_WLAST),
        .slot_0_axi_wready(Conn_WREADY),
        .slot_0_axi_wstrb(Conn_WSTRB),
        .slot_0_axi_wvalid(Conn_WVALID));
  bd_ed1e_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(net_slot_0_axi_ar_cnt),
        .probe1(net_slot_0_axi_araddr),
        .probe10(net_slot_0_axi_aw_cnt),
        .probe11(net_slot_0_axi_awaddr),
        .probe12(net_slot_0_axi_awburst),
        .probe13(net_slot_0_axi_awcache),
        .probe14(net_slot_0_axi_awlen),
        .probe15(net_slot_0_axi_awlock),
        .probe16(net_slot_0_axi_awprot),
        .probe17(net_slot_0_axi_awqos),
        .probe18(net_slot_0_axi_awsize),
        .probe19(net_slot_0_axi_awuser),
        .probe2(net_slot_0_axi_arburst),
        .probe20(net_slot_0_axi_b_cnt),
        .probe21(net_slot_0_axi_bresp),
        .probe22(net_slot_0_axi_r_cnt),
        .probe23(net_slot_0_axi_rdata),
        .probe24(net_slot_0_axi_rresp),
        .probe25(net_slot_0_axi_wdata),
        .probe26(net_slot_0_axi_wstrb),
        .probe27(net_slot_0_axi_aw_ctrl),
        .probe28(net_slot_0_axi_w_ctrl),
        .probe29(net_slot_0_axi_b_ctrl),
        .probe3(net_slot_0_axi_arcache),
        .probe30(net_slot_0_axi_ar_ctrl),
        .probe31(net_slot_0_axi_r_ctrl),
        .probe4(net_slot_0_axi_arlen),
        .probe5(net_slot_0_axi_arlock),
        .probe6(net_slot_0_axi_arprot),
        .probe7(net_slot_0_axi_arqos),
        .probe8(net_slot_0_axi_arsize),
        .probe9(net_slot_0_axi_aruser));
  bd_ed1e_slot_0_ar_0 slot_0_ar
       (.In0(net_slot_0_axi_arvalid),
        .In1(net_slot_0_axi_arready),
        .dout(net_slot_0_axi_ar_ctrl));
  bd_ed1e_slot_0_aw_0 slot_0_aw
       (.In0(net_slot_0_axi_awvalid),
        .In1(net_slot_0_axi_awready),
        .dout(net_slot_0_axi_aw_ctrl));
  bd_ed1e_slot_0_b_0 slot_0_b
       (.In0(net_slot_0_axi_bvalid),
        .In1(net_slot_0_axi_bready),
        .dout(net_slot_0_axi_b_ctrl));
  bd_ed1e_slot_0_r_0 slot_0_r
       (.In0(net_slot_0_axi_rvalid),
        .In1(net_slot_0_axi_rready),
        .In2(net_slot_0_axi_rlast),
        .dout(net_slot_0_axi_r_ctrl));
  bd_ed1e_slot_0_w_0 slot_0_w
       (.In0(net_slot_0_axi_wvalid),
        .In1(net_slot_0_axi_wready),
        .In2(net_slot_0_axi_wlast),
        .dout(net_slot_0_axi_w_ctrl));
endmodule
