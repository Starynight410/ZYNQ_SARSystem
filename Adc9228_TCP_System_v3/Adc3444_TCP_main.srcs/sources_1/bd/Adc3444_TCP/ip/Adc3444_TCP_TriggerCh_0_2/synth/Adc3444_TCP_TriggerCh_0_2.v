// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:TriggerCh:1.0
// IP Revision: 2

(* X_CORE_INFO = "TriggerCh,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "Adc3444_TCP_TriggerCh_0_2,TriggerCh,{}" *)
(* CORE_GENERATION_INFO = "Adc3444_TCP_TriggerCh_0_2,TriggerCh,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=TriggerCh,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,AXI_HPorACP=1,AXIL_ADDR_WIDTH=32,AXIL_DATA_WIDTH=32,AXIL_STRB_WIDTH=4,AXI_ID_WIDTH=2,AXI_ADDR_WIDTH=32,AXI_DATA_WIDTH=64,AXI_MAX_BURST_LEN=16,AXI_STRB_WIDTH=8,AXI_ARUSER_WIDTH=5,AXI_AWUSER_WIDTH=5,TrigDataWidth=16,TrigByteWidth=2,TrigStatusNum=2,TrigDDRSpace=24}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Adc3444_TCP_TriggerCh_0_2 (
  s_axil_clk,
  s_axil_rstn,
  iTrigClk,
  iTrigRstn,
  iAdcData,
  iAdcData_Tri,
  oStateToWAITIntr,
  oStateToTDIntr,
  oStateToFINISHIntr,
  s_axil_awaddr,
  s_axil_awprot,
  s_axil_awvalid,
  s_axil_awready,
  s_axil_wdata,
  s_axil_wstrb,
  s_axil_wvalid,
  s_axil_wready,
  s_axil_bresp,
  s_axil_bvalid,
  s_axil_bready,
  s_axil_araddr,
  s_axil_arprot,
  s_axil_arvalid,
  s_axil_arready,
  s_axil_rdata,
  s_axil_rresp,
  s_axil_rvalid,
  s_axil_rready,
  m_axi_clk,
  m_axi_rstn,
  m_axi_awid,
  m_axi_awaddr,
  m_axi_awlen,
  m_axi_awsize,
  m_axi_awburst,
  m_axi_awlock,
  m_axi_awcache,
  m_axi_awprot,
  m_axi_awqos,
  m_axi_awuser,
  m_axi_awvalid,
  m_axi_awready,
  m_axi_wdata,
  m_axi_wstrb,
  m_axi_wlast,
  m_axi_wvalid,
  m_axi_wready,
  m_axi_bid,
  m_axi_bresp,
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
  m_axi_arqos,
  m_axi_aruser,
  m_axi_arvalid,
  m_axi_arready,
  m_axi_rid,
  m_axi_rdata,
  m_axi_rresp,
  m_axi_rlast,
  m_axi_rvalid,
  m_axi_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axil_clk, ASSOCIATED_BUSIF s_axil, ASSOCIATED_RESET s_axil_rstn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_Adc9228_top_0_0_clk_100m_o" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axil_clk CLK" *)
input wire s_axil_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axil_rstn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axil_rstn RST" *)
input wire s_axil_rstn;
input wire iTrigClk;
input wire iTrigRstn;
input wire [15 : 0] iAdcData;
input wire iAdcData_Tri;
output wire oStateToWAITIntr;
output wire oStateToTDIntr;
output wire oStateToFINISHIntr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWADDR" *)
input wire [31 : 0] s_axil_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWPROT" *)
input wire [2 : 0] s_axil_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWVALID" *)
input wire s_axil_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWREADY" *)
output wire s_axil_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WDATA" *)
input wire [31 : 0] s_axil_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WSTRB" *)
input wire [3 : 0] s_axil_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WVALID" *)
input wire s_axil_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WREADY" *)
output wire s_axil_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BRESP" *)
output wire [1 : 0] s_axil_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BVALID" *)
output wire s_axil_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BREADY" *)
input wire s_axil_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARADDR" *)
input wire [31 : 0] s_axil_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARPROT" *)
input wire [2 : 0] s_axil_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARVALID" *)
input wire s_axil_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARREADY" *)
output wire s_axil_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RDATA" *)
output wire [31 : 0] s_axil_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RRESP" *)
output wire [1 : 0] s_axil_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RVALID" *)
output wire s_axil_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_Adc9228_top_0_0_clk_100m_o, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RREADY" *)
input wire s_axil_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_clk, ASSOCIATED_BUSIF m_axi, ASSOCIATED_RESET m_axi_rstn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_TriggerCh_0_2_m_axi_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axi_clk CLK" *)
output wire m_axi_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_rstn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_axi_rstn RST" *)
output wire m_axi_rstn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWID" *)
output wire [1 : 0] m_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *)
output wire [31 : 0] m_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLEN" *)
output wire [7 : 0] m_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWSIZE" *)
output wire [2 : 0] m_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWBURST" *)
output wire [1 : 0] m_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLOCK" *)
output wire m_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWCACHE" *)
output wire [3 : 0] m_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *)
output wire [2 : 0] m_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWQOS" *)
output wire [3 : 0] m_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWUSER" *)
output wire [4 : 0] m_axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *)
output wire m_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *)
input wire m_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *)
output wire [63 : 0] m_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *)
output wire [7 : 0] m_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *)
output wire m_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *)
output wire m_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *)
input wire m_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BID" *)
input wire [1 : 0] m_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *)
input wire [1 : 0] m_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *)
input wire m_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *)
output wire m_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARID" *)
output wire [1 : 0] m_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *)
output wire [31 : 0] m_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLEN" *)
output wire [7 : 0] m_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARSIZE" *)
output wire [2 : 0] m_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARBURST" *)
output wire [1 : 0] m_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLOCK" *)
output wire m_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARCACHE" *)
output wire [3 : 0] m_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *)
output wire [2 : 0] m_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARQOS" *)
output wire [3 : 0] m_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARUSER" *)
output wire [4 : 0] m_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *)
output wire m_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *)
input wire m_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RID" *)
input wire [1 : 0] m_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *)
input wire [63 : 0] m_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *)
input wire [1 : 0] m_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RLAST" *)
input wire m_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *)
input wire m_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 5, ARUSER_WIDTH 5, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_TriggerCh_0_2_m_axi_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *)
output wire m_axi_rready;

  TriggerCh #(
    .AXI_HPorACP(1),
    .AXIL_ADDR_WIDTH(32),
    .AXIL_DATA_WIDTH(32),
    .AXIL_STRB_WIDTH(4),
    .AXI_ID_WIDTH(2),
    .AXI_ADDR_WIDTH(32),
    .AXI_DATA_WIDTH(64),
    .AXI_MAX_BURST_LEN(16),
    .AXI_STRB_WIDTH(8),
    .AXI_ARUSER_WIDTH(5),
    .AXI_AWUSER_WIDTH(5),
    .TrigDataWidth(16),
    .TrigByteWidth(2),
    .TrigStatusNum(2),
    .TrigDDRSpace(24)
  ) inst (
    .s_axil_clk(s_axil_clk),
    .s_axil_rstn(s_axil_rstn),
    .iTrigClk(iTrigClk),
    .iTrigRstn(iTrigRstn),
    .iAdcData(iAdcData),
    .iAdcData_Tri(iAdcData_Tri),
    .oStateToWAITIntr(oStateToWAITIntr),
    .oStateToTDIntr(oStateToTDIntr),
    .oStateToFINISHIntr(oStateToFINISHIntr),
    .s_axil_awaddr(s_axil_awaddr),
    .s_axil_awprot(s_axil_awprot),
    .s_axil_awvalid(s_axil_awvalid),
    .s_axil_awready(s_axil_awready),
    .s_axil_wdata(s_axil_wdata),
    .s_axil_wstrb(s_axil_wstrb),
    .s_axil_wvalid(s_axil_wvalid),
    .s_axil_wready(s_axil_wready),
    .s_axil_bresp(s_axil_bresp),
    .s_axil_bvalid(s_axil_bvalid),
    .s_axil_bready(s_axil_bready),
    .s_axil_araddr(s_axil_araddr),
    .s_axil_arprot(s_axil_arprot),
    .s_axil_arvalid(s_axil_arvalid),
    .s_axil_arready(s_axil_arready),
    .s_axil_rdata(s_axil_rdata),
    .s_axil_rresp(s_axil_rresp),
    .s_axil_rvalid(s_axil_rvalid),
    .s_axil_rready(s_axil_rready),
    .m_axi_clk(m_axi_clk),
    .m_axi_rstn(m_axi_rstn),
    .m_axi_awid(m_axi_awid),
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awlen(m_axi_awlen),
    .m_axi_awsize(m_axi_awsize),
    .m_axi_awburst(m_axi_awburst),
    .m_axi_awlock(m_axi_awlock),
    .m_axi_awcache(m_axi_awcache),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awqos(m_axi_awqos),
    .m_axi_awuser(m_axi_awuser),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awready(m_axi_awready),
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wlast(m_axi_wlast),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_wready(m_axi_wready),
    .m_axi_bid(m_axi_bid),
    .m_axi_bresp(m_axi_bresp),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_bready(m_axi_bready),
    .m_axi_arid(m_axi_arid),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arlen(m_axi_arlen),
    .m_axi_arsize(m_axi_arsize),
    .m_axi_arburst(m_axi_arburst),
    .m_axi_arlock(m_axi_arlock),
    .m_axi_arcache(m_axi_arcache),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arqos(m_axi_arqos),
    .m_axi_aruser(m_axi_aruser),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_arready(m_axi_arready),
    .m_axi_rid(m_axi_rid),
    .m_axi_rdata(m_axi_rdata),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rlast(m_axi_rlast),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_rready(m_axi_rready)
  );
endmodule
