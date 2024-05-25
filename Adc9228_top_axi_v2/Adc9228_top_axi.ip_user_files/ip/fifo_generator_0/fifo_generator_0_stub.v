// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Sep  5 21:29:47 2023
// Host        : LAPTOP-7RHB2PA2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/ZynqProject_v17/Adc9228_top_axi_v2/Adc9228_top_axi.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0_stub.v
// Design      : fifo_generator_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_1,Vivado 2017.4" *)
module fifo_generator_0(wr_rst_busy, rd_rst_busy, m_aclk, s_aclk, 
  s_aresetn, s_axis_tvalid, s_axis_tready, s_axis_tdata, s_axis_tlast, m_axis_tvalid, 
  m_axis_tready, m_axis_tdata, m_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="wr_rst_busy,rd_rst_busy,m_aclk,s_aclk,s_aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[31:0],s_axis_tlast,m_axis_tvalid,m_axis_tready,m_axis_tdata[31:0],m_axis_tlast" */;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input s_axis_tlast;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
endmodule
