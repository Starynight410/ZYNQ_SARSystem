// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed May 25 16:31:01 2022
// Host        : DESKTOP-N01S6N9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_axi_dna_0_0_stub.v
// Design      : Adc3444_TCP_axi_dna_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030fbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_dna,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axil_clk, s_axil_rstn, s_axil_awaddr, 
  s_axil_awprot, s_axil_awvalid, s_axil_awready, s_axil_wdata, s_axil_wstrb, s_axil_wvalid, 
  s_axil_wready, s_axil_bresp, s_axil_bvalid, s_axil_bready, s_axil_araddr, s_axil_arprot, 
  s_axil_arvalid, s_axil_arready, s_axil_rdata, s_axil_rresp, s_axil_rvalid, s_axil_rready)
/* synthesis syn_black_box black_box_pad_pin="s_axil_clk,s_axil_rstn,s_axil_awaddr[15:0],s_axil_awprot[2:0],s_axil_awvalid,s_axil_awready,s_axil_wdata[31:0],s_axil_wstrb[3:0],s_axil_wvalid,s_axil_wready,s_axil_bresp[1:0],s_axil_bvalid,s_axil_bready,s_axil_araddr[15:0],s_axil_arprot[2:0],s_axil_arvalid,s_axil_arready,s_axil_rdata[31:0],s_axil_rresp[1:0],s_axil_rvalid,s_axil_rready" */;
  input s_axil_clk;
  input s_axil_rstn;
  input [15:0]s_axil_awaddr;
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
  input [15:0]s_axil_araddr;
  input [2:0]s_axil_arprot;
  input s_axil_arvalid;
  output s_axil_arready;
  output [31:0]s_axil_rdata;
  output [1:0]s_axil_rresp;
  output s_axil_rvalid;
  input s_axil_rready;
endmodule
