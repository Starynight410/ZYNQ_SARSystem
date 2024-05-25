-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jul 17 16:08:22 2023
-- Host        : DESKTOP-3EGBBSD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/HangZhouFile_byx/ZynqProject_v17/Adc9228_TCP_System/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_xlconcat_0_1/Adc3444_TCP_xlconcat_0_1_sim_netlist.vhdl
-- Design      : Adc3444_TCP_xlconcat_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Adc3444_TCP_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Adc3444_TCP_xlconcat_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Adc3444_TCP_xlconcat_0_1 : entity is "Adc3444_TCP_xlconcat_0_1,xlconcat_v2_1_1_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Adc3444_TCP_xlconcat_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Adc3444_TCP_xlconcat_0_1 : entity is "xlconcat_v2_1_1_xlconcat,Vivado 2017.4";
end Adc3444_TCP_xlconcat_0_1;

architecture STRUCTURE of Adc3444_TCP_xlconcat_0_1 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in3\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(0) <= In0(0);
  \^in1\(0) <= In1(0);
  \^in2\(0) <= In2(0);
  \^in3\(0) <= In3(0);
  dout(3) <= \^in3\(0);
  dout(2) <= \^in2\(0);
  dout(1) <= \^in1\(0);
  dout(0) <= \^in0\(0);
end STRUCTURE;
