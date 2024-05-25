// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Apr  6 11:06:48 2022
// Host        : DESKTOP-N01S6N9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_TriggerCh_0_0_stub.v
// Design      : Adc3444_TCP_TriggerCh_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030fbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "TriggerCh,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axil_clk, s_axil_rstn, iTrigClk, iTrigRstn, 
  iAdcData, iAdcData_Tri, oStateToWAITIntr, oStateToTDIntr, oStateToFINISHIntr, 
  s_axil_awaddr, s_axil_awprot, s_axil_awvalid, s_axil_awready, s_axil_wdata, s_axil_wstrb, 
  s_axil_wvalid, s_axil_wready, s_axil_bresp, s_axil_bvalid, s_axil_bready, s_axil_araddr, 
  s_axil_arprot, s_axil_arvalid, s_axil_arready, s_axil_rdata, s_axil_rresp, s_axil_rvalid, 
  s_axil_rready, m_axi_clk, m_axi_rstn, m_axi_awid, m_axi_awaddr, m_axi_awlen, m_axi_awsize, 
  m_axi_awburst, m_axi_awlock, m_axi_awcache, m_axi_awprot, m_axi_awqos, m_axi_awuser, 
  m_axi_awvalid, m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wlast, m_axi_wvalid, 
  m_axi_wready, m_axi_bid, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_arid, m_axi_araddr, 
  m_axi_arlen, m_axi_arsize, m_axi_arburst, m_axi_arlock, m_axi_arcache, m_axi_arprot, 
  m_axi_arqos, m_axi_aruser, m_axi_arvalid, m_axi_arready, m_axi_rid, m_axi_rdata, m_axi_rresp, 
  m_axi_rlast, m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="s_axil_clk,s_axil_rstn,iTrigClk,iTrigRstn,iAdcData[15:0],iAdcData_Tri,oStateToWAITIntr,oStateToTDIntr,oStateToFINISHIntr,s_axil_awaddr[31:0],s_axil_awprot[2:0],s_axil_awvalid,s_axil_awready,s_axil_wdata[31:0],s_axil_wstrb[3:0],s_axil_wvalid,s_axil_wready,s_axil_bresp[1:0],s_axil_bvalid,s_axil_bready,s_axil_araddr[31:0],s_axil_arprot[2:0],s_axil_arvalid,s_axil_arready,s_axil_rdata[31:0],s_axil_rresp[1:0],s_axil_rvalid,s_axil_rready,m_axi_clk,m_axi_rstn,m_axi_awid[1:0],m_axi_awaddr[31:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awlock,m_axi_awcache[3:0],m_axi_awprot[2:0],m_axi_awqos[3:0],m_axi_awuser[4:0],m_axi_awvalid,m_axi_awready,m_axi_wdata[63:0],m_axi_wstrb[7:0],m_axi_wlast,m_axi_wvalid,m_axi_wready,m_axi_bid[1:0],m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,m_axi_arid[1:0],m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arlock,m_axi_arcache[3:0],m_axi_arprot[2:0],m_axi_arqos[3:0],m_axi_aruser[4:0],m_axi_arvalid,m_axi_arready,m_axi_rid[1:0],m_axi_rdata[63:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,m_axi_rready" */;
  input s_axil_clk;
  input s_axil_rstn;
  input iTrigClk;
  input iTrigRstn;
  input [15:0]iAdcData;
  input iAdcData_Tri;
  output oStateToWAITIntr;
  output oStateToTDIntr;
  output oStateToFINISHIntr;
  input [31:0]s_axil_awaddr;
  input [2:0]s_axil_awprot;
  input s_axil_awvalid;
  output s_axil_awready;
  input [31:0]s_axil_wdata;
  input [3:0]s_axil_wstrb;
  input s_axil_wvalid;
  output s_axil_wready;
  output [1:0]s_axil_bresp;
  output s_axil_bvalid;
  input s_axil_bready;
  input [31:0]s_axil_araddr;
  input [2:0]s_axil_arprot;
  input s_axil_arvalid;
  output s_axil_arready;
  output [31:0]s_axil_rdata;
  output [1:0]s_axil_rresp;
  output s_axil_rvalid;
  input s_axil_rready;
  output m_axi_clk;
  output m_axi_rstn;
  output [1:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [4:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [1:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [4:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [1:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
endmodule
