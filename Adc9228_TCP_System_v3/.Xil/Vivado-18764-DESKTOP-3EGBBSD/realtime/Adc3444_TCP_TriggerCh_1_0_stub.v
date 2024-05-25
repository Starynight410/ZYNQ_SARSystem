// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "TriggerCh,Vivado 2017.4" *)
module Adc3444_TCP_TriggerCh_1_0(s_axil_clk, s_axil_rstn, iTrigClk, iTrigRstn, 
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
  m_axi_rlast, m_axi_rvalid, m_axi_rready);
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
