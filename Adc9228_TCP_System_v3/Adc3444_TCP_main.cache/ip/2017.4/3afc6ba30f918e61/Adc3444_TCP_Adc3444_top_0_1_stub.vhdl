-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Oct 31 14:49:29 2022
-- Host        : Jenson running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_Adc3444_top_0_1_stub.vhdl
-- Design      : Adc3444_TCP_Adc3444_top_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030fbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    DCLK_p_pin : in STD_LOGIC;
    DCLK_n_pin : in STD_LOGIC;
    FCLK_p_pin : in STD_LOGIC;
    FCLK_n_pin : in STD_LOGIC;
    DATA_p_pin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DATA_n_pin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Sysclk : in STD_LOGIC;
    SysRstn : in STD_LOGIC;
    adc_pdn : out STD_LOGIC;
    adc_reset : out STD_LOGIC;
    spi_miso_i : in STD_LOGIC;
    spi_mosi_o : out STD_LOGIC;
    spi_clk : out STD_LOGIC;
    spi_cs : out STD_LOGIC;
    PM : in STD_LOGIC;
    TRACK : in STD_LOGIC;
    work_status1 : in STD_LOGIC;
    work_status2 : in STD_LOGIC;
    Trig_mode : in STD_LOGIC;
    Start_mode : in STD_LOGIC;
    DataToTriCh0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DataToTriCh1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DataToTriCh2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TrigInCh0 : out STD_LOGIC;
    TrigInCh1 : out STD_LOGIC;
    TrigInCh2 : out STD_LOGIC;
    AdcSampClk : out STD_LOGIC;
    work_status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
attribute black_box_pad_pin of stub : architecture is "DCLK_p_pin,DCLK_n_pin,FCLK_p_pin,FCLK_n_pin,DATA_p_pin[7:0],DATA_n_pin[7:0],Sysclk,SysRstn,adc_pdn,adc_reset,spi_miso_i,spi_mosi_o,spi_clk,spi_cs,PM,TRACK,work_status1,work_status2,Trig_mode,Start_mode,DataToTriCh0[15:0],DataToTriCh1[15:0],DataToTriCh2[15:0],TrigInCh0,TrigInCh1,TrigInCh2,AdcSampClk,work_status[1:0],S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[3:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[3:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Adc3444_top,Vivado 2017.4";
begin
end;