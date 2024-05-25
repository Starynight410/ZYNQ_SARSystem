//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Thu Sep  7 22:55:12 2023
//Host        : LAPTOP-7RHB2PA2 running 64-bit major release  (build 9200)
//Command     : generate_target Adc3444_TCP_wrapper.bd
//Design      : Adc3444_TCP_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Adc3444_TCP_wrapper
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
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  input FCO_n;
  input FCO_p;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
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

  wire CHA_n;
  wire CHA_p;
  wire CHB_n;
  wire CHB_p;
  wire CHC_n;
  wire CHC_p;
  wire CHD_n;
  wire CHD_p;
  wire DCO_n;
  wire DCO_p;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FCO_n;
  wire FCO_p;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire SPI0_MOSI;
  wire SPI0_SCLK;
  wire SPI0_SS_T_0;
  wire SPI1_MOSI;
  wire SPI1_SCLK;
  wire SPI1_SS_T_0;
  wire adcClkIn_n;
  wire adcClkIn_p;
  wire clk_40m_i;
  wire led;
  wire pll_trig1;
  wire pll_trig2;

  Adc3444_TCP Adc3444_TCP_i
       (.CHA_n(CHA_n),
        .CHA_p(CHA_p),
        .CHB_n(CHB_n),
        .CHB_p(CHB_p),
        .CHC_n(CHC_n),
        .CHC_p(CHC_p),
        .CHD_n(CHD_n),
        .CHD_p(CHD_p),
        .DCO_n(DCO_n),
        .DCO_p(DCO_p),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FCO_n(FCO_n),
        .FCO_p(FCO_p),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .SPI0_MOSI(SPI0_MOSI),
        .SPI0_SCLK(SPI0_SCLK),
        .SPI0_SS_T_0(SPI0_SS_T_0),
        .SPI1_MOSI(SPI1_MOSI),
        .SPI1_SCLK(SPI1_SCLK),
        .SPI1_SS_T_0(SPI1_SS_T_0),
        .adcClkIn_n(adcClkIn_n),
        .adcClkIn_p(adcClkIn_p),
        .clk_40m_i(clk_40m_i),
        .led(led),
        .pll_trig1(pll_trig1),
        .pll_trig2(pll_trig2));
endmodule
