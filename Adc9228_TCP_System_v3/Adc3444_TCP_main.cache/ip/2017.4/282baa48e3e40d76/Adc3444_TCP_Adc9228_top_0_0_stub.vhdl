-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jul 31 15:57:31 2023
-- Host        : LAPTOP-7RHB2PA2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_Adc9228_top_0_0_stub.vhdl
-- Design      : Adc3444_TCP_Adc9228_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    FCO_p : in STD_LOGIC;
    FCO_n : in STD_LOGIC;
    DCO_p : in STD_LOGIC;
    DCO_n : in STD_LOGIC;
    CHD_p : in STD_LOGIC;
    CHD_n : in STD_LOGIC;
    CHA_p : in STD_LOGIC;
    CHA_n : in STD_LOGIC;
    CHB_p : in STD_LOGIC;
    CHB_n : in STD_LOGIC;
    CHC_p : in STD_LOGIC;
    CHC_n : in STD_LOGIC;
    pll_trig1 : in STD_LOGIC;
    pll_trig2 : in STD_LOGIC;
    DataToTriCh0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DataToTriCh1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DataToTriCh2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DataToTriCh3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TrigInCh0 : out STD_LOGIC;
    TrigInCh1 : out STD_LOGIC;
    TrigInCh2 : out STD_LOGIC;
    TrigInCh3 : out STD_LOGIC;
    adcClkIn_p : out STD_LOGIC;
    adcClkIn_n : out STD_LOGIC;
    clk_40m_i : in STD_LOGIC;
    ps_rst_n : in STD_LOGIC;
    led : out STD_LOGIC;
    clk_10m_o : out STD_LOGIC;
    pll_trig_debug1 : out STD_LOGIC;
    pll_trig_debug2 : out STD_LOGIC;
    Start_mode : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "FCO_p,FCO_n,DCO_p,DCO_n,CHD_p,CHD_n,CHA_p,CHA_n,CHB_p,CHB_n,CHC_p,CHC_n,pll_trig1,pll_trig2,DataToTriCh0[15:0],DataToTriCh1[15:0],DataToTriCh2[15:0],DataToTriCh3[15:0],TrigInCh0,TrigInCh1,TrigInCh2,TrigInCh3,adcClkIn_p,adcClkIn_n,clk_40m_i,ps_rst_n,led,clk_10m_o,pll_trig_debug1,pll_trig_debug2,Start_mode,S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[31:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[31:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Adc9228_top,Vivado 2017.4";
begin
end;
