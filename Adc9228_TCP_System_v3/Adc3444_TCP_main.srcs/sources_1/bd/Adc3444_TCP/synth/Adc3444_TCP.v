//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Thu Sep  7 22:55:12 2023
//Host        : LAPTOP-7RHB2PA2 running 64-bit major release  (build 9200)
//Command     : generate_target Adc3444_TCP.bd
//Design      : Adc3444_TCP
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Adc3444_TCP,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Adc3444_TCP,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=24,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=7,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=47,da_board_cnt=13,da_clkrst_cnt=7,da_ps7_cnt=4,da_trigger_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Adc3444_TCP.hwdef" *) 
module Adc3444_TCP
   (CHA_n,
    CHA_p,
    CHB_n,
    CHB_p,
    CHC_n,
    CHC_p,
    CHD_n,
    CHD_p,
    DCO_n,
    DCO_p,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FCO_n,
    FCO_p,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    SPI0_MOSI,
    SPI0_SCLK,
    SPI0_SS_T_0,
    SPI1_MOSI,
    SPI1_SCLK,
    SPI1_SS_T_0,
    adcClkIn_n,
    adcClkIn_p,
    clk_40m_i,
    led,
    pll_trig1,
    pll_trig2);
  input CHA_n;
  input CHA_p;
  input CHB_n;
  input CHB_p;
  input CHC_n;
  input CHC_p;
  input CHD_n;
  input CHD_p;
  input DCO_n;
  input DCO_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  input FCO_n;
  input FCO_p;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  output SPI0_MOSI;
  output SPI0_SCLK;
  output SPI0_SS_T_0;
  output SPI1_MOSI;
  output SPI1_SCLK;
  output SPI1_SS_T_0;
  output adcClkIn_n;
  output adcClkIn_p;
  input clk_40m_i;
  output led;
  input pll_trig1;
  input pll_trig2;

  wire [0:0]ARESETN_1;
  wire [15:0]Adc9228_top_0_DataToTriCh0;
  wire [15:0]Adc9228_top_0_DataToTriCh1;
  wire [15:0]Adc9228_top_0_DataToTriCh2;
  wire [15:0]Adc9228_top_0_DataToTriCh3;
  wire Adc9228_top_0_TrigInCh0;
  wire Adc9228_top_0_TrigInCh1;
  wire Adc9228_top_0_TrigInCh2;
  wire Adc9228_top_0_TrigInCh3;
  wire Adc9228_top_0_adcClkIn_n;
  wire Adc9228_top_0_adcClkIn_p;
  wire Adc9228_top_0_clk_10m_o;
  wire Adc9228_top_0_led;
  wire CHA_n_0_1;
  wire CHA_p_0_1;
  wire CHB_n_0_1;
  wire CHB_p_0_1;
  wire CHC_n_0_1;
  wire CHC_p_0_1;
  wire CHD_n_0_1;
  wire CHD_p_0_1;
  wire DCO_n_0_1;
  wire DCO_p_0_1;
  wire FCO_n_0_1;
  wire FCO_p_0_1;
  wire [0:0]M02_ARESETN_1;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [31:0]TriggerCh_0_m_axi_ARADDR;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]TriggerCh_0_m_axi_ARBURST;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]TriggerCh_0_m_axi_ARCACHE;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DONT_TOUCH *) wire [1:0]TriggerCh_0_m_axi_ARID;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]TriggerCh_0_m_axi_ARLEN;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DONT_TOUCH *) wire TriggerCh_0_m_axi_ARLOCK;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DONT_TOUCH *) wire [2:0]TriggerCh_0_m_axi_ARPROT;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DONT_TOUCH *) wire [3:0]TriggerCh_0_m_axi_ARQOS;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire TriggerCh_0_m_axi_ARREADY;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]TriggerCh_0_m_axi_ARSIZE;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DONT_TOUCH *) wire [4:0]TriggerCh_0_m_axi_ARUSER;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire TriggerCh_0_m_axi_ARVALID;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [31:0]TriggerCh_0_m_axi_AWADDR;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]TriggerCh_0_m_axi_AWBURST;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]TriggerCh_0_m_axi_AWCACHE;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DONT_TOUCH *) wire [1:0]TriggerCh_0_m_axi_AWID;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]TriggerCh_0_m_axi_AWLEN;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DONT_TOUCH *) wire TriggerCh_0_m_axi_AWLOCK;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DONT_TOUCH *) wire [2:0]TriggerCh_0_m_axi_AWPROT;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DONT_TOUCH *) wire [3:0]TriggerCh_0_m_axi_AWQOS;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire TriggerCh_0_m_axi_AWREADY;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]TriggerCh_0_m_axi_AWSIZE;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DONT_TOUCH *) wire [4:0]TriggerCh_0_m_axi_AWUSER;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire TriggerCh_0_m_axi_AWVALID;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DONT_TOUCH *) wire [1:0]TriggerCh_0_m_axi_BID;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire TriggerCh_0_m_axi_BREADY;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]TriggerCh_0_m_axi_BRESP;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire TriggerCh_0_m_axi_BVALID;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [63:0]TriggerCh_0_m_axi_RDATA;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DONT_TOUCH *) wire [1:0]TriggerCh_0_m_axi_RID;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire TriggerCh_0_m_axi_RLAST;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire TriggerCh_0_m_axi_RREADY;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]TriggerCh_0_m_axi_RRESP;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire TriggerCh_0_m_axi_RVALID;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [63:0]TriggerCh_0_m_axi_WDATA;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire TriggerCh_0_m_axi_WLAST;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire TriggerCh_0_m_axi_WREADY;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [7:0]TriggerCh_0_m_axi_WSTRB;
  (* CONN_BUS_INFO = "TriggerCh_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire TriggerCh_0_m_axi_WVALID;
  wire TriggerCh_0_m_axi_clk;
  wire TriggerCh_0_m_axi_rstn;
  wire TriggerCh_0_oStateToFINISHIntr;
  wire [31:0]TriggerCh_1_m_axi_ARADDR;
  wire [1:0]TriggerCh_1_m_axi_ARBURST;
  wire [3:0]TriggerCh_1_m_axi_ARCACHE;
  wire [1:0]TriggerCh_1_m_axi_ARID;
  wire [7:0]TriggerCh_1_m_axi_ARLEN;
  wire TriggerCh_1_m_axi_ARLOCK;
  wire [2:0]TriggerCh_1_m_axi_ARPROT;
  wire [3:0]TriggerCh_1_m_axi_ARQOS;
  wire TriggerCh_1_m_axi_ARREADY;
  wire [2:0]TriggerCh_1_m_axi_ARSIZE;
  wire [4:0]TriggerCh_1_m_axi_ARUSER;
  wire TriggerCh_1_m_axi_ARVALID;
  wire [31:0]TriggerCh_1_m_axi_AWADDR;
  wire [1:0]TriggerCh_1_m_axi_AWBURST;
  wire [3:0]TriggerCh_1_m_axi_AWCACHE;
  wire [1:0]TriggerCh_1_m_axi_AWID;
  wire [7:0]TriggerCh_1_m_axi_AWLEN;
  wire TriggerCh_1_m_axi_AWLOCK;
  wire [2:0]TriggerCh_1_m_axi_AWPROT;
  wire [3:0]TriggerCh_1_m_axi_AWQOS;
  wire TriggerCh_1_m_axi_AWREADY;
  wire [2:0]TriggerCh_1_m_axi_AWSIZE;
  wire [4:0]TriggerCh_1_m_axi_AWUSER;
  wire TriggerCh_1_m_axi_AWVALID;
  wire [1:0]TriggerCh_1_m_axi_BID;
  wire TriggerCh_1_m_axi_BREADY;
  wire [1:0]TriggerCh_1_m_axi_BRESP;
  wire TriggerCh_1_m_axi_BVALID;
  wire [63:0]TriggerCh_1_m_axi_RDATA;
  wire [1:0]TriggerCh_1_m_axi_RID;
  wire TriggerCh_1_m_axi_RLAST;
  wire TriggerCh_1_m_axi_RREADY;
  wire [1:0]TriggerCh_1_m_axi_RRESP;
  wire TriggerCh_1_m_axi_RVALID;
  wire [63:0]TriggerCh_1_m_axi_WDATA;
  wire TriggerCh_1_m_axi_WLAST;
  wire TriggerCh_1_m_axi_WREADY;
  wire [7:0]TriggerCh_1_m_axi_WSTRB;
  wire TriggerCh_1_m_axi_WVALID;
  wire TriggerCh_1_m_axi_clk;
  wire TriggerCh_1_m_axi_rstn;
  wire TriggerCh_1_oStateToFINISHIntr;
  wire [31:0]TriggerCh_2_m_axi_ARADDR;
  wire [1:0]TriggerCh_2_m_axi_ARBURST;
  wire [3:0]TriggerCh_2_m_axi_ARCACHE;
  wire [1:0]TriggerCh_2_m_axi_ARID;
  wire [7:0]TriggerCh_2_m_axi_ARLEN;
  wire TriggerCh_2_m_axi_ARLOCK;
  wire [2:0]TriggerCh_2_m_axi_ARPROT;
  wire [3:0]TriggerCh_2_m_axi_ARQOS;
  wire TriggerCh_2_m_axi_ARREADY;
  wire [2:0]TriggerCh_2_m_axi_ARSIZE;
  wire [4:0]TriggerCh_2_m_axi_ARUSER;
  wire TriggerCh_2_m_axi_ARVALID;
  wire [31:0]TriggerCh_2_m_axi_AWADDR;
  wire [1:0]TriggerCh_2_m_axi_AWBURST;
  wire [3:0]TriggerCh_2_m_axi_AWCACHE;
  wire [1:0]TriggerCh_2_m_axi_AWID;
  wire [7:0]TriggerCh_2_m_axi_AWLEN;
  wire TriggerCh_2_m_axi_AWLOCK;
  wire [2:0]TriggerCh_2_m_axi_AWPROT;
  wire [3:0]TriggerCh_2_m_axi_AWQOS;
  wire TriggerCh_2_m_axi_AWREADY;
  wire [2:0]TriggerCh_2_m_axi_AWSIZE;
  wire [4:0]TriggerCh_2_m_axi_AWUSER;
  wire TriggerCh_2_m_axi_AWVALID;
  wire [1:0]TriggerCh_2_m_axi_BID;
  wire TriggerCh_2_m_axi_BREADY;
  wire [1:0]TriggerCh_2_m_axi_BRESP;
  wire TriggerCh_2_m_axi_BVALID;
  wire [63:0]TriggerCh_2_m_axi_RDATA;
  wire [1:0]TriggerCh_2_m_axi_RID;
  wire TriggerCh_2_m_axi_RLAST;
  wire TriggerCh_2_m_axi_RREADY;
  wire [1:0]TriggerCh_2_m_axi_RRESP;
  wire TriggerCh_2_m_axi_RVALID;
  wire [63:0]TriggerCh_2_m_axi_WDATA;
  wire TriggerCh_2_m_axi_WLAST;
  wire TriggerCh_2_m_axi_WREADY;
  wire [7:0]TriggerCh_2_m_axi_WSTRB;
  wire TriggerCh_2_m_axi_WVALID;
  wire TriggerCh_2_m_axi_clk;
  wire TriggerCh_2_m_axi_rstn;
  wire TriggerCh_2_oStateToFINISHIntr;
  wire [31:0]TriggerCh_3_m_axi_ARADDR;
  wire [1:0]TriggerCh_3_m_axi_ARBURST;
  wire [3:0]TriggerCh_3_m_axi_ARCACHE;
  wire [1:0]TriggerCh_3_m_axi_ARID;
  wire [7:0]TriggerCh_3_m_axi_ARLEN;
  wire TriggerCh_3_m_axi_ARLOCK;
  wire [2:0]TriggerCh_3_m_axi_ARPROT;
  wire [3:0]TriggerCh_3_m_axi_ARQOS;
  wire TriggerCh_3_m_axi_ARREADY;
  wire [2:0]TriggerCh_3_m_axi_ARSIZE;
  wire [4:0]TriggerCh_3_m_axi_ARUSER;
  wire TriggerCh_3_m_axi_ARVALID;
  wire [31:0]TriggerCh_3_m_axi_AWADDR;
  wire [1:0]TriggerCh_3_m_axi_AWBURST;
  wire [3:0]TriggerCh_3_m_axi_AWCACHE;
  wire [1:0]TriggerCh_3_m_axi_AWID;
  wire [7:0]TriggerCh_3_m_axi_AWLEN;
  wire TriggerCh_3_m_axi_AWLOCK;
  wire [2:0]TriggerCh_3_m_axi_AWPROT;
  wire [3:0]TriggerCh_3_m_axi_AWQOS;
  wire TriggerCh_3_m_axi_AWREADY;
  wire [2:0]TriggerCh_3_m_axi_AWSIZE;
  wire [4:0]TriggerCh_3_m_axi_AWUSER;
  wire TriggerCh_3_m_axi_AWVALID;
  wire [1:0]TriggerCh_3_m_axi_BID;
  wire TriggerCh_3_m_axi_BREADY;
  wire [1:0]TriggerCh_3_m_axi_BRESP;
  wire TriggerCh_3_m_axi_BVALID;
  wire [63:0]TriggerCh_3_m_axi_RDATA;
  wire [1:0]TriggerCh_3_m_axi_RID;
  wire TriggerCh_3_m_axi_RLAST;
  wire TriggerCh_3_m_axi_RREADY;
  wire [1:0]TriggerCh_3_m_axi_RRESP;
  wire TriggerCh_3_m_axi_RVALID;
  wire [63:0]TriggerCh_3_m_axi_WDATA;
  wire TriggerCh_3_m_axi_WLAST;
  wire TriggerCh_3_m_axi_WREADY;
  wire [7:0]TriggerCh_3_m_axi_WSTRB;
  wire TriggerCh_3_m_axi_WVALID;
  wire TriggerCh_3_m_axi_clk;
  wire TriggerCh_3_m_axi_rstn;
  wire TriggerCh_3_oStateToFINISHIntr;
  wire clk_40m_i_1;
  wire pll_trig1_0_1;
  wire pll_trig2_0_1;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [0:0]processing_system7_0_GPIO_O;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire processing_system7_0_SPI0_MOSI_O;
  wire processing_system7_0_SPI0_SCLK_O;
  wire processing_system7_0_SPI0_SS_T;
  wire processing_system7_0_SPI1_MOSI_O;
  wire processing_system7_0_SPI1_SCLK_O;
  wire processing_system7_0_SPI1_SS_T;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DONT_TOUCH *) wire [31:0]ps7_0_axi_periph_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DONT_TOUCH *) wire [2:0]ps7_0_axi_periph_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DONT_TOUCH *) wire [31:0]ps7_0_axi_periph_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DONT_TOUCH *) wire [2:0]ps7_0_axi_periph_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DONT_TOUCH *) wire [1:0]ps7_0_axi_periph_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DONT_TOUCH *) wire [31:0]ps7_0_axi_periph_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DONT_TOUCH *) wire [1:0]ps7_0_axi_periph_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DONT_TOUCH *) wire [31:0]ps7_0_axi_periph_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DONT_TOUCH *) wire [3:0]ps7_0_axi_periph_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M00_AXI_WVALID;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DONT_TOUCH *) wire [31:0]ps7_0_axi_periph_M01_AXI_ARADDR;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DONT_TOUCH *) wire [2:0]ps7_0_axi_periph_M01_AXI_ARPROT;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M01_AXI_ARREADY;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M01_AXI_ARVALID;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DONT_TOUCH *) wire [31:0]ps7_0_axi_periph_M01_AXI_AWADDR;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DONT_TOUCH *) wire [2:0]ps7_0_axi_periph_M01_AXI_AWPROT;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M01_AXI_AWREADY;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M01_AXI_AWVALID;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M01_AXI_BREADY;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DONT_TOUCH *) wire [1:0]ps7_0_axi_periph_M01_AXI_BRESP;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M01_AXI_BVALID;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DONT_TOUCH *) wire [31:0]ps7_0_axi_periph_M01_AXI_RDATA;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M01_AXI_RREADY;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DONT_TOUCH *) wire [1:0]ps7_0_axi_periph_M01_AXI_RRESP;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M01_AXI_RVALID;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DONT_TOUCH *) wire [31:0]ps7_0_axi_periph_M01_AXI_WDATA;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M01_AXI_WREADY;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DONT_TOUCH *) wire [3:0]ps7_0_axi_periph_M01_AXI_WSTRB;
  (* CONN_BUS_INFO = "ps7_0_axi_periph_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DONT_TOUCH *) wire ps7_0_axi_periph_M01_AXI_WVALID;
  wire [31:0]ps7_0_axi_periph_M02_AXI_ARADDR;
  wire [2:0]ps7_0_axi_periph_M02_AXI_ARPROT;
  wire ps7_0_axi_periph_M02_AXI_ARREADY;
  wire ps7_0_axi_periph_M02_AXI_ARVALID;
  wire [31:0]ps7_0_axi_periph_M02_AXI_AWADDR;
  wire [2:0]ps7_0_axi_periph_M02_AXI_AWPROT;
  wire ps7_0_axi_periph_M02_AXI_AWREADY;
  wire ps7_0_axi_periph_M02_AXI_AWVALID;
  wire ps7_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M02_AXI_BRESP;
  wire ps7_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M02_AXI_RDATA;
  wire ps7_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M02_AXI_RRESP;
  wire ps7_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M02_AXI_WDATA;
  wire ps7_0_axi_periph_M02_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_M02_AXI_WSTRB;
  wire ps7_0_axi_periph_M02_AXI_WVALID;
  wire [31:0]ps7_0_axi_periph_M03_AXI_ARADDR;
  wire [2:0]ps7_0_axi_periph_M03_AXI_ARPROT;
  wire ps7_0_axi_periph_M03_AXI_ARREADY;
  wire ps7_0_axi_periph_M03_AXI_ARVALID;
  wire [31:0]ps7_0_axi_periph_M03_AXI_AWADDR;
  wire [2:0]ps7_0_axi_periph_M03_AXI_AWPROT;
  wire ps7_0_axi_periph_M03_AXI_AWREADY;
  wire ps7_0_axi_periph_M03_AXI_AWVALID;
  wire ps7_0_axi_periph_M03_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M03_AXI_BRESP;
  wire ps7_0_axi_periph_M03_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M03_AXI_RDATA;
  wire ps7_0_axi_periph_M03_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M03_AXI_RRESP;
  wire ps7_0_axi_periph_M03_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M03_AXI_WDATA;
  wire ps7_0_axi_periph_M03_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_M03_AXI_WSTRB;
  wire ps7_0_axi_periph_M03_AXI_WVALID;
  wire [31:0]ps7_0_axi_periph_M04_AXI_ARADDR;
  wire [2:0]ps7_0_axi_periph_M04_AXI_ARPROT;
  wire ps7_0_axi_periph_M04_AXI_ARREADY;
  wire ps7_0_axi_periph_M04_AXI_ARVALID;
  wire [31:0]ps7_0_axi_periph_M04_AXI_AWADDR;
  wire [2:0]ps7_0_axi_periph_M04_AXI_AWPROT;
  wire ps7_0_axi_periph_M04_AXI_AWREADY;
  wire ps7_0_axi_periph_M04_AXI_AWVALID;
  wire ps7_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M04_AXI_BRESP;
  wire ps7_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M04_AXI_RDATA;
  wire ps7_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M04_AXI_RRESP;
  wire ps7_0_axi_periph_M04_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M04_AXI_WDATA;
  wire ps7_0_axi_periph_M04_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_M04_AXI_WSTRB;
  wire ps7_0_axi_periph_M04_AXI_WVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARADDR" *) (* DONT_TOUCH *) wire [31:0]smartconnect_0_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARBURST" *) (* DONT_TOUCH *) wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARLEN" *) (* DONT_TOUCH *) wire [3:0]smartconnect_0_M00_AXI_ARLEN;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARLOCK" *) (* DONT_TOUCH *) wire [1:0]smartconnect_0_M00_AXI_ARLOCK;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARPROT" *) (* DONT_TOUCH *) wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARQOS" *) (* DONT_TOUCH *) wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARREADY" *) (* DONT_TOUCH *) wire smartconnect_0_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARUSER" *) (* DONT_TOUCH *) wire [4:0]smartconnect_0_M00_AXI_ARUSER;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARVALID" *) (* DONT_TOUCH *) wire smartconnect_0_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWADDR" *) (* DONT_TOUCH *) wire [31:0]smartconnect_0_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWBURST" *) (* DONT_TOUCH *) wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWLEN" *) (* DONT_TOUCH *) wire [3:0]smartconnect_0_M00_AXI_AWLEN;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWLOCK" *) (* DONT_TOUCH *) wire [1:0]smartconnect_0_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWPROT" *) (* DONT_TOUCH *) wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWQOS" *) (* DONT_TOUCH *) wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWREADY" *) (* DONT_TOUCH *) wire smartconnect_0_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWUSER" *) (* DONT_TOUCH *) wire [4:0]smartconnect_0_M00_AXI_AWUSER;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWVALID" *) (* DONT_TOUCH *) wire smartconnect_0_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 BREADY" *) (* DONT_TOUCH *) wire smartconnect_0_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 BRESP" *) (* DONT_TOUCH *) wire [1:0]smartconnect_0_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 BVALID" *) (* DONT_TOUCH *) wire smartconnect_0_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RDATA" *) (* DONT_TOUCH *) wire [63:0]smartconnect_0_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RLAST" *) (* DONT_TOUCH *) wire smartconnect_0_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RREADY" *) (* DONT_TOUCH *) wire smartconnect_0_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RRESP" *) (* DONT_TOUCH *) wire [1:0]smartconnect_0_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RVALID" *) (* DONT_TOUCH *) wire smartconnect_0_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WDATA" *) (* DONT_TOUCH *) wire [63:0]smartconnect_0_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WLAST" *) (* DONT_TOUCH *) wire smartconnect_0_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WREADY" *) (* DONT_TOUCH *) wire smartconnect_0_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WSTRB" *) (* DONT_TOUCH *) wire [7:0]smartconnect_0_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WVALID" *) (* DONT_TOUCH *) wire smartconnect_0_M00_AXI_WVALID;
  wire [31:0]smartconnect_1_M00_AXI_ARADDR;
  wire [1:0]smartconnect_1_M00_AXI_ARBURST;
  wire [3:0]smartconnect_1_M00_AXI_ARCACHE;
  wire [3:0]smartconnect_1_M00_AXI_ARLEN;
  wire [1:0]smartconnect_1_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_1_M00_AXI_ARPROT;
  wire [3:0]smartconnect_1_M00_AXI_ARQOS;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire [2:0]smartconnect_1_M00_AXI_ARSIZE;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [31:0]smartconnect_1_M00_AXI_AWADDR;
  wire [1:0]smartconnect_1_M00_AXI_AWBURST;
  wire [3:0]smartconnect_1_M00_AXI_AWCACHE;
  wire [3:0]smartconnect_1_M00_AXI_AWLEN;
  wire [1:0]smartconnect_1_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_1_M00_AXI_AWPROT;
  wire [3:0]smartconnect_1_M00_AXI_AWQOS;
  wire smartconnect_1_M00_AXI_AWREADY;
  wire [2:0]smartconnect_1_M00_AXI_AWSIZE;
  wire smartconnect_1_M00_AXI_AWVALID;
  wire smartconnect_1_M00_AXI_BREADY;
  wire [1:0]smartconnect_1_M00_AXI_BRESP;
  wire smartconnect_1_M00_AXI_BVALID;
  wire [63:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RLAST;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [63:0]smartconnect_1_M00_AXI_WDATA;
  wire smartconnect_1_M00_AXI_WLAST;
  wire smartconnect_1_M00_AXI_WREADY;
  wire [7:0]smartconnect_1_M00_AXI_WSTRB;
  wire smartconnect_1_M00_AXI_WVALID;
  wire [31:0]smartconnect_2_M00_AXI_ARADDR;
  wire [1:0]smartconnect_2_M00_AXI_ARBURST;
  wire [3:0]smartconnect_2_M00_AXI_ARCACHE;
  wire [3:0]smartconnect_2_M00_AXI_ARLEN;
  wire [1:0]smartconnect_2_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_2_M00_AXI_ARPROT;
  wire [3:0]smartconnect_2_M00_AXI_ARQOS;
  wire smartconnect_2_M00_AXI_ARREADY;
  wire [2:0]smartconnect_2_M00_AXI_ARSIZE;
  wire smartconnect_2_M00_AXI_ARVALID;
  wire [31:0]smartconnect_2_M00_AXI_AWADDR;
  wire [1:0]smartconnect_2_M00_AXI_AWBURST;
  wire [3:0]smartconnect_2_M00_AXI_AWCACHE;
  wire [3:0]smartconnect_2_M00_AXI_AWLEN;
  wire [1:0]smartconnect_2_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_2_M00_AXI_AWPROT;
  wire [3:0]smartconnect_2_M00_AXI_AWQOS;
  wire smartconnect_2_M00_AXI_AWREADY;
  wire [2:0]smartconnect_2_M00_AXI_AWSIZE;
  wire smartconnect_2_M00_AXI_AWVALID;
  wire smartconnect_2_M00_AXI_BREADY;
  wire [1:0]smartconnect_2_M00_AXI_BRESP;
  wire smartconnect_2_M00_AXI_BVALID;
  wire [63:0]smartconnect_2_M00_AXI_RDATA;
  wire smartconnect_2_M00_AXI_RLAST;
  wire smartconnect_2_M00_AXI_RREADY;
  wire [1:0]smartconnect_2_M00_AXI_RRESP;
  wire smartconnect_2_M00_AXI_RVALID;
  wire [63:0]smartconnect_2_M00_AXI_WDATA;
  wire smartconnect_2_M00_AXI_WLAST;
  wire smartconnect_2_M00_AXI_WREADY;
  wire [7:0]smartconnect_2_M00_AXI_WSTRB;
  wire smartconnect_2_M00_AXI_WVALID;
  wire [31:0]smartconnect_3_M00_AXI_ARADDR;
  wire [1:0]smartconnect_3_M00_AXI_ARBURST;
  wire [3:0]smartconnect_3_M00_AXI_ARCACHE;
  wire [3:0]smartconnect_3_M00_AXI_ARLEN;
  wire [1:0]smartconnect_3_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_3_M00_AXI_ARPROT;
  wire [3:0]smartconnect_3_M00_AXI_ARQOS;
  wire smartconnect_3_M00_AXI_ARREADY;
  wire [2:0]smartconnect_3_M00_AXI_ARSIZE;
  wire smartconnect_3_M00_AXI_ARVALID;
  wire [31:0]smartconnect_3_M00_AXI_AWADDR;
  wire [1:0]smartconnect_3_M00_AXI_AWBURST;
  wire [3:0]smartconnect_3_M00_AXI_AWCACHE;
  wire [3:0]smartconnect_3_M00_AXI_AWLEN;
  wire [1:0]smartconnect_3_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_3_M00_AXI_AWPROT;
  wire [3:0]smartconnect_3_M00_AXI_AWQOS;
  wire smartconnect_3_M00_AXI_AWREADY;
  wire [2:0]smartconnect_3_M00_AXI_AWSIZE;
  wire smartconnect_3_M00_AXI_AWVALID;
  wire smartconnect_3_M00_AXI_BREADY;
  wire [1:0]smartconnect_3_M00_AXI_BRESP;
  wire smartconnect_3_M00_AXI_BVALID;
  wire [63:0]smartconnect_3_M00_AXI_RDATA;
  wire smartconnect_3_M00_AXI_RLAST;
  wire smartconnect_3_M00_AXI_RREADY;
  wire [1:0]smartconnect_3_M00_AXI_RRESP;
  wire smartconnect_3_M00_AXI_RVALID;
  wire [63:0]smartconnect_3_M00_AXI_WDATA;
  wire smartconnect_3_M00_AXI_WLAST;
  wire smartconnect_3_M00_AXI_WREADY;
  wire [7:0]smartconnect_3_M00_AXI_WSTRB;
  wire smartconnect_3_M00_AXI_WVALID;
  wire [3:0]xlconcat_0_dout;

  assign CHA_n_0_1 = CHA_n;
  assign CHA_p_0_1 = CHA_p;
  assign CHB_n_0_1 = CHB_n;
  assign CHB_p_0_1 = CHB_p;
  assign CHC_n_0_1 = CHC_n;
  assign CHC_p_0_1 = CHC_p;
  assign CHD_n_0_1 = CHD_n;
  assign CHD_p_0_1 = CHD_p;
  assign DCO_n_0_1 = DCO_n;
  assign DCO_p_0_1 = DCO_p;
  assign FCO_n_0_1 = FCO_n;
  assign FCO_p_0_1 = FCO_p;
  assign SPI0_MOSI = processing_system7_0_SPI0_MOSI_O;
  assign SPI0_SCLK = processing_system7_0_SPI0_SCLK_O;
  assign SPI0_SS_T_0 = processing_system7_0_SPI0_SS_T;
  assign SPI1_MOSI = processing_system7_0_SPI1_MOSI_O;
  assign SPI1_SCLK = processing_system7_0_SPI1_SCLK_O;
  assign SPI1_SS_T_0 = processing_system7_0_SPI1_SS_T;
  assign adcClkIn_n = Adc9228_top_0_adcClkIn_n;
  assign adcClkIn_p = Adc9228_top_0_adcClkIn_p;
  assign clk_40m_i_1 = clk_40m_i;
  assign led = Adc9228_top_0_led;
  assign pll_trig1_0_1 = pll_trig1;
  assign pll_trig2_0_1 = pll_trig2;
  Adc3444_TCP_Adc9228_top_0_0 Adc9228_top_0
       (.CHA_n(CHA_n_0_1),
        .CHA_p(CHA_p_0_1),
        .CHB_n(CHB_n_0_1),
        .CHB_p(CHB_p_0_1),
        .CHC_n(CHC_n_0_1),
        .CHC_p(CHC_p_0_1),
        .CHD_n(CHD_n_0_1),
        .CHD_p(CHD_p_0_1),
        .DCO_n(DCO_n_0_1),
        .DCO_p(DCO_p_0_1),
        .DataToTriCh0_o(Adc9228_top_0_DataToTriCh0),
        .DataToTriCh1_o(Adc9228_top_0_DataToTriCh1),
        .DataToTriCh2_o(Adc9228_top_0_DataToTriCh2),
        .DataToTriCh3_o(Adc9228_top_0_DataToTriCh3),
        .FCO_n(FCO_n_0_1),
        .FCO_p(FCO_p_0_1),
        .S_AXI_ACLK(Adc9228_top_0_clk_10m_o),
        .S_AXI_ARADDR(ps7_0_axi_periph_M00_AXI_ARADDR),
        .S_AXI_ARESETN(M02_ARESETN_1),
        .S_AXI_ARPROT(ps7_0_axi_periph_M00_AXI_ARPROT),
        .S_AXI_ARREADY(ps7_0_axi_periph_M00_AXI_ARREADY),
        .S_AXI_ARVALID(ps7_0_axi_periph_M00_AXI_ARVALID),
        .S_AXI_AWADDR(ps7_0_axi_periph_M00_AXI_AWADDR),
        .S_AXI_AWPROT(ps7_0_axi_periph_M00_AXI_AWPROT),
        .S_AXI_AWREADY(ps7_0_axi_periph_M00_AXI_AWREADY),
        .S_AXI_AWVALID(ps7_0_axi_periph_M00_AXI_AWVALID),
        .S_AXI_BREADY(ps7_0_axi_periph_M00_AXI_BREADY),
        .S_AXI_BRESP(ps7_0_axi_periph_M00_AXI_BRESP),
        .S_AXI_BVALID(ps7_0_axi_periph_M00_AXI_BVALID),
        .S_AXI_RDATA(ps7_0_axi_periph_M00_AXI_RDATA),
        .S_AXI_RREADY(ps7_0_axi_periph_M00_AXI_RREADY),
        .S_AXI_RRESP(ps7_0_axi_periph_M00_AXI_RRESP),
        .S_AXI_RVALID(ps7_0_axi_periph_M00_AXI_RVALID),
        .S_AXI_WDATA(ps7_0_axi_periph_M00_AXI_WDATA),
        .S_AXI_WREADY(ps7_0_axi_periph_M00_AXI_WREADY),
        .S_AXI_WSTRB(ps7_0_axi_periph_M00_AXI_WSTRB),
        .S_AXI_WVALID(ps7_0_axi_periph_M00_AXI_WVALID),
        .Start_mode(processing_system7_0_GPIO_O),
        .TrigInCh0_o(Adc9228_top_0_TrigInCh0),
        .TrigInCh1_o(Adc9228_top_0_TrigInCh1),
        .TrigInCh2_o(Adc9228_top_0_TrigInCh2),
        .TrigInCh3_o(Adc9228_top_0_TrigInCh3),
        .adcClkIn_n(Adc9228_top_0_adcClkIn_n),
        .adcClkIn_p(Adc9228_top_0_adcClkIn_p),
        .clk_100m_o(Adc9228_top_0_clk_10m_o),
        .clk_40m_i(clk_40m_i_1),
        .led(Adc9228_top_0_led),
        .pll_trig1(pll_trig1_0_1),
        .pll_trig2(pll_trig2_0_1),
        .ps_rst_n(processing_system7_0_FCLK_RESET0_N));
  Adc3444_TCP_TriggerCh_0_2 TriggerCh_0
       (.iAdcData(Adc9228_top_0_DataToTriCh0),
        .iAdcData_Tri(Adc9228_top_0_TrigInCh0),
        .iTrigClk(Adc9228_top_0_clk_10m_o),
        .iTrigRstn(processing_system7_0_FCLK_RESET0_N),
        .m_axi_araddr(TriggerCh_0_m_axi_ARADDR),
        .m_axi_arburst(TriggerCh_0_m_axi_ARBURST),
        .m_axi_arcache(TriggerCh_0_m_axi_ARCACHE),
        .m_axi_arid(TriggerCh_0_m_axi_ARID),
        .m_axi_arlen(TriggerCh_0_m_axi_ARLEN),
        .m_axi_arlock(TriggerCh_0_m_axi_ARLOCK),
        .m_axi_arprot(TriggerCh_0_m_axi_ARPROT),
        .m_axi_arqos(TriggerCh_0_m_axi_ARQOS),
        .m_axi_arready(TriggerCh_0_m_axi_ARREADY),
        .m_axi_arsize(TriggerCh_0_m_axi_ARSIZE),
        .m_axi_aruser(TriggerCh_0_m_axi_ARUSER),
        .m_axi_arvalid(TriggerCh_0_m_axi_ARVALID),
        .m_axi_awaddr(TriggerCh_0_m_axi_AWADDR),
        .m_axi_awburst(TriggerCh_0_m_axi_AWBURST),
        .m_axi_awcache(TriggerCh_0_m_axi_AWCACHE),
        .m_axi_awid(TriggerCh_0_m_axi_AWID),
        .m_axi_awlen(TriggerCh_0_m_axi_AWLEN),
        .m_axi_awlock(TriggerCh_0_m_axi_AWLOCK),
        .m_axi_awprot(TriggerCh_0_m_axi_AWPROT),
        .m_axi_awqos(TriggerCh_0_m_axi_AWQOS),
        .m_axi_awready(TriggerCh_0_m_axi_AWREADY),
        .m_axi_awsize(TriggerCh_0_m_axi_AWSIZE),
        .m_axi_awuser(TriggerCh_0_m_axi_AWUSER),
        .m_axi_awvalid(TriggerCh_0_m_axi_AWVALID),
        .m_axi_bid(TriggerCh_0_m_axi_BID),
        .m_axi_bready(TriggerCh_0_m_axi_BREADY),
        .m_axi_bresp(TriggerCh_0_m_axi_BRESP),
        .m_axi_bvalid(TriggerCh_0_m_axi_BVALID),
        .m_axi_clk(TriggerCh_0_m_axi_clk),
        .m_axi_rdata(TriggerCh_0_m_axi_RDATA),
        .m_axi_rid(TriggerCh_0_m_axi_RID),
        .m_axi_rlast(TriggerCh_0_m_axi_RLAST),
        .m_axi_rready(TriggerCh_0_m_axi_RREADY),
        .m_axi_rresp(TriggerCh_0_m_axi_RRESP),
        .m_axi_rstn(TriggerCh_0_m_axi_rstn),
        .m_axi_rvalid(TriggerCh_0_m_axi_RVALID),
        .m_axi_wdata(TriggerCh_0_m_axi_WDATA),
        .m_axi_wlast(TriggerCh_0_m_axi_WLAST),
        .m_axi_wready(TriggerCh_0_m_axi_WREADY),
        .m_axi_wstrb(TriggerCh_0_m_axi_WSTRB),
        .m_axi_wvalid(TriggerCh_0_m_axi_WVALID),
        .oStateToFINISHIntr(TriggerCh_0_oStateToFINISHIntr),
        .s_axil_araddr(ps7_0_axi_periph_M01_AXI_ARADDR),
        .s_axil_arprot(ps7_0_axi_periph_M01_AXI_ARPROT),
        .s_axil_arready(ps7_0_axi_periph_M01_AXI_ARREADY),
        .s_axil_arvalid(ps7_0_axi_periph_M01_AXI_ARVALID),
        .s_axil_awaddr(ps7_0_axi_periph_M01_AXI_AWADDR),
        .s_axil_awprot(ps7_0_axi_periph_M01_AXI_AWPROT),
        .s_axil_awready(ps7_0_axi_periph_M01_AXI_AWREADY),
        .s_axil_awvalid(ps7_0_axi_periph_M01_AXI_AWVALID),
        .s_axil_bready(ps7_0_axi_periph_M01_AXI_BREADY),
        .s_axil_bresp(ps7_0_axi_periph_M01_AXI_BRESP),
        .s_axil_bvalid(ps7_0_axi_periph_M01_AXI_BVALID),
        .s_axil_clk(Adc9228_top_0_clk_10m_o),
        .s_axil_rdata(ps7_0_axi_periph_M01_AXI_RDATA),
        .s_axil_rready(ps7_0_axi_periph_M01_AXI_RREADY),
        .s_axil_rresp(ps7_0_axi_periph_M01_AXI_RRESP),
        .s_axil_rstn(M02_ARESETN_1),
        .s_axil_rvalid(ps7_0_axi_periph_M01_AXI_RVALID),
        .s_axil_wdata(ps7_0_axi_periph_M01_AXI_WDATA),
        .s_axil_wready(ps7_0_axi_periph_M01_AXI_WREADY),
        .s_axil_wstrb(ps7_0_axi_periph_M01_AXI_WSTRB),
        .s_axil_wvalid(ps7_0_axi_periph_M01_AXI_WVALID));
  Adc3444_TCP_TriggerCh_1_0 TriggerCh_1
       (.iAdcData(Adc9228_top_0_DataToTriCh1),
        .iAdcData_Tri(Adc9228_top_0_TrigInCh1),
        .iTrigClk(Adc9228_top_0_clk_10m_o),
        .iTrigRstn(processing_system7_0_FCLK_RESET0_N),
        .m_axi_araddr(TriggerCh_1_m_axi_ARADDR),
        .m_axi_arburst(TriggerCh_1_m_axi_ARBURST),
        .m_axi_arcache(TriggerCh_1_m_axi_ARCACHE),
        .m_axi_arid(TriggerCh_1_m_axi_ARID),
        .m_axi_arlen(TriggerCh_1_m_axi_ARLEN),
        .m_axi_arlock(TriggerCh_1_m_axi_ARLOCK),
        .m_axi_arprot(TriggerCh_1_m_axi_ARPROT),
        .m_axi_arqos(TriggerCh_1_m_axi_ARQOS),
        .m_axi_arready(TriggerCh_1_m_axi_ARREADY),
        .m_axi_arsize(TriggerCh_1_m_axi_ARSIZE),
        .m_axi_aruser(TriggerCh_1_m_axi_ARUSER),
        .m_axi_arvalid(TriggerCh_1_m_axi_ARVALID),
        .m_axi_awaddr(TriggerCh_1_m_axi_AWADDR),
        .m_axi_awburst(TriggerCh_1_m_axi_AWBURST),
        .m_axi_awcache(TriggerCh_1_m_axi_AWCACHE),
        .m_axi_awid(TriggerCh_1_m_axi_AWID),
        .m_axi_awlen(TriggerCh_1_m_axi_AWLEN),
        .m_axi_awlock(TriggerCh_1_m_axi_AWLOCK),
        .m_axi_awprot(TriggerCh_1_m_axi_AWPROT),
        .m_axi_awqos(TriggerCh_1_m_axi_AWQOS),
        .m_axi_awready(TriggerCh_1_m_axi_AWREADY),
        .m_axi_awsize(TriggerCh_1_m_axi_AWSIZE),
        .m_axi_awuser(TriggerCh_1_m_axi_AWUSER),
        .m_axi_awvalid(TriggerCh_1_m_axi_AWVALID),
        .m_axi_bid(TriggerCh_1_m_axi_BID),
        .m_axi_bready(TriggerCh_1_m_axi_BREADY),
        .m_axi_bresp(TriggerCh_1_m_axi_BRESP),
        .m_axi_bvalid(TriggerCh_1_m_axi_BVALID),
        .m_axi_clk(TriggerCh_1_m_axi_clk),
        .m_axi_rdata(TriggerCh_1_m_axi_RDATA),
        .m_axi_rid(TriggerCh_1_m_axi_RID),
        .m_axi_rlast(TriggerCh_1_m_axi_RLAST),
        .m_axi_rready(TriggerCh_1_m_axi_RREADY),
        .m_axi_rresp(TriggerCh_1_m_axi_RRESP),
        .m_axi_rstn(TriggerCh_1_m_axi_rstn),
        .m_axi_rvalid(TriggerCh_1_m_axi_RVALID),
        .m_axi_wdata(TriggerCh_1_m_axi_WDATA),
        .m_axi_wlast(TriggerCh_1_m_axi_WLAST),
        .m_axi_wready(TriggerCh_1_m_axi_WREADY),
        .m_axi_wstrb(TriggerCh_1_m_axi_WSTRB),
        .m_axi_wvalid(TriggerCh_1_m_axi_WVALID),
        .oStateToFINISHIntr(TriggerCh_1_oStateToFINISHIntr),
        .s_axil_araddr(ps7_0_axi_periph_M02_AXI_ARADDR),
        .s_axil_arprot(ps7_0_axi_periph_M02_AXI_ARPROT),
        .s_axil_arready(ps7_0_axi_periph_M02_AXI_ARREADY),
        .s_axil_arvalid(ps7_0_axi_periph_M02_AXI_ARVALID),
        .s_axil_awaddr(ps7_0_axi_periph_M02_AXI_AWADDR),
        .s_axil_awprot(ps7_0_axi_periph_M02_AXI_AWPROT),
        .s_axil_awready(ps7_0_axi_periph_M02_AXI_AWREADY),
        .s_axil_awvalid(ps7_0_axi_periph_M02_AXI_AWVALID),
        .s_axil_bready(ps7_0_axi_periph_M02_AXI_BREADY),
        .s_axil_bresp(ps7_0_axi_periph_M02_AXI_BRESP),
        .s_axil_bvalid(ps7_0_axi_periph_M02_AXI_BVALID),
        .s_axil_clk(Adc9228_top_0_clk_10m_o),
        .s_axil_rdata(ps7_0_axi_periph_M02_AXI_RDATA),
        .s_axil_rready(ps7_0_axi_periph_M02_AXI_RREADY),
        .s_axil_rresp(ps7_0_axi_periph_M02_AXI_RRESP),
        .s_axil_rstn(M02_ARESETN_1),
        .s_axil_rvalid(ps7_0_axi_periph_M02_AXI_RVALID),
        .s_axil_wdata(ps7_0_axi_periph_M02_AXI_WDATA),
        .s_axil_wready(ps7_0_axi_periph_M02_AXI_WREADY),
        .s_axil_wstrb(ps7_0_axi_periph_M02_AXI_WSTRB),
        .s_axil_wvalid(ps7_0_axi_periph_M02_AXI_WVALID));
  Adc3444_TCP_TriggerCh_2_0 TriggerCh_2
       (.iAdcData(Adc9228_top_0_DataToTriCh2),
        .iAdcData_Tri(Adc9228_top_0_TrigInCh2),
        .iTrigClk(Adc9228_top_0_clk_10m_o),
        .iTrigRstn(processing_system7_0_FCLK_RESET0_N),
        .m_axi_araddr(TriggerCh_2_m_axi_ARADDR),
        .m_axi_arburst(TriggerCh_2_m_axi_ARBURST),
        .m_axi_arcache(TriggerCh_2_m_axi_ARCACHE),
        .m_axi_arid(TriggerCh_2_m_axi_ARID),
        .m_axi_arlen(TriggerCh_2_m_axi_ARLEN),
        .m_axi_arlock(TriggerCh_2_m_axi_ARLOCK),
        .m_axi_arprot(TriggerCh_2_m_axi_ARPROT),
        .m_axi_arqos(TriggerCh_2_m_axi_ARQOS),
        .m_axi_arready(TriggerCh_2_m_axi_ARREADY),
        .m_axi_arsize(TriggerCh_2_m_axi_ARSIZE),
        .m_axi_aruser(TriggerCh_2_m_axi_ARUSER),
        .m_axi_arvalid(TriggerCh_2_m_axi_ARVALID),
        .m_axi_awaddr(TriggerCh_2_m_axi_AWADDR),
        .m_axi_awburst(TriggerCh_2_m_axi_AWBURST),
        .m_axi_awcache(TriggerCh_2_m_axi_AWCACHE),
        .m_axi_awid(TriggerCh_2_m_axi_AWID),
        .m_axi_awlen(TriggerCh_2_m_axi_AWLEN),
        .m_axi_awlock(TriggerCh_2_m_axi_AWLOCK),
        .m_axi_awprot(TriggerCh_2_m_axi_AWPROT),
        .m_axi_awqos(TriggerCh_2_m_axi_AWQOS),
        .m_axi_awready(TriggerCh_2_m_axi_AWREADY),
        .m_axi_awsize(TriggerCh_2_m_axi_AWSIZE),
        .m_axi_awuser(TriggerCh_2_m_axi_AWUSER),
        .m_axi_awvalid(TriggerCh_2_m_axi_AWVALID),
        .m_axi_bid(TriggerCh_2_m_axi_BID),
        .m_axi_bready(TriggerCh_2_m_axi_BREADY),
        .m_axi_bresp(TriggerCh_2_m_axi_BRESP),
        .m_axi_bvalid(TriggerCh_2_m_axi_BVALID),
        .m_axi_clk(TriggerCh_2_m_axi_clk),
        .m_axi_rdata(TriggerCh_2_m_axi_RDATA),
        .m_axi_rid(TriggerCh_2_m_axi_RID),
        .m_axi_rlast(TriggerCh_2_m_axi_RLAST),
        .m_axi_rready(TriggerCh_2_m_axi_RREADY),
        .m_axi_rresp(TriggerCh_2_m_axi_RRESP),
        .m_axi_rstn(TriggerCh_2_m_axi_rstn),
        .m_axi_rvalid(TriggerCh_2_m_axi_RVALID),
        .m_axi_wdata(TriggerCh_2_m_axi_WDATA),
        .m_axi_wlast(TriggerCh_2_m_axi_WLAST),
        .m_axi_wready(TriggerCh_2_m_axi_WREADY),
        .m_axi_wstrb(TriggerCh_2_m_axi_WSTRB),
        .m_axi_wvalid(TriggerCh_2_m_axi_WVALID),
        .oStateToFINISHIntr(TriggerCh_2_oStateToFINISHIntr),
        .s_axil_araddr(ps7_0_axi_periph_M03_AXI_ARADDR),
        .s_axil_arprot(ps7_0_axi_periph_M03_AXI_ARPROT),
        .s_axil_arready(ps7_0_axi_periph_M03_AXI_ARREADY),
        .s_axil_arvalid(ps7_0_axi_periph_M03_AXI_ARVALID),
        .s_axil_awaddr(ps7_0_axi_periph_M03_AXI_AWADDR),
        .s_axil_awprot(ps7_0_axi_periph_M03_AXI_AWPROT),
        .s_axil_awready(ps7_0_axi_periph_M03_AXI_AWREADY),
        .s_axil_awvalid(ps7_0_axi_periph_M03_AXI_AWVALID),
        .s_axil_bready(ps7_0_axi_periph_M03_AXI_BREADY),
        .s_axil_bresp(ps7_0_axi_periph_M03_AXI_BRESP),
        .s_axil_bvalid(ps7_0_axi_periph_M03_AXI_BVALID),
        .s_axil_clk(Adc9228_top_0_clk_10m_o),
        .s_axil_rdata(ps7_0_axi_periph_M03_AXI_RDATA),
        .s_axil_rready(ps7_0_axi_periph_M03_AXI_RREADY),
        .s_axil_rresp(ps7_0_axi_periph_M03_AXI_RRESP),
        .s_axil_rstn(M02_ARESETN_1),
        .s_axil_rvalid(ps7_0_axi_periph_M03_AXI_RVALID),
        .s_axil_wdata(ps7_0_axi_periph_M03_AXI_WDATA),
        .s_axil_wready(ps7_0_axi_periph_M03_AXI_WREADY),
        .s_axil_wstrb(ps7_0_axi_periph_M03_AXI_WSTRB),
        .s_axil_wvalid(ps7_0_axi_periph_M03_AXI_WVALID));
  Adc3444_TCP_TriggerCh_3_1 TriggerCh_3
       (.iAdcData(Adc9228_top_0_DataToTriCh3),
        .iAdcData_Tri(Adc9228_top_0_TrigInCh3),
        .iTrigClk(Adc9228_top_0_clk_10m_o),
        .iTrigRstn(processing_system7_0_FCLK_RESET0_N),
        .m_axi_araddr(TriggerCh_3_m_axi_ARADDR),
        .m_axi_arburst(TriggerCh_3_m_axi_ARBURST),
        .m_axi_arcache(TriggerCh_3_m_axi_ARCACHE),
        .m_axi_arid(TriggerCh_3_m_axi_ARID),
        .m_axi_arlen(TriggerCh_3_m_axi_ARLEN),
        .m_axi_arlock(TriggerCh_3_m_axi_ARLOCK),
        .m_axi_arprot(TriggerCh_3_m_axi_ARPROT),
        .m_axi_arqos(TriggerCh_3_m_axi_ARQOS),
        .m_axi_arready(TriggerCh_3_m_axi_ARREADY),
        .m_axi_arsize(TriggerCh_3_m_axi_ARSIZE),
        .m_axi_aruser(TriggerCh_3_m_axi_ARUSER),
        .m_axi_arvalid(TriggerCh_3_m_axi_ARVALID),
        .m_axi_awaddr(TriggerCh_3_m_axi_AWADDR),
        .m_axi_awburst(TriggerCh_3_m_axi_AWBURST),
        .m_axi_awcache(TriggerCh_3_m_axi_AWCACHE),
        .m_axi_awid(TriggerCh_3_m_axi_AWID),
        .m_axi_awlen(TriggerCh_3_m_axi_AWLEN),
        .m_axi_awlock(TriggerCh_3_m_axi_AWLOCK),
        .m_axi_awprot(TriggerCh_3_m_axi_AWPROT),
        .m_axi_awqos(TriggerCh_3_m_axi_AWQOS),
        .m_axi_awready(TriggerCh_3_m_axi_AWREADY),
        .m_axi_awsize(TriggerCh_3_m_axi_AWSIZE),
        .m_axi_awuser(TriggerCh_3_m_axi_AWUSER),
        .m_axi_awvalid(TriggerCh_3_m_axi_AWVALID),
        .m_axi_bid(TriggerCh_3_m_axi_BID),
        .m_axi_bready(TriggerCh_3_m_axi_BREADY),
        .m_axi_bresp(TriggerCh_3_m_axi_BRESP),
        .m_axi_bvalid(TriggerCh_3_m_axi_BVALID),
        .m_axi_clk(TriggerCh_3_m_axi_clk),
        .m_axi_rdata(TriggerCh_3_m_axi_RDATA),
        .m_axi_rid(TriggerCh_3_m_axi_RID),
        .m_axi_rlast(TriggerCh_3_m_axi_RLAST),
        .m_axi_rready(TriggerCh_3_m_axi_RREADY),
        .m_axi_rresp(TriggerCh_3_m_axi_RRESP),
        .m_axi_rstn(TriggerCh_3_m_axi_rstn),
        .m_axi_rvalid(TriggerCh_3_m_axi_RVALID),
        .m_axi_wdata(TriggerCh_3_m_axi_WDATA),
        .m_axi_wlast(TriggerCh_3_m_axi_WLAST),
        .m_axi_wready(TriggerCh_3_m_axi_WREADY),
        .m_axi_wstrb(TriggerCh_3_m_axi_WSTRB),
        .m_axi_wvalid(TriggerCh_3_m_axi_WVALID),
        .oStateToFINISHIntr(TriggerCh_3_oStateToFINISHIntr),
        .s_axil_araddr(ps7_0_axi_periph_M04_AXI_ARADDR),
        .s_axil_arprot(ps7_0_axi_periph_M04_AXI_ARPROT),
        .s_axil_arready(ps7_0_axi_periph_M04_AXI_ARREADY),
        .s_axil_arvalid(ps7_0_axi_periph_M04_AXI_ARVALID),
        .s_axil_awaddr(ps7_0_axi_periph_M04_AXI_AWADDR),
        .s_axil_awprot(ps7_0_axi_periph_M04_AXI_AWPROT),
        .s_axil_awready(ps7_0_axi_periph_M04_AXI_AWREADY),
        .s_axil_awvalid(ps7_0_axi_periph_M04_AXI_AWVALID),
        .s_axil_bready(ps7_0_axi_periph_M04_AXI_BREADY),
        .s_axil_bresp(ps7_0_axi_periph_M04_AXI_BRESP),
        .s_axil_bvalid(ps7_0_axi_periph_M04_AXI_BVALID),
        .s_axil_clk(Adc9228_top_0_clk_10m_o),
        .s_axil_rdata(ps7_0_axi_periph_M04_AXI_RDATA),
        .s_axil_rready(ps7_0_axi_periph_M04_AXI_RREADY),
        .s_axil_rresp(ps7_0_axi_periph_M04_AXI_RRESP),
        .s_axil_rstn(M02_ARESETN_1),
        .s_axil_rvalid(ps7_0_axi_periph_M04_AXI_RVALID),
        .s_axil_wdata(ps7_0_axi_periph_M04_AXI_WDATA),
        .s_axil_wready(ps7_0_axi_periph_M04_AXI_WREADY),
        .s_axil_wstrb(ps7_0_axi_periph_M04_AXI_WSTRB),
        .s_axil_wvalid(ps7_0_axi_periph_M04_AXI_WVALID));
  Adc3444_TCP_processing_system7_0_1 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .GPIO_I(1'b0),
        .GPIO_O(processing_system7_0_GPIO_O),
        .IRQ_F2P(xlconcat_0_dout),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(Adc9228_top_0_clk_10m_o),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SPI0_MISO_I(1'b0),
        .SPI0_MOSI_I(1'b0),
        .SPI0_MOSI_O(processing_system7_0_SPI0_MOSI_O),
        .SPI0_SCLK_I(1'b0),
        .SPI0_SCLK_O(processing_system7_0_SPI0_SCLK_O),
        .SPI0_SS_I(1'b0),
        .SPI0_SS_T(processing_system7_0_SPI0_SS_T),
        .SPI1_MISO_I(1'b0),
        .SPI1_MOSI_I(1'b0),
        .SPI1_MOSI_O(processing_system7_0_SPI1_MOSI_O),
        .SPI1_SCLK_I(1'b0),
        .SPI1_SCLK_O(processing_system7_0_SPI1_SCLK_O),
        .SPI1_SS_I(1'b0),
        .SPI1_SS_T(processing_system7_0_SPI1_SS_T),
        .S_AXI_HP0_ACLK(TriggerCh_0_m_axi_clk),
        .S_AXI_HP0_ARADDR(smartconnect_0_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(smartconnect_0_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(smartconnect_0_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN(smartconnect_0_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(smartconnect_0_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(smartconnect_0_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(smartconnect_0_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(smartconnect_0_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(smartconnect_0_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(smartconnect_0_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(smartconnect_0_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(smartconnect_0_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(smartconnect_0_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN(smartconnect_0_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(smartconnect_0_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(smartconnect_0_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(smartconnect_0_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(smartconnect_0_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(smartconnect_0_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(smartconnect_0_M00_AXI_AWVALID),
        .S_AXI_HP0_BREADY(smartconnect_0_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(smartconnect_0_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(smartconnect_0_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(smartconnect_0_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RLAST(smartconnect_0_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(smartconnect_0_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(smartconnect_0_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(smartconnect_0_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(smartconnect_0_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(smartconnect_0_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(smartconnect_0_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(smartconnect_0_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(smartconnect_0_M00_AXI_WVALID),
        .S_AXI_HP1_ACLK(TriggerCh_1_m_axi_clk),
        .S_AXI_HP1_ARADDR(smartconnect_1_M00_AXI_ARADDR),
        .S_AXI_HP1_ARBURST(smartconnect_1_M00_AXI_ARBURST),
        .S_AXI_HP1_ARCACHE(smartconnect_1_M00_AXI_ARCACHE),
        .S_AXI_HP1_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARLEN(smartconnect_1_M00_AXI_ARLEN),
        .S_AXI_HP1_ARLOCK(smartconnect_1_M00_AXI_ARLOCK),
        .S_AXI_HP1_ARPROT(smartconnect_1_M00_AXI_ARPROT),
        .S_AXI_HP1_ARQOS(smartconnect_1_M00_AXI_ARQOS),
        .S_AXI_HP1_ARREADY(smartconnect_1_M00_AXI_ARREADY),
        .S_AXI_HP1_ARSIZE(smartconnect_1_M00_AXI_ARSIZE),
        .S_AXI_HP1_ARVALID(smartconnect_1_M00_AXI_ARVALID),
        .S_AXI_HP1_AWADDR(smartconnect_1_M00_AXI_AWADDR),
        .S_AXI_HP1_AWBURST(smartconnect_1_M00_AXI_AWBURST),
        .S_AXI_HP1_AWCACHE(smartconnect_1_M00_AXI_AWCACHE),
        .S_AXI_HP1_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_AWLEN(smartconnect_1_M00_AXI_AWLEN),
        .S_AXI_HP1_AWLOCK(smartconnect_1_M00_AXI_AWLOCK),
        .S_AXI_HP1_AWPROT(smartconnect_1_M00_AXI_AWPROT),
        .S_AXI_HP1_AWQOS(smartconnect_1_M00_AXI_AWQOS),
        .S_AXI_HP1_AWREADY(smartconnect_1_M00_AXI_AWREADY),
        .S_AXI_HP1_AWSIZE(smartconnect_1_M00_AXI_AWSIZE),
        .S_AXI_HP1_AWVALID(smartconnect_1_M00_AXI_AWVALID),
        .S_AXI_HP1_BREADY(smartconnect_1_M00_AXI_BREADY),
        .S_AXI_HP1_BRESP(smartconnect_1_M00_AXI_BRESP),
        .S_AXI_HP1_BVALID(smartconnect_1_M00_AXI_BVALID),
        .S_AXI_HP1_RDATA(smartconnect_1_M00_AXI_RDATA),
        .S_AXI_HP1_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP1_RLAST(smartconnect_1_M00_AXI_RLAST),
        .S_AXI_HP1_RREADY(smartconnect_1_M00_AXI_RREADY),
        .S_AXI_HP1_RRESP(smartconnect_1_M00_AXI_RRESP),
        .S_AXI_HP1_RVALID(smartconnect_1_M00_AXI_RVALID),
        .S_AXI_HP1_WDATA(smartconnect_1_M00_AXI_WDATA),
        .S_AXI_HP1_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_WLAST(smartconnect_1_M00_AXI_WLAST),
        .S_AXI_HP1_WREADY(smartconnect_1_M00_AXI_WREADY),
        .S_AXI_HP1_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP1_WSTRB(smartconnect_1_M00_AXI_WSTRB),
        .S_AXI_HP1_WVALID(smartconnect_1_M00_AXI_WVALID),
        .S_AXI_HP2_ACLK(TriggerCh_2_m_axi_clk),
        .S_AXI_HP2_ARADDR(smartconnect_2_M00_AXI_ARADDR),
        .S_AXI_HP2_ARBURST(smartconnect_2_M00_AXI_ARBURST),
        .S_AXI_HP2_ARCACHE(smartconnect_2_M00_AXI_ARCACHE),
        .S_AXI_HP2_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARLEN(smartconnect_2_M00_AXI_ARLEN),
        .S_AXI_HP2_ARLOCK(smartconnect_2_M00_AXI_ARLOCK),
        .S_AXI_HP2_ARPROT(smartconnect_2_M00_AXI_ARPROT),
        .S_AXI_HP2_ARQOS(smartconnect_2_M00_AXI_ARQOS),
        .S_AXI_HP2_ARREADY(smartconnect_2_M00_AXI_ARREADY),
        .S_AXI_HP2_ARSIZE(smartconnect_2_M00_AXI_ARSIZE),
        .S_AXI_HP2_ARVALID(smartconnect_2_M00_AXI_ARVALID),
        .S_AXI_HP2_AWADDR(smartconnect_2_M00_AXI_AWADDR),
        .S_AXI_HP2_AWBURST(smartconnect_2_M00_AXI_AWBURST),
        .S_AXI_HP2_AWCACHE(smartconnect_2_M00_AXI_AWCACHE),
        .S_AXI_HP2_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWLEN(smartconnect_2_M00_AXI_AWLEN),
        .S_AXI_HP2_AWLOCK(smartconnect_2_M00_AXI_AWLOCK),
        .S_AXI_HP2_AWPROT(smartconnect_2_M00_AXI_AWPROT),
        .S_AXI_HP2_AWQOS(smartconnect_2_M00_AXI_AWQOS),
        .S_AXI_HP2_AWREADY(smartconnect_2_M00_AXI_AWREADY),
        .S_AXI_HP2_AWSIZE(smartconnect_2_M00_AXI_AWSIZE),
        .S_AXI_HP2_AWVALID(smartconnect_2_M00_AXI_AWVALID),
        .S_AXI_HP2_BREADY(smartconnect_2_M00_AXI_BREADY),
        .S_AXI_HP2_BRESP(smartconnect_2_M00_AXI_BRESP),
        .S_AXI_HP2_BVALID(smartconnect_2_M00_AXI_BVALID),
        .S_AXI_HP2_RDATA(smartconnect_2_M00_AXI_RDATA),
        .S_AXI_HP2_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP2_RLAST(smartconnect_2_M00_AXI_RLAST),
        .S_AXI_HP2_RREADY(smartconnect_2_M00_AXI_RREADY),
        .S_AXI_HP2_RRESP(smartconnect_2_M00_AXI_RRESP),
        .S_AXI_HP2_RVALID(smartconnect_2_M00_AXI_RVALID),
        .S_AXI_HP2_WDATA(smartconnect_2_M00_AXI_WDATA),
        .S_AXI_HP2_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_WLAST(smartconnect_2_M00_AXI_WLAST),
        .S_AXI_HP2_WREADY(smartconnect_2_M00_AXI_WREADY),
        .S_AXI_HP2_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP2_WSTRB(smartconnect_2_M00_AXI_WSTRB),
        .S_AXI_HP2_WVALID(smartconnect_2_M00_AXI_WVALID),
        .S_AXI_HP3_ACLK(TriggerCh_3_m_axi_clk),
        .S_AXI_HP3_ARADDR(smartconnect_3_M00_AXI_ARADDR),
        .S_AXI_HP3_ARBURST(smartconnect_3_M00_AXI_ARBURST),
        .S_AXI_HP3_ARCACHE(smartconnect_3_M00_AXI_ARCACHE),
        .S_AXI_HP3_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP3_ARLEN(smartconnect_3_M00_AXI_ARLEN),
        .S_AXI_HP3_ARLOCK(smartconnect_3_M00_AXI_ARLOCK),
        .S_AXI_HP3_ARPROT(smartconnect_3_M00_AXI_ARPROT),
        .S_AXI_HP3_ARQOS(smartconnect_3_M00_AXI_ARQOS),
        .S_AXI_HP3_ARREADY(smartconnect_3_M00_AXI_ARREADY),
        .S_AXI_HP3_ARSIZE(smartconnect_3_M00_AXI_ARSIZE),
        .S_AXI_HP3_ARVALID(smartconnect_3_M00_AXI_ARVALID),
        .S_AXI_HP3_AWADDR(smartconnect_3_M00_AXI_AWADDR),
        .S_AXI_HP3_AWBURST(smartconnect_3_M00_AXI_AWBURST),
        .S_AXI_HP3_AWCACHE(smartconnect_3_M00_AXI_AWCACHE),
        .S_AXI_HP3_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP3_AWLEN(smartconnect_3_M00_AXI_AWLEN),
        .S_AXI_HP3_AWLOCK(smartconnect_3_M00_AXI_AWLOCK),
        .S_AXI_HP3_AWPROT(smartconnect_3_M00_AXI_AWPROT),
        .S_AXI_HP3_AWQOS(smartconnect_3_M00_AXI_AWQOS),
        .S_AXI_HP3_AWREADY(smartconnect_3_M00_AXI_AWREADY),
        .S_AXI_HP3_AWSIZE(smartconnect_3_M00_AXI_AWSIZE),
        .S_AXI_HP3_AWVALID(smartconnect_3_M00_AXI_AWVALID),
        .S_AXI_HP3_BREADY(smartconnect_3_M00_AXI_BREADY),
        .S_AXI_HP3_BRESP(smartconnect_3_M00_AXI_BRESP),
        .S_AXI_HP3_BVALID(smartconnect_3_M00_AXI_BVALID),
        .S_AXI_HP3_RDATA(smartconnect_3_M00_AXI_RDATA),
        .S_AXI_HP3_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP3_RLAST(smartconnect_3_M00_AXI_RLAST),
        .S_AXI_HP3_RREADY(smartconnect_3_M00_AXI_RREADY),
        .S_AXI_HP3_RRESP(smartconnect_3_M00_AXI_RRESP),
        .S_AXI_HP3_RVALID(smartconnect_3_M00_AXI_RVALID),
        .S_AXI_HP3_WDATA(smartconnect_3_M00_AXI_WDATA),
        .S_AXI_HP3_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP3_WLAST(smartconnect_3_M00_AXI_WLAST),
        .S_AXI_HP3_WREADY(smartconnect_3_M00_AXI_WREADY),
        .S_AXI_HP3_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP3_WSTRB(smartconnect_3_M00_AXI_WSTRB),
        .S_AXI_HP3_WVALID(smartconnect_3_M00_AXI_WVALID));
  Adc3444_TCP_ps7_0_axi_periph_0 ps7_0_axi_periph
       (.ACLK(Adc9228_top_0_clk_10m_o),
        .ARESETN(ARESETN_1),
        .M00_ACLK(Adc9228_top_0_clk_10m_o),
        .M00_ARESETN(M02_ARESETN_1),
        .M00_AXI_araddr(ps7_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arprot(ps7_0_axi_periph_M00_AXI_ARPROT),
        .M00_AXI_arready(ps7_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps7_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps7_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awprot(ps7_0_axi_periph_M00_AXI_AWPROT),
        .M00_AXI_awready(ps7_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps7_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps7_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps7_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps7_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps7_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps7_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps7_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps7_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps7_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps7_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps7_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps7_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(Adc9228_top_0_clk_10m_o),
        .M01_ARESETN(M02_ARESETN_1),
        .M01_AXI_araddr(ps7_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arprot(ps7_0_axi_periph_M01_AXI_ARPROT),
        .M01_AXI_arready(ps7_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps7_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps7_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awprot(ps7_0_axi_periph_M01_AXI_AWPROT),
        .M01_AXI_awready(ps7_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps7_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(ps7_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(ps7_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps7_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(ps7_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(ps7_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(ps7_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps7_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(ps7_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(ps7_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps7_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps7_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(Adc9228_top_0_clk_10m_o),
        .M02_ARESETN(M02_ARESETN_1),
        .M02_AXI_araddr(ps7_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arprot(ps7_0_axi_periph_M02_AXI_ARPROT),
        .M02_AXI_arready(ps7_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(ps7_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(ps7_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awprot(ps7_0_axi_periph_M02_AXI_AWPROT),
        .M02_AXI_awready(ps7_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(ps7_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(ps7_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(ps7_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(ps7_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(ps7_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(ps7_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(ps7_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(ps7_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(ps7_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(ps7_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(ps7_0_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(ps7_0_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(Adc9228_top_0_clk_10m_o),
        .M03_ARESETN(M02_ARESETN_1),
        .M03_AXI_araddr(ps7_0_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arprot(ps7_0_axi_periph_M03_AXI_ARPROT),
        .M03_AXI_arready(ps7_0_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(ps7_0_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(ps7_0_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awprot(ps7_0_axi_periph_M03_AXI_AWPROT),
        .M03_AXI_awready(ps7_0_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(ps7_0_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(ps7_0_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(ps7_0_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(ps7_0_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(ps7_0_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(ps7_0_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(ps7_0_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(ps7_0_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(ps7_0_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(ps7_0_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(ps7_0_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(ps7_0_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(Adc9228_top_0_clk_10m_o),
        .M04_ARESETN(M02_ARESETN_1),
        .M04_AXI_araddr(ps7_0_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arprot(ps7_0_axi_periph_M04_AXI_ARPROT),
        .M04_AXI_arready(ps7_0_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(ps7_0_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(ps7_0_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awprot(ps7_0_axi_periph_M04_AXI_AWPROT),
        .M04_AXI_awready(ps7_0_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(ps7_0_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(ps7_0_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(ps7_0_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(ps7_0_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(ps7_0_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(ps7_0_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(ps7_0_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(ps7_0_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(ps7_0_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(ps7_0_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(ps7_0_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(ps7_0_axi_periph_M04_AXI_WVALID),
        .S00_ACLK(Adc9228_top_0_clk_10m_o),
        .S00_ARESETN(M02_ARESETN_1),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID));
  Adc3444_TCP_rst_Adc9228_top_0_10M_2 rst_Adc9228_top_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(ARESETN_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(M02_ARESETN_1),
        .slowest_sync_clk(Adc9228_top_0_clk_10m_o));
  Adc3444_TCP_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_aruser(smartconnect_0_M00_AXI_ARUSER),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awuser(smartconnect_0_M00_AXI_AWUSER),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(TriggerCh_0_m_axi_ARADDR),
        .S00_AXI_arburst(TriggerCh_0_m_axi_ARBURST),
        .S00_AXI_arcache(TriggerCh_0_m_axi_ARCACHE),
        .S00_AXI_arid(TriggerCh_0_m_axi_ARID),
        .S00_AXI_arlen(TriggerCh_0_m_axi_ARLEN),
        .S00_AXI_arlock(TriggerCh_0_m_axi_ARLOCK),
        .S00_AXI_arprot(TriggerCh_0_m_axi_ARPROT),
        .S00_AXI_arqos(TriggerCh_0_m_axi_ARQOS),
        .S00_AXI_arready(TriggerCh_0_m_axi_ARREADY),
        .S00_AXI_arsize(TriggerCh_0_m_axi_ARSIZE),
        .S00_AXI_aruser(TriggerCh_0_m_axi_ARUSER),
        .S00_AXI_arvalid(TriggerCh_0_m_axi_ARVALID),
        .S00_AXI_awaddr(TriggerCh_0_m_axi_AWADDR),
        .S00_AXI_awburst(TriggerCh_0_m_axi_AWBURST),
        .S00_AXI_awcache(TriggerCh_0_m_axi_AWCACHE),
        .S00_AXI_awid(TriggerCh_0_m_axi_AWID),
        .S00_AXI_awlen(TriggerCh_0_m_axi_AWLEN),
        .S00_AXI_awlock(TriggerCh_0_m_axi_AWLOCK),
        .S00_AXI_awprot(TriggerCh_0_m_axi_AWPROT),
        .S00_AXI_awqos(TriggerCh_0_m_axi_AWQOS),
        .S00_AXI_awready(TriggerCh_0_m_axi_AWREADY),
        .S00_AXI_awsize(TriggerCh_0_m_axi_AWSIZE),
        .S00_AXI_awuser(TriggerCh_0_m_axi_AWUSER),
        .S00_AXI_awvalid(TriggerCh_0_m_axi_AWVALID),
        .S00_AXI_bid(TriggerCh_0_m_axi_BID),
        .S00_AXI_bready(TriggerCh_0_m_axi_BREADY),
        .S00_AXI_bresp(TriggerCh_0_m_axi_BRESP),
        .S00_AXI_bvalid(TriggerCh_0_m_axi_BVALID),
        .S00_AXI_rdata(TriggerCh_0_m_axi_RDATA),
        .S00_AXI_rid(TriggerCh_0_m_axi_RID),
        .S00_AXI_rlast(TriggerCh_0_m_axi_RLAST),
        .S00_AXI_rready(TriggerCh_0_m_axi_RREADY),
        .S00_AXI_rresp(TriggerCh_0_m_axi_RRESP),
        .S00_AXI_rvalid(TriggerCh_0_m_axi_RVALID),
        .S00_AXI_wdata(TriggerCh_0_m_axi_WDATA),
        .S00_AXI_wlast(TriggerCh_0_m_axi_WLAST),
        .S00_AXI_wready(TriggerCh_0_m_axi_WREADY),
        .S00_AXI_wstrb(TriggerCh_0_m_axi_WSTRB),
        .S00_AXI_wvalid(TriggerCh_0_m_axi_WVALID),
        .aclk(TriggerCh_0_m_axi_clk),
        .aresetn(TriggerCh_0_m_axi_rstn));
  Adc3444_TCP_smartconnect_0_1 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_1_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .S00_AXI_araddr(TriggerCh_1_m_axi_ARADDR),
        .S00_AXI_arburst(TriggerCh_1_m_axi_ARBURST),
        .S00_AXI_arcache(TriggerCh_1_m_axi_ARCACHE),
        .S00_AXI_arid(TriggerCh_1_m_axi_ARID),
        .S00_AXI_arlen(TriggerCh_1_m_axi_ARLEN),
        .S00_AXI_arlock(TriggerCh_1_m_axi_ARLOCK),
        .S00_AXI_arprot(TriggerCh_1_m_axi_ARPROT),
        .S00_AXI_arqos(TriggerCh_1_m_axi_ARQOS),
        .S00_AXI_arready(TriggerCh_1_m_axi_ARREADY),
        .S00_AXI_arsize(TriggerCh_1_m_axi_ARSIZE),
        .S00_AXI_aruser(TriggerCh_1_m_axi_ARUSER),
        .S00_AXI_arvalid(TriggerCh_1_m_axi_ARVALID),
        .S00_AXI_awaddr(TriggerCh_1_m_axi_AWADDR),
        .S00_AXI_awburst(TriggerCh_1_m_axi_AWBURST),
        .S00_AXI_awcache(TriggerCh_1_m_axi_AWCACHE),
        .S00_AXI_awid(TriggerCh_1_m_axi_AWID),
        .S00_AXI_awlen(TriggerCh_1_m_axi_AWLEN),
        .S00_AXI_awlock(TriggerCh_1_m_axi_AWLOCK),
        .S00_AXI_awprot(TriggerCh_1_m_axi_AWPROT),
        .S00_AXI_awqos(TriggerCh_1_m_axi_AWQOS),
        .S00_AXI_awready(TriggerCh_1_m_axi_AWREADY),
        .S00_AXI_awsize(TriggerCh_1_m_axi_AWSIZE),
        .S00_AXI_awuser(TriggerCh_1_m_axi_AWUSER),
        .S00_AXI_awvalid(TriggerCh_1_m_axi_AWVALID),
        .S00_AXI_bid(TriggerCh_1_m_axi_BID),
        .S00_AXI_bready(TriggerCh_1_m_axi_BREADY),
        .S00_AXI_bresp(TriggerCh_1_m_axi_BRESP),
        .S00_AXI_bvalid(TriggerCh_1_m_axi_BVALID),
        .S00_AXI_rdata(TriggerCh_1_m_axi_RDATA),
        .S00_AXI_rid(TriggerCh_1_m_axi_RID),
        .S00_AXI_rlast(TriggerCh_1_m_axi_RLAST),
        .S00_AXI_rready(TriggerCh_1_m_axi_RREADY),
        .S00_AXI_rresp(TriggerCh_1_m_axi_RRESP),
        .S00_AXI_rvalid(TriggerCh_1_m_axi_RVALID),
        .S00_AXI_wdata(TriggerCh_1_m_axi_WDATA),
        .S00_AXI_wlast(TriggerCh_1_m_axi_WLAST),
        .S00_AXI_wready(TriggerCh_1_m_axi_WREADY),
        .S00_AXI_wstrb(TriggerCh_1_m_axi_WSTRB),
        .S00_AXI_wvalid(TriggerCh_1_m_axi_WVALID),
        .aclk(TriggerCh_1_m_axi_clk),
        .aresetn(TriggerCh_1_m_axi_rstn));
  Adc3444_TCP_smartconnect_0_2 smartconnect_2
       (.M00_AXI_araddr(smartconnect_2_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_2_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_2_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_2_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_2_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_2_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_2_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_2_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_2_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_2_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_2_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_2_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_2_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_2_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_2_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_2_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_2_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_2_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_2_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_2_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_2_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_2_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_2_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_2_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_2_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_2_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_2_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_2_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_2_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_2_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_2_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_2_M00_AXI_WVALID),
        .S00_AXI_araddr(TriggerCh_2_m_axi_ARADDR),
        .S00_AXI_arburst(TriggerCh_2_m_axi_ARBURST),
        .S00_AXI_arcache(TriggerCh_2_m_axi_ARCACHE),
        .S00_AXI_arid(TriggerCh_2_m_axi_ARID),
        .S00_AXI_arlen(TriggerCh_2_m_axi_ARLEN),
        .S00_AXI_arlock(TriggerCh_2_m_axi_ARLOCK),
        .S00_AXI_arprot(TriggerCh_2_m_axi_ARPROT),
        .S00_AXI_arqos(TriggerCh_2_m_axi_ARQOS),
        .S00_AXI_arready(TriggerCh_2_m_axi_ARREADY),
        .S00_AXI_arsize(TriggerCh_2_m_axi_ARSIZE),
        .S00_AXI_aruser(TriggerCh_2_m_axi_ARUSER),
        .S00_AXI_arvalid(TriggerCh_2_m_axi_ARVALID),
        .S00_AXI_awaddr(TriggerCh_2_m_axi_AWADDR),
        .S00_AXI_awburst(TriggerCh_2_m_axi_AWBURST),
        .S00_AXI_awcache(TriggerCh_2_m_axi_AWCACHE),
        .S00_AXI_awid(TriggerCh_2_m_axi_AWID),
        .S00_AXI_awlen(TriggerCh_2_m_axi_AWLEN),
        .S00_AXI_awlock(TriggerCh_2_m_axi_AWLOCK),
        .S00_AXI_awprot(TriggerCh_2_m_axi_AWPROT),
        .S00_AXI_awqos(TriggerCh_2_m_axi_AWQOS),
        .S00_AXI_awready(TriggerCh_2_m_axi_AWREADY),
        .S00_AXI_awsize(TriggerCh_2_m_axi_AWSIZE),
        .S00_AXI_awuser(TriggerCh_2_m_axi_AWUSER),
        .S00_AXI_awvalid(TriggerCh_2_m_axi_AWVALID),
        .S00_AXI_bid(TriggerCh_2_m_axi_BID),
        .S00_AXI_bready(TriggerCh_2_m_axi_BREADY),
        .S00_AXI_bresp(TriggerCh_2_m_axi_BRESP),
        .S00_AXI_bvalid(TriggerCh_2_m_axi_BVALID),
        .S00_AXI_rdata(TriggerCh_2_m_axi_RDATA),
        .S00_AXI_rid(TriggerCh_2_m_axi_RID),
        .S00_AXI_rlast(TriggerCh_2_m_axi_RLAST),
        .S00_AXI_rready(TriggerCh_2_m_axi_RREADY),
        .S00_AXI_rresp(TriggerCh_2_m_axi_RRESP),
        .S00_AXI_rvalid(TriggerCh_2_m_axi_RVALID),
        .S00_AXI_wdata(TriggerCh_2_m_axi_WDATA),
        .S00_AXI_wlast(TriggerCh_2_m_axi_WLAST),
        .S00_AXI_wready(TriggerCh_2_m_axi_WREADY),
        .S00_AXI_wstrb(TriggerCh_2_m_axi_WSTRB),
        .S00_AXI_wvalid(TriggerCh_2_m_axi_WVALID),
        .aclk(TriggerCh_2_m_axi_clk),
        .aresetn(TriggerCh_2_m_axi_rstn));
  Adc3444_TCP_smartconnect_0_3 smartconnect_3
       (.M00_AXI_araddr(smartconnect_3_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_3_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_3_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_3_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_3_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_3_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_3_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_3_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_3_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_3_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_3_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_3_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_3_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_3_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_3_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_3_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_3_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_3_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_3_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_3_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_3_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_3_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_3_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_3_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_3_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_3_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_3_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_3_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_3_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_3_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_3_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_3_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_3_M00_AXI_WVALID),
        .S00_AXI_araddr(TriggerCh_3_m_axi_ARADDR),
        .S00_AXI_arburst(TriggerCh_3_m_axi_ARBURST),
        .S00_AXI_arcache(TriggerCh_3_m_axi_ARCACHE),
        .S00_AXI_arid(TriggerCh_3_m_axi_ARID),
        .S00_AXI_arlen(TriggerCh_3_m_axi_ARLEN),
        .S00_AXI_arlock(TriggerCh_3_m_axi_ARLOCK),
        .S00_AXI_arprot(TriggerCh_3_m_axi_ARPROT),
        .S00_AXI_arqos(TriggerCh_3_m_axi_ARQOS),
        .S00_AXI_arready(TriggerCh_3_m_axi_ARREADY),
        .S00_AXI_arsize(TriggerCh_3_m_axi_ARSIZE),
        .S00_AXI_aruser(TriggerCh_3_m_axi_ARUSER),
        .S00_AXI_arvalid(TriggerCh_3_m_axi_ARVALID),
        .S00_AXI_awaddr(TriggerCh_3_m_axi_AWADDR),
        .S00_AXI_awburst(TriggerCh_3_m_axi_AWBURST),
        .S00_AXI_awcache(TriggerCh_3_m_axi_AWCACHE),
        .S00_AXI_awid(TriggerCh_3_m_axi_AWID),
        .S00_AXI_awlen(TriggerCh_3_m_axi_AWLEN),
        .S00_AXI_awlock(TriggerCh_3_m_axi_AWLOCK),
        .S00_AXI_awprot(TriggerCh_3_m_axi_AWPROT),
        .S00_AXI_awqos(TriggerCh_3_m_axi_AWQOS),
        .S00_AXI_awready(TriggerCh_3_m_axi_AWREADY),
        .S00_AXI_awsize(TriggerCh_3_m_axi_AWSIZE),
        .S00_AXI_awuser(TriggerCh_3_m_axi_AWUSER),
        .S00_AXI_awvalid(TriggerCh_3_m_axi_AWVALID),
        .S00_AXI_bid(TriggerCh_3_m_axi_BID),
        .S00_AXI_bready(TriggerCh_3_m_axi_BREADY),
        .S00_AXI_bresp(TriggerCh_3_m_axi_BRESP),
        .S00_AXI_bvalid(TriggerCh_3_m_axi_BVALID),
        .S00_AXI_rdata(TriggerCh_3_m_axi_RDATA),
        .S00_AXI_rid(TriggerCh_3_m_axi_RID),
        .S00_AXI_rlast(TriggerCh_3_m_axi_RLAST),
        .S00_AXI_rready(TriggerCh_3_m_axi_RREADY),
        .S00_AXI_rresp(TriggerCh_3_m_axi_RRESP),
        .S00_AXI_rvalid(TriggerCh_3_m_axi_RVALID),
        .S00_AXI_wdata(TriggerCh_3_m_axi_WDATA),
        .S00_AXI_wlast(TriggerCh_3_m_axi_WLAST),
        .S00_AXI_wready(TriggerCh_3_m_axi_WREADY),
        .S00_AXI_wstrb(TriggerCh_3_m_axi_WSTRB),
        .S00_AXI_wvalid(TriggerCh_3_m_axi_WVALID),
        .aclk(TriggerCh_3_m_axi_clk),
        .aresetn(TriggerCh_3_m_axi_rstn));
  Adc3444_TCP_system_ila_0_0 system_Trig_Ch0
       (.SLOT_0_AXI_araddr(TriggerCh_0_m_axi_ARADDR),
        .SLOT_0_AXI_arburst(TriggerCh_0_m_axi_ARBURST),
        .SLOT_0_AXI_arcache(TriggerCh_0_m_axi_ARCACHE),
        .SLOT_0_AXI_arid(TriggerCh_0_m_axi_ARID),
        .SLOT_0_AXI_arlen(TriggerCh_0_m_axi_ARLEN),
        .SLOT_0_AXI_arlock(TriggerCh_0_m_axi_ARLOCK),
        .SLOT_0_AXI_arprot(TriggerCh_0_m_axi_ARPROT),
        .SLOT_0_AXI_arqos(TriggerCh_0_m_axi_ARQOS),
        .SLOT_0_AXI_arready(TriggerCh_0_m_axi_ARREADY),
        .SLOT_0_AXI_arsize(TriggerCh_0_m_axi_ARSIZE),
        .SLOT_0_AXI_aruser(TriggerCh_0_m_axi_ARUSER),
        .SLOT_0_AXI_arvalid(TriggerCh_0_m_axi_ARVALID),
        .SLOT_0_AXI_awaddr(TriggerCh_0_m_axi_AWADDR),
        .SLOT_0_AXI_awburst(TriggerCh_0_m_axi_AWBURST),
        .SLOT_0_AXI_awcache(TriggerCh_0_m_axi_AWCACHE),
        .SLOT_0_AXI_awid(TriggerCh_0_m_axi_AWID),
        .SLOT_0_AXI_awlen(TriggerCh_0_m_axi_AWLEN),
        .SLOT_0_AXI_awlock(TriggerCh_0_m_axi_AWLOCK),
        .SLOT_0_AXI_awprot(TriggerCh_0_m_axi_AWPROT),
        .SLOT_0_AXI_awqos(TriggerCh_0_m_axi_AWQOS),
        .SLOT_0_AXI_awready(TriggerCh_0_m_axi_AWREADY),
        .SLOT_0_AXI_awsize(TriggerCh_0_m_axi_AWSIZE),
        .SLOT_0_AXI_awuser(TriggerCh_0_m_axi_AWUSER),
        .SLOT_0_AXI_awvalid(TriggerCh_0_m_axi_AWVALID),
        .SLOT_0_AXI_bid(TriggerCh_0_m_axi_BID),
        .SLOT_0_AXI_bready(TriggerCh_0_m_axi_BREADY),
        .SLOT_0_AXI_bresp(TriggerCh_0_m_axi_BRESP),
        .SLOT_0_AXI_bvalid(TriggerCh_0_m_axi_BVALID),
        .SLOT_0_AXI_rdata(TriggerCh_0_m_axi_RDATA),
        .SLOT_0_AXI_rid(TriggerCh_0_m_axi_RID),
        .SLOT_0_AXI_rlast(TriggerCh_0_m_axi_RLAST),
        .SLOT_0_AXI_rready(TriggerCh_0_m_axi_RREADY),
        .SLOT_0_AXI_rresp(TriggerCh_0_m_axi_RRESP),
        .SLOT_0_AXI_rvalid(TriggerCh_0_m_axi_RVALID),
        .SLOT_0_AXI_wdata(TriggerCh_0_m_axi_WDATA),
        .SLOT_0_AXI_wlast(TriggerCh_0_m_axi_WLAST),
        .SLOT_0_AXI_wready(TriggerCh_0_m_axi_WREADY),
        .SLOT_0_AXI_wstrb(TriggerCh_0_m_axi_WSTRB),
        .SLOT_0_AXI_wvalid(TriggerCh_0_m_axi_WVALID),
        .clk(TriggerCh_0_m_axi_clk),
        .resetn(TriggerCh_0_m_axi_rstn));
  Adc3444_TCP_system_Trig_Ch0_0 system_Trig_Ch1
       (.SLOT_0_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .SLOT_0_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .SLOT_0_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .SLOT_0_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .SLOT_0_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .SLOT_0_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .SLOT_0_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .SLOT_0_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .SLOT_0_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .SLOT_0_AXI_aruser(smartconnect_0_M00_AXI_ARUSER),
        .SLOT_0_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .SLOT_0_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .SLOT_0_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .SLOT_0_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .SLOT_0_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .SLOT_0_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .SLOT_0_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .SLOT_0_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .SLOT_0_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .SLOT_0_AXI_awuser(smartconnect_0_M00_AXI_AWUSER),
        .SLOT_0_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .SLOT_0_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .SLOT_0_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .SLOT_0_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .SLOT_0_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .SLOT_0_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .SLOT_0_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .SLOT_0_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .SLOT_0_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .SLOT_0_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .SLOT_0_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .SLOT_0_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .SLOT_0_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .SLOT_0_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .clk(TriggerCh_0_m_axi_clk),
        .resetn(TriggerCh_0_m_axi_rstn));
  Adc3444_TCP_system_ila_0_1 system_ila_axi_periph
       (.SLOT_0_AXI_araddr(ps7_0_axi_periph_M01_AXI_ARADDR),
        .SLOT_0_AXI_arprot(ps7_0_axi_periph_M01_AXI_ARPROT),
        .SLOT_0_AXI_arready(ps7_0_axi_periph_M01_AXI_ARREADY),
        .SLOT_0_AXI_arvalid(ps7_0_axi_periph_M01_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(ps7_0_axi_periph_M01_AXI_AWADDR),
        .SLOT_0_AXI_awprot(ps7_0_axi_periph_M01_AXI_AWPROT),
        .SLOT_0_AXI_awready(ps7_0_axi_periph_M01_AXI_AWREADY),
        .SLOT_0_AXI_awvalid(ps7_0_axi_periph_M01_AXI_AWVALID),
        .SLOT_0_AXI_bready(ps7_0_axi_periph_M01_AXI_BREADY),
        .SLOT_0_AXI_bresp(ps7_0_axi_periph_M01_AXI_BRESP),
        .SLOT_0_AXI_bvalid(ps7_0_axi_periph_M01_AXI_BVALID),
        .SLOT_0_AXI_rdata(ps7_0_axi_periph_M01_AXI_RDATA),
        .SLOT_0_AXI_rready(ps7_0_axi_periph_M01_AXI_RREADY),
        .SLOT_0_AXI_rresp(ps7_0_axi_periph_M01_AXI_RRESP),
        .SLOT_0_AXI_rvalid(ps7_0_axi_periph_M01_AXI_RVALID),
        .SLOT_0_AXI_wdata(ps7_0_axi_periph_M01_AXI_WDATA),
        .SLOT_0_AXI_wready(ps7_0_axi_periph_M01_AXI_WREADY),
        .SLOT_0_AXI_wstrb(ps7_0_axi_periph_M01_AXI_WSTRB),
        .SLOT_0_AXI_wvalid(ps7_0_axi_periph_M01_AXI_WVALID),
        .SLOT_1_AXI_araddr(ps7_0_axi_periph_M00_AXI_ARADDR),
        .SLOT_1_AXI_arprot(ps7_0_axi_periph_M00_AXI_ARPROT),
        .SLOT_1_AXI_arready(ps7_0_axi_periph_M00_AXI_ARREADY),
        .SLOT_1_AXI_arvalid(ps7_0_axi_periph_M00_AXI_ARVALID),
        .SLOT_1_AXI_awaddr(ps7_0_axi_periph_M00_AXI_AWADDR),
        .SLOT_1_AXI_awprot(ps7_0_axi_periph_M00_AXI_AWPROT),
        .SLOT_1_AXI_awready(ps7_0_axi_periph_M00_AXI_AWREADY),
        .SLOT_1_AXI_awvalid(ps7_0_axi_periph_M00_AXI_AWVALID),
        .SLOT_1_AXI_bready(ps7_0_axi_periph_M00_AXI_BREADY),
        .SLOT_1_AXI_bresp(ps7_0_axi_periph_M00_AXI_BRESP),
        .SLOT_1_AXI_bvalid(ps7_0_axi_periph_M00_AXI_BVALID),
        .SLOT_1_AXI_rdata(ps7_0_axi_periph_M00_AXI_RDATA),
        .SLOT_1_AXI_rready(ps7_0_axi_periph_M00_AXI_RREADY),
        .SLOT_1_AXI_rresp(ps7_0_axi_periph_M00_AXI_RRESP),
        .SLOT_1_AXI_rvalid(ps7_0_axi_periph_M00_AXI_RVALID),
        .SLOT_1_AXI_wdata(ps7_0_axi_periph_M00_AXI_WDATA),
        .SLOT_1_AXI_wready(ps7_0_axi_periph_M00_AXI_WREADY),
        .SLOT_1_AXI_wstrb(ps7_0_axi_periph_M00_AXI_WSTRB),
        .SLOT_1_AXI_wvalid(ps7_0_axi_periph_M00_AXI_WVALID),
        .clk(Adc9228_top_0_clk_10m_o),
        .resetn(M02_ARESETN_1));
  Adc3444_TCP_xlconcat_0_1 xlconcat_0
       (.In0(TriggerCh_0_oStateToFINISHIntr),
        .In1(TriggerCh_1_oStateToFINISHIntr),
        .In2(TriggerCh_2_oStateToFINISHIntr),
        .In3(TriggerCh_3_oStateToFINISHIntr),
        .dout(xlconcat_0_dout));
endmodule

module Adc3444_TCP_ps7_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_ps7_0_axi_periph_ARADDR;
  wire [2:0]m00_couplers_to_ps7_0_axi_periph_ARPROT;
  wire m00_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m00_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_ps7_0_axi_periph_AWADDR;
  wire [2:0]m00_couplers_to_ps7_0_axi_periph_AWPROT;
  wire m00_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m00_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m00_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_ps7_0_axi_periph_BRESP;
  wire m00_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_ps7_0_axi_periph_RDATA;
  wire m00_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_ps7_0_axi_periph_RRESP;
  wire m00_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_ps7_0_axi_periph_WDATA;
  wire m00_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m00_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_ps7_0_axi_periph_ARADDR;
  wire [2:0]m01_couplers_to_ps7_0_axi_periph_ARPROT;
  wire m01_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m01_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_ps7_0_axi_periph_AWADDR;
  wire [2:0]m01_couplers_to_ps7_0_axi_periph_AWPROT;
  wire m01_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m01_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m01_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_ps7_0_axi_periph_BRESP;
  wire m01_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_ps7_0_axi_periph_RDATA;
  wire m01_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_ps7_0_axi_periph_RRESP;
  wire m01_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_ps7_0_axi_periph_WDATA;
  wire m01_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m01_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m02_couplers_to_ps7_0_axi_periph_ARADDR;
  wire [2:0]m02_couplers_to_ps7_0_axi_periph_ARPROT;
  wire m02_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m02_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m02_couplers_to_ps7_0_axi_periph_AWADDR;
  wire [2:0]m02_couplers_to_ps7_0_axi_periph_AWPROT;
  wire m02_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m02_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m02_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_ps7_0_axi_periph_BRESP;
  wire m02_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_ps7_0_axi_periph_RDATA;
  wire m02_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_ps7_0_axi_periph_RRESP;
  wire m02_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_ps7_0_axi_periph_WDATA;
  wire m02_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m02_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m03_couplers_to_ps7_0_axi_periph_ARADDR;
  wire [2:0]m03_couplers_to_ps7_0_axi_periph_ARPROT;
  wire m03_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m03_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m03_couplers_to_ps7_0_axi_periph_AWADDR;
  wire [2:0]m03_couplers_to_ps7_0_axi_periph_AWPROT;
  wire m03_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m03_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m03_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_ps7_0_axi_periph_BRESP;
  wire m03_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_ps7_0_axi_periph_RDATA;
  wire m03_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_ps7_0_axi_periph_RRESP;
  wire m03_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_ps7_0_axi_periph_WDATA;
  wire m03_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m03_couplers_to_ps7_0_axi_periph_WVALID;
  wire [31:0]m04_couplers_to_ps7_0_axi_periph_ARADDR;
  wire [2:0]m04_couplers_to_ps7_0_axi_periph_ARPROT;
  wire m04_couplers_to_ps7_0_axi_periph_ARREADY;
  wire m04_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]m04_couplers_to_ps7_0_axi_periph_AWADDR;
  wire [2:0]m04_couplers_to_ps7_0_axi_periph_AWPROT;
  wire m04_couplers_to_ps7_0_axi_periph_AWREADY;
  wire m04_couplers_to_ps7_0_axi_periph_AWVALID;
  wire m04_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_ps7_0_axi_periph_BRESP;
  wire m04_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_ps7_0_axi_periph_RDATA;
  wire m04_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_ps7_0_axi_periph_RRESP;
  wire m04_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_ps7_0_axi_periph_WDATA;
  wire m04_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_ps7_0_axi_periph_WSTRB;
  wire m04_couplers_to_ps7_0_axi_periph_WVALID;
  wire ps7_0_axi_periph_ACLK_net;
  wire ps7_0_axi_periph_ARESETN_net;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_ARID;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_ARLEN;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps7_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_ARSIZE;
  wire ps7_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_AWID;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_AWLEN;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps7_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_AWSIZE;
  wire ps7_0_axi_periph_to_s00_couplers_AWVALID;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_BID;
  wire ps7_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_BRESP;
  wire ps7_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_RDATA;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_RID;
  wire ps7_0_axi_periph_to_s00_couplers_RLAST;
  wire ps7_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_RRESP;
  wire ps7_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_WDATA;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_WID;
  wire ps7_0_axi_periph_to_s00_couplers_WLAST;
  wire ps7_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps7_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_ps7_0_axi_periph_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_ps7_0_axi_periph_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_ps7_0_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_ps7_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps7_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_ps7_0_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_ps7_0_axi_periph_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_ps7_0_axi_periph_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_ps7_0_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_ps7_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps7_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_ps7_0_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_ps7_0_axi_periph_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_ps7_0_axi_periph_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_ps7_0_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_ps7_0_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_ps7_0_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_ps7_0_axi_periph_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_ps7_0_axi_periph_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_ps7_0_axi_periph_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_ps7_0_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_ps7_0_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_ps7_0_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_ps7_0_axi_periph_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_ps7_0_axi_periph_ARPROT;
  assign M04_AXI_arvalid = m04_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_ps7_0_axi_periph_AWPROT;
  assign M04_AXI_awvalid = m04_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_ps7_0_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_ps7_0_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_ps7_0_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_ps7_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps7_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps7_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = ps7_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps7_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps7_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps7_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = ps7_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps7_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps7_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps7_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps7_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_ps7_0_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_ps7_0_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_ps7_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps7_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_ps7_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps7_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps7_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_ps7_0_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_ps7_0_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_ps7_0_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_ps7_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps7_0_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_ps7_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps7_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps7_0_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_ps7_0_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_ps7_0_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_ps7_0_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_ps7_0_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_ps7_0_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_ps7_0_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_ps7_0_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_ps7_0_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_ps7_0_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_ps7_0_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_ps7_0_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_ps7_0_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_ps7_0_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_ps7_0_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_ps7_0_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_ps7_0_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_ps7_0_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_ps7_0_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_ps7_0_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_ps7_0_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_ps7_0_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_ps7_0_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_ps7_0_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_ps7_0_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_ps7_0_axi_periph_WREADY = M04_AXI_wready;
  assign ps7_0_axi_periph_ACLK_net = ACLK;
  assign ps7_0_axi_periph_ARESETN_net = ARESETN;
  assign ps7_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps7_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps7_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps7_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps7_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps7_0_axi_periph_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign ps7_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps7_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_H8CI0G m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arprot(m00_couplers_to_ps7_0_axi_periph_ARPROT),
        .M_AXI_arready(m00_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awprot(m00_couplers_to_ps7_0_axi_periph_AWPROT),
        .M_AXI_awready(m00_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_18VORSE m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arprot(m01_couplers_to_ps7_0_axi_periph_ARPROT),
        .M_AXI_arready(m01_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awprot(m01_couplers_to_ps7_0_axi_periph_AWPROT),
        .M_AXI_awready(m01_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1OQ8H8T m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arprot(m02_couplers_to_ps7_0_axi_periph_ARPROT),
        .M_AXI_arready(m02_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awprot(m02_couplers_to_ps7_0_axi_periph_AWPROT),
        .M_AXI_awready(m02_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_J5E1N7 m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arprot(m03_couplers_to_ps7_0_axi_periph_ARPROT),
        .M_AXI_arready(m03_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awprot(m03_couplers_to_ps7_0_axi_periph_AWPROT),
        .M_AXI_awready(m03_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_CGE64R m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arprot(m04_couplers_to_ps7_0_axi_periph_ARPROT),
        .M_AXI_arready(m04_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awprot(m04_couplers_to_ps7_0_axi_periph_AWPROT),
        .M_AXI_awready(m04_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(ps7_0_axi_periph_ACLK_net),
        .S_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  s00_couplers_imp_1MAP7OG s00_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps7_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps7_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps7_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps7_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps7_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps7_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps7_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps7_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps7_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps7_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps7_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps7_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps7_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps7_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps7_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps7_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps7_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps7_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps7_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps7_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps7_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps7_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps7_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps7_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps7_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps7_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps7_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps7_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps7_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps7_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps7_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps7_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps7_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wid(ps7_0_axi_periph_to_s00_couplers_WID),
        .S_AXI_wlast(ps7_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps7_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps7_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps7_0_axi_periph_to_s00_couplers_WVALID));
  Adc3444_TCP_xbar_0 xbar
       (.aclk(ps7_0_axi_periph_ACLK_net),
        .aresetn(ps7_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_H8CI0G
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_18VORSE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_1OQ8H8T
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_J5E1N7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_CGE64R
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [2:0]m04_couplers_to_m04_couplers_ARPROT;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [2:0]m04_couplers_to_m04_couplers_AWPROT;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1MAP7OG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  Adc3444_TCP_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
