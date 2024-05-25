-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jul 17 16:08:22 2023
-- Host        : DESKTOP-3EGBBSD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/HangZhouFile_byx/ZynqProject_v17/Adc9228_TCP_System/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_xlconcat_0_1/Adc3444_TCP_xlconcat_0_1_stub.vhdl
-- Design      : Adc3444_TCP_xlconcat_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adc3444_TCP_xlconcat_0_1 is
  Port ( 
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end Adc3444_TCP_xlconcat_0_1;

architecture stub of Adc3444_TCP_xlconcat_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "In0[0:0],In1[0:0],In2[0:0],In3[0:0],dout[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconcat_v2_1_1_xlconcat,Vivado 2017.4";
begin
end;
