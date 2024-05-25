// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Jul 17 16:29:07 2023
// Host        : DESKTOP-3EGBBSD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_Adc9228_top_0_0_stub.v
// Design      : Adc3444_TCP_Adc9228_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Adc9228_top,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(FCO_p, FCO_n, DCO_p, DCO_n, CHD_p, CHD_n, CHA_p, CHA_n, 
  CHB_p, CHB_n, CHC_p, CHC_n, pll_trig1, pll_trig2, DataToTriCh0, DataToTriCh1, DataToTriCh2, 
  DataToTriCh3, TrigInCh0, TrigInCh1, TrigInCh2, TrigInCh3, adcClkIn_p, adcClkIn_n, clk_40m_i, 
  ps_rst_n, led, clk_10m_o, pll_trig_debug1, pll_trig_debug2, Start_mode, S_AXI_ACLK, 
  S_AXI_ARESETN, S_AXI_AWADDR, S_AXI_AWPROT, S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, 
  S_AXI_WSTRB, S_AXI_WVALID, S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, 
  S_AXI_ARADDR, S_AXI_ARPROT, S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RDATA, S_AXI_RRESP, 
  S_AXI_RVALID, S_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="FCO_p,FCO_n,DCO_p,DCO_n,CHD_p,CHD_n,CHA_p,CHA_n,CHB_p,CHB_n,CHC_p,CHC_n,pll_trig1,pll_trig2,DataToTriCh0[15:0],DataToTriCh1[15:0],DataToTriCh2[15:0],DataToTriCh3[15:0],TrigInCh0,TrigInCh1,TrigInCh2,TrigInCh3,adcClkIn_p,adcClkIn_n,clk_40m_i,ps_rst_n,led,clk_10m_o,pll_trig_debug1,pll_trig_debug2,Start_mode,S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[31:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[31:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY" */;
  input FCO_p;
  input FCO_n;
  input DCO_p;
  input DCO_n;
  input CHD_p;
  input CHD_n;
  input CHA_p;
  input CHA_n;
  input CHB_p;
  input CHB_n;
  input CHC_p;
  input CHC_n;
  input pll_trig1;
  input pll_trig2;
  output [15:0]DataToTriCh0;
  output [15:0]DataToTriCh1;
  output [15:0]DataToTriCh2;
  output [15:0]DataToTriCh3;
  output TrigInCh0;
  output TrigInCh1;
  output TrigInCh2;
  output TrigInCh3;
  output adcClkIn_p;
  output adcClkIn_n;
  input clk_40m_i;
  input ps_rst_n;
  output led;
  output clk_10m_o;
  output pll_trig_debug1;
  output pll_trig_debug2;
  input Start_mode;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [31:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [31:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
endmodule
