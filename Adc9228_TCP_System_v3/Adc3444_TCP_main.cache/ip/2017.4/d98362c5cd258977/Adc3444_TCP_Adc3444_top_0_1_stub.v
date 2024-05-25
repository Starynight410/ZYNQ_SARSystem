// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar 22 14:49:41 2022
// Host        : DESKTOP-N01S6N9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_Adc3444_top_0_1_stub.v
// Design      : Adc3444_TCP_Adc3444_top_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030fbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Adc3444_top,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(DCLK_p_pin, DCLK_n_pin, FCLK_p_pin, FCLK_n_pin, 
  DATA_p_pin, DATA_n_pin, Sysclk, SysRstn, adc_pdn, adc_reset, spi_miso_i, spi_mosi_o, spi_clk, 
  spi_cs, PM, TRACK, work_status1, work_status2, Trig_mode, Start_mode, DataToTriCh0, DataToTriCh1, 
  DataToTriCh2, TrigInCh0, TrigInCh1, TrigInCh2, AdcSampClk, work_status)
/* synthesis syn_black_box black_box_pad_pin="DCLK_p_pin,DCLK_n_pin,FCLK_p_pin,FCLK_n_pin,DATA_p_pin[7:0],DATA_n_pin[7:0],Sysclk,SysRstn,adc_pdn,adc_reset,spi_miso_i,spi_mosi_o,spi_clk,spi_cs,PM,TRACK,work_status1,work_status2,Trig_mode,Start_mode,DataToTriCh0[15:0],DataToTriCh1[15:0],DataToTriCh2[15:0],TrigInCh0,TrigInCh1,TrigInCh2,AdcSampClk,work_status[1:0]" */;
  input DCLK_p_pin;
  input DCLK_n_pin;
  input FCLK_p_pin;
  input FCLK_n_pin;
  input [7:0]DATA_p_pin;
  input [7:0]DATA_n_pin;
  input Sysclk;
  input SysRstn;
  output adc_pdn;
  output adc_reset;
  input spi_miso_i;
  output spi_mosi_o;
  output spi_clk;
  output spi_cs;
  input PM;
  input TRACK;
  input work_status1;
  input work_status2;
  input Trig_mode;
  input Start_mode;
  output [15:0]DataToTriCh0;
  output [15:0]DataToTriCh1;
  output [15:0]DataToTriCh2;
  output TrigInCh0;
  output TrigInCh1;
  output TrigInCh2;
  output AdcSampClk;
  output [1:0]work_status;
endmodule
