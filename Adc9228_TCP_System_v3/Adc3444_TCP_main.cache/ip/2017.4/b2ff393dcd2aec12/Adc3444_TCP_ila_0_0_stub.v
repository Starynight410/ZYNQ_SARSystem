// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Sep  6 12:21:12 2023
// Host        : LAPTOP-7RHB2PA2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_ila_0_0_stub.v
// Design      : Adc3444_TCP_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, probe1, probe2, probe3, probe4, probe5)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[15:0],probe1[0:0],probe2[0:0],probe3[31:0],probe4[63:0],probe5[0:0]" */;
  input clk;
  input [15:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [31:0]probe3;
  input [63:0]probe4;
  input [0:0]probe5;
endmodule
