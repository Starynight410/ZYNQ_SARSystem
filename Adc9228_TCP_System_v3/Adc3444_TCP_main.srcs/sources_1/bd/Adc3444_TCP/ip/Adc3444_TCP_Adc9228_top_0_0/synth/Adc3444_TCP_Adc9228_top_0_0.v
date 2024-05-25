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


// IP VLNV: xilinx.com:user:Adc9228_top:1.0
// IP Revision: 2

(* X_CORE_INFO = "Adc9228_top,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "Adc3444_TCP_Adc9228_top_0_0,Adc9228_top,{}" *)
(* CORE_GENERATION_INFO = "Adc3444_TCP_Adc9228_top_0_0,Adc9228_top,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=Adc9228_top,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ADDR_WIDTH=32}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Adc3444_TCP_Adc9228_top_0_0 (
  FCO_p,
  FCO_n,
  DCO_p,
  DCO_n,
  CHD_p,
  CHD_n,
  CHA_p,
  CHA_n,
  CHB_p,
  CHB_n,
  CHC_p,
  CHC_n,
  pll_trig1,
  pll_trig2,
  DataToTriCh0_o,
  DataToTriCh1_o,
  DataToTriCh2_o,
  DataToTriCh3_o,
  TrigInCh0_o,
  TrigInCh1_o,
  TrigInCh2_o,
  TrigInCh3_o,
  adcClkIn_p,
  adcClkIn_n,
  clk_40m_i,
  ps_rst_n,
  led,
  clk_100m_o,
  pll_trig_debug1,
  pll_trig_debug2,
  Start_mode,
  S_AXI_ACLK,
  S_AXI_ARESETN,
  S_AXI_AWADDR,
  S_AXI_AWPROT,
  S_AXI_AWVALID,
  S_AXI_AWREADY,
  S_AXI_WDATA,
  S_AXI_WSTRB,
  S_AXI_WVALID,
  S_AXI_WREADY,
  S_AXI_BRESP,
  S_AXI_BVALID,
  S_AXI_BREADY,
  S_AXI_ARADDR,
  S_AXI_ARPROT,
  S_AXI_ARVALID,
  S_AXI_ARREADY,
  S_AXI_RDATA,
  S_AXI_RRESP,
  S_AXI_RVALID,
  S_AXI_RREADY
);

input wire FCO_p;
input wire FCO_n;
input wire DCO_p;
input wire DCO_n;
input wire CHD_p;
input wire CHD_n;
input wire CHA_p;
input wire CHA_n;
input wire CHB_p;
input wire CHB_n;
input wire CHC_p;
input wire CHC_n;
input wire pll_trig1;
input wire pll_trig2;
output wire [15 : 0] DataToTriCh0_o;
output wire [15 : 0] DataToTriCh1_o;
output wire [15 : 0] DataToTriCh2_o;
output wire [15 : 0] DataToTriCh3_o;
output wire TrigInCh0_o;
output wire TrigInCh1_o;
output wire TrigInCh2_o;
output wire TrigInCh3_o;
output wire adcClkIn_p;
output wire adcClkIn_n;
input wire clk_40m_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ps_rst_n, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ps_rst_n RST" *)
input wire ps_rst_n;
output wire led;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_100m_o, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_Adc9228_top_0_0_clk_100m_o" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_100m_o CLK" *)
output wire clk_100m_o;
output wire pll_trig_debug1;
output wire pll_trig_debug2;
input wire Start_mode;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXILite_aclk, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_Adc9228_top_0_0_clk_100m_o" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXILite_aclk CLK" *)
input wire S_AXI_ACLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXILite_aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXILite_aresetn RST" *)
input wire S_AXI_ARESETN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite AWADDR" *)
input wire [31 : 0] S_AXI_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite AWPROT" *)
input wire [2 : 0] S_AXI_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite AWVALID" *)
input wire S_AXI_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite AWREADY" *)
output wire S_AXI_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite WDATA" *)
input wire [31 : 0] S_AXI_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite WSTRB" *)
input wire [3 : 0] S_AXI_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite WVALID" *)
input wire S_AXI_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite WREADY" *)
output wire S_AXI_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite BRESP" *)
output wire [1 : 0] S_AXI_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite BVALID" *)
output wire S_AXI_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite BREADY" *)
input wire S_AXI_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite ARADDR" *)
input wire [31 : 0] S_AXI_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite ARPROT" *)
input wire [2 : 0] S_AXI_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite ARVALID" *)
input wire S_AXI_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite ARREADY" *)
output wire S_AXI_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *)
output wire [31 : 0] S_AXI_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RRESP" *)
output wire [1 : 0] S_AXI_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RVALID" *)
output wire S_AXI_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXILite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RREADY" *)
input wire S_AXI_RREADY;

  Adc9228_top #(
    .C_S_AXI_DATA_WIDTH(32),
    .C_S_AXI_ADDR_WIDTH(32)
  ) inst (
    .FCO_p(FCO_p),
    .FCO_n(FCO_n),
    .DCO_p(DCO_p),
    .DCO_n(DCO_n),
    .CHD_p(CHD_p),
    .CHD_n(CHD_n),
    .CHA_p(CHA_p),
    .CHA_n(CHA_n),
    .CHB_p(CHB_p),
    .CHB_n(CHB_n),
    .CHC_p(CHC_p),
    .CHC_n(CHC_n),
    .pll_trig1(pll_trig1),
    .pll_trig2(pll_trig2),
    .DataToTriCh0_o(DataToTriCh0_o),
    .DataToTriCh1_o(DataToTriCh1_o),
    .DataToTriCh2_o(DataToTriCh2_o),
    .DataToTriCh3_o(DataToTriCh3_o),
    .TrigInCh0_o(TrigInCh0_o),
    .TrigInCh1_o(TrigInCh1_o),
    .TrigInCh2_o(TrigInCh2_o),
    .TrigInCh3_o(TrigInCh3_o),
    .adcClkIn_p(adcClkIn_p),
    .adcClkIn_n(adcClkIn_n),
    .clk_40m_i(clk_40m_i),
    .ps_rst_n(ps_rst_n),
    .led(led),
    .clk_100m_o(clk_100m_o),
    .pll_trig_debug1(pll_trig_debug1),
    .pll_trig_debug2(pll_trig_debug2),
    .Start_mode(Start_mode),
    .S_AXI_ACLK(S_AXI_ACLK),
    .S_AXI_ARESETN(S_AXI_ARESETN),
    .S_AXI_AWADDR(S_AXI_AWADDR),
    .S_AXI_AWPROT(S_AXI_AWPROT),
    .S_AXI_AWVALID(S_AXI_AWVALID),
    .S_AXI_AWREADY(S_AXI_AWREADY),
    .S_AXI_WDATA(S_AXI_WDATA),
    .S_AXI_WSTRB(S_AXI_WSTRB),
    .S_AXI_WVALID(S_AXI_WVALID),
    .S_AXI_WREADY(S_AXI_WREADY),
    .S_AXI_BRESP(S_AXI_BRESP),
    .S_AXI_BVALID(S_AXI_BVALID),
    .S_AXI_BREADY(S_AXI_BREADY),
    .S_AXI_ARADDR(S_AXI_ARADDR),
    .S_AXI_ARPROT(S_AXI_ARPROT),
    .S_AXI_ARVALID(S_AXI_ARVALID),
    .S_AXI_ARREADY(S_AXI_ARREADY),
    .S_AXI_RDATA(S_AXI_RDATA),
    .S_AXI_RRESP(S_AXI_RRESP),
    .S_AXI_RVALID(S_AXI_RVALID),
    .S_AXI_RREADY(S_AXI_RREADY)
  );
endmodule
