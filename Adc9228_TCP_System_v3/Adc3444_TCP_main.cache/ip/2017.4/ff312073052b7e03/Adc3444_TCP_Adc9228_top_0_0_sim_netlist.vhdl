-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jul 17 16:29:07 2023
-- Host        : DESKTOP-3EGBBSD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_Adc9228_top_0_0_sim_netlist.vhdl
-- Design      : Adc3444_TCP_Adc9228_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AD_control is
  port (
    TrigInCh3 : out STD_LOGIC;
    DataToTriCh0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DataToTriCh1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DataToTriCh3 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \axi_rdata_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_out1 : in STD_LOGIC;
    sys_rst_n_reg : in STD_LOGIC;
    pll_trig1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \chxDout_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \chxDout_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Start_mode : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AD_control;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AD_control is
  signal \/FSM_sequential_AD_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_sequential_AD_state[1]_i_1_n_0\ : STD_LOGIC;
  signal AD_state : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of AD_state : signal is "yes";
  signal DataToTriCh0_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal DataToTriCh1_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal DataToTriCh3_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Data_Ch0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \Data_Ch0[0]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch0[10]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch0[11]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch0[11]_i_2_n_0\ : STD_LOGIC;
  signal \Data_Ch0[1]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch0[2]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch0[3]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch0[4]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch0[5]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch0[6]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch0[7]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch0[8]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch0[9]_i_1_n_0\ : STD_LOGIC;
  signal Data_Ch0_valid : STD_LOGIC;
  attribute RTL_KEEP of Data_Ch0_valid : signal is "yes";
  signal Data_Ch1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \Data_Ch1[0]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch1[10]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch1[11]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch1[1]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch1[2]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch1[3]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch1[4]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch1[5]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch1[6]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch1[7]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch1[8]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch1[9]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch2[0]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch2[10]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch2[11]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch2[1]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch2[2]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch2[3]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch2[4]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch2[5]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch2[6]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch2[7]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch2[8]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Ch2[9]_i_1_n_0\ : STD_LOGIC;
  signal Data_Ch3 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Data_Ch3_valid : STD_LOGIC;
  signal Data_Ch3_valid_D : STD_LOGIC;
  signal PM_D1 : STD_LOGIC;
  signal PM_D2 : STD_LOGIC;
  signal \delay_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \delay_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \delay_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \delay_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \delay_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \delay_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \delay_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \delay_cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \delay_cnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \delay_cnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \delay_cnt[20]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt[20]_i_3_n_0\ : STD_LOGIC;
  signal \delay_cnt[20]_i_4_n_0\ : STD_LOGIC;
  signal \delay_cnt[20]_i_5_n_0\ : STD_LOGIC;
  signal \delay_cnt[24]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt[24]_i_3_n_0\ : STD_LOGIC;
  signal \delay_cnt[24]_i_4_n_0\ : STD_LOGIC;
  signal \delay_cnt[24]_i_5_n_0\ : STD_LOGIC;
  signal \delay_cnt[28]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt[28]_i_3_n_0\ : STD_LOGIC;
  signal \delay_cnt[28]_i_4_n_0\ : STD_LOGIC;
  signal \delay_cnt[28]_i_5_n_0\ : STD_LOGIC;
  signal \delay_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \delay_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \delay_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \delay_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \delay_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \delay_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal delay_cnt_flag_D : STD_LOGIC;
  signal delay_cnt_flag_i_1_n_0 : STD_LOGIC;
  signal delay_cnt_flag_reg_n_0 : STD_LOGIC;
  signal delay_cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \delay_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \delay_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \delay_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \delay_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \delay_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \delay_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \delay_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \delay_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \delay_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \delay_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \delay_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \delay_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \delay_cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \delay_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \delay_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \delay_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \delay_cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \delay_cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \delay_cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \delay_cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \delay_cnt_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_delay_cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_AD_state_reg[0]\ : label is "IDLE:00,Wait_TRACK_down:0001,Wait_PM_up:01,Start_Sample:10,Check_process:11";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_AD_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_AD_state_reg[1]\ : label is "IDLE:00,Wait_TRACK_down:0001,Wait_PM_up:01,Start_Sample:10,Check_process:11";
  attribute KEEP of \FSM_sequential_AD_state_reg[1]\ : label is "yes";
begin
\/FSM_sequential_AD_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEDF0400"
    )
        port map (
      I0 => AD_state(0),
      I1 => PM_D2,
      I2 => PM_D1,
      I3 => Data_Ch0_valid,
      I4 => Start_mode,
      O => \/FSM_sequential_AD_state[0]_i_1_n_0\
    );
\/FSM_sequential_AD_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F40"
    )
        port map (
      I0 => PM_D2,
      I1 => PM_D1,
      I2 => AD_state(0),
      I3 => Data_Ch0_valid,
      O => \/FSM_sequential_AD_state[1]_i_1_n_0\
    );
\DataToTriCh0_reg_D_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh0_reg(0),
      Q => DataToTriCh0(0)
    );
\DataToTriCh0_reg_D_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh0_reg(10),
      Q => DataToTriCh0(10)
    );
\DataToTriCh0_reg_D_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh0_reg(11),
      Q => DataToTriCh0(11)
    );
\DataToTriCh0_reg_D_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh0_reg(1),
      Q => DataToTriCh0(1)
    );
\DataToTriCh0_reg_D_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh0_reg(2),
      Q => DataToTriCh0(2)
    );
\DataToTriCh0_reg_D_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh0_reg(3),
      Q => DataToTriCh0(3)
    );
\DataToTriCh0_reg_D_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh0_reg(4),
      Q => DataToTriCh0(4)
    );
\DataToTriCh0_reg_D_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh0_reg(5),
      Q => DataToTriCh0(5)
    );
\DataToTriCh0_reg_D_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh0_reg(6),
      Q => DataToTriCh0(6)
    );
\DataToTriCh0_reg_D_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh0_reg(7),
      Q => DataToTriCh0(7)
    );
\DataToTriCh0_reg_D_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh0_reg(8),
      Q => DataToTriCh0(8)
    );
\DataToTriCh0_reg_D_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh0_reg(9),
      Q => DataToTriCh0(9)
    );
\DataToTriCh0_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch0(0),
      Q => DataToTriCh0_reg(0)
    );
\DataToTriCh0_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch0(10),
      Q => DataToTriCh0_reg(10)
    );
\DataToTriCh0_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch0(11),
      Q => DataToTriCh0_reg(11)
    );
\DataToTriCh0_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch0(1),
      Q => DataToTriCh0_reg(1)
    );
\DataToTriCh0_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch0(2),
      Q => DataToTriCh0_reg(2)
    );
\DataToTriCh0_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch0(3),
      Q => DataToTriCh0_reg(3)
    );
\DataToTriCh0_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch0(4),
      Q => DataToTriCh0_reg(4)
    );
\DataToTriCh0_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch0(5),
      Q => DataToTriCh0_reg(5)
    );
\DataToTriCh0_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch0(6),
      Q => DataToTriCh0_reg(6)
    );
\DataToTriCh0_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch0(7),
      Q => DataToTriCh0_reg(7)
    );
\DataToTriCh0_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch0(8),
      Q => DataToTriCh0_reg(8)
    );
\DataToTriCh0_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch0(9),
      Q => DataToTriCh0_reg(9)
    );
\DataToTriCh1_reg_D_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh1_reg(0),
      Q => DataToTriCh1(0)
    );
\DataToTriCh1_reg_D_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh1_reg(10),
      Q => DataToTriCh1(10)
    );
\DataToTriCh1_reg_D_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh1_reg(11),
      Q => DataToTriCh1(11)
    );
\DataToTriCh1_reg_D_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh1_reg(1),
      Q => DataToTriCh1(1)
    );
\DataToTriCh1_reg_D_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh1_reg(2),
      Q => DataToTriCh1(2)
    );
\DataToTriCh1_reg_D_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh1_reg(3),
      Q => DataToTriCh1(3)
    );
\DataToTriCh1_reg_D_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh1_reg(4),
      Q => DataToTriCh1(4)
    );
\DataToTriCh1_reg_D_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh1_reg(5),
      Q => DataToTriCh1(5)
    );
\DataToTriCh1_reg_D_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh1_reg(6),
      Q => DataToTriCh1(6)
    );
\DataToTriCh1_reg_D_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh1_reg(7),
      Q => DataToTriCh1(7)
    );
\DataToTriCh1_reg_D_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh1_reg(8),
      Q => DataToTriCh1(8)
    );
\DataToTriCh1_reg_D_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh1_reg(9),
      Q => DataToTriCh1(9)
    );
\DataToTriCh1_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch1(0),
      Q => DataToTriCh1_reg(0)
    );
\DataToTriCh1_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch1(10),
      Q => DataToTriCh1_reg(10)
    );
\DataToTriCh1_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch1(11),
      Q => DataToTriCh1_reg(11)
    );
\DataToTriCh1_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch1(1),
      Q => DataToTriCh1_reg(1)
    );
\DataToTriCh1_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch1(2),
      Q => DataToTriCh1_reg(2)
    );
\DataToTriCh1_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch1(3),
      Q => DataToTriCh1_reg(3)
    );
\DataToTriCh1_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch1(4),
      Q => DataToTriCh1_reg(4)
    );
\DataToTriCh1_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch1(5),
      Q => DataToTriCh1_reg(5)
    );
\DataToTriCh1_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch1(6),
      Q => DataToTriCh1_reg(6)
    );
\DataToTriCh1_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch1(7),
      Q => DataToTriCh1_reg(7)
    );
\DataToTriCh1_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch1(8),
      Q => DataToTriCh1_reg(8)
    );
\DataToTriCh1_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch1(9),
      Q => DataToTriCh1_reg(9)
    );
\DataToTriCh2_reg_D_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh3_reg(0),
      Q => DataToTriCh3(0)
    );
\DataToTriCh2_reg_D_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh3_reg(10),
      Q => DataToTriCh3(10)
    );
\DataToTriCh2_reg_D_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh3_reg(11),
      Q => DataToTriCh3(11)
    );
\DataToTriCh2_reg_D_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh3_reg(1),
      Q => DataToTriCh3(1)
    );
\DataToTriCh2_reg_D_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh3_reg(2),
      Q => DataToTriCh3(2)
    );
\DataToTriCh2_reg_D_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh3_reg(3),
      Q => DataToTriCh3(3)
    );
\DataToTriCh2_reg_D_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh3_reg(4),
      Q => DataToTriCh3(4)
    );
\DataToTriCh2_reg_D_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh3_reg(5),
      Q => DataToTriCh3(5)
    );
\DataToTriCh2_reg_D_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh3_reg(6),
      Q => DataToTriCh3(6)
    );
\DataToTriCh2_reg_D_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh3_reg(7),
      Q => DataToTriCh3(7)
    );
\DataToTriCh2_reg_D_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh3_reg(8),
      Q => DataToTriCh3(8)
    );
\DataToTriCh2_reg_D_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => DataToTriCh3_reg(9),
      Q => DataToTriCh3(9)
    );
\DataToTriCh2_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch3(0),
      Q => DataToTriCh3_reg(0)
    );
\DataToTriCh2_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch3(10),
      Q => DataToTriCh3_reg(10)
    );
\DataToTriCh2_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch3(11),
      Q => DataToTriCh3_reg(11)
    );
\DataToTriCh2_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch3(1),
      Q => DataToTriCh3_reg(1)
    );
\DataToTriCh2_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch3(2),
      Q => DataToTriCh3_reg(2)
    );
\DataToTriCh2_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch3(3),
      Q => DataToTriCh3_reg(3)
    );
\DataToTriCh2_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch3(4),
      Q => DataToTriCh3_reg(4)
    );
\DataToTriCh2_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch3(5),
      Q => DataToTriCh3_reg(5)
    );
\DataToTriCh2_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch3(6),
      Q => DataToTriCh3_reg(6)
    );
\DataToTriCh2_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch3(7),
      Q => DataToTriCh3_reg(7)
    );
\DataToTriCh2_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch3(8),
      Q => DataToTriCh3_reg(8)
    );
\DataToTriCh2_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch3(9),
      Q => DataToTriCh3_reg(9)
    );
\Data_Ch0[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => Q(0),
      O => \Data_Ch0[0]_i_1_n_0\
    );
\Data_Ch0[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => Q(10),
      O => \Data_Ch0[10]_i_1_n_0\
    );
\Data_Ch0[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => AD_state(0),
      I1 => Data_Ch0_valid,
      O => \Data_Ch0[11]_i_1_n_0\
    );
\Data_Ch0[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => Q(11),
      O => \Data_Ch0[11]_i_2_n_0\
    );
\Data_Ch0[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => Q(1),
      O => \Data_Ch0[1]_i_1_n_0\
    );
\Data_Ch0[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => Q(2),
      O => \Data_Ch0[2]_i_1_n_0\
    );
\Data_Ch0[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => Q(3),
      O => \Data_Ch0[3]_i_1_n_0\
    );
\Data_Ch0[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => Q(4),
      O => \Data_Ch0[4]_i_1_n_0\
    );
\Data_Ch0[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => Q(5),
      O => \Data_Ch0[5]_i_1_n_0\
    );
\Data_Ch0[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => Q(6),
      O => \Data_Ch0[6]_i_1_n_0\
    );
\Data_Ch0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => Q(7),
      O => \Data_Ch0[7]_i_1_n_0\
    );
\Data_Ch0[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => Q(8),
      O => \Data_Ch0[8]_i_1_n_0\
    );
\Data_Ch0[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => Q(9),
      O => \Data_Ch0[9]_i_1_n_0\
    );
\Data_Ch0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch0[0]_i_1_n_0\,
      Q => Data_Ch0(0)
    );
\Data_Ch0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch0[10]_i_1_n_0\,
      Q => Data_Ch0(10)
    );
\Data_Ch0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch0[11]_i_2_n_0\,
      Q => Data_Ch0(11)
    );
\Data_Ch0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch0[1]_i_1_n_0\,
      Q => Data_Ch0(1)
    );
\Data_Ch0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch0[2]_i_1_n_0\,
      Q => Data_Ch0(2)
    );
\Data_Ch0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch0[3]_i_1_n_0\,
      Q => Data_Ch0(3)
    );
\Data_Ch0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch0[4]_i_1_n_0\,
      Q => Data_Ch0(4)
    );
\Data_Ch0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch0[5]_i_1_n_0\,
      Q => Data_Ch0(5)
    );
\Data_Ch0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch0[6]_i_1_n_0\,
      Q => Data_Ch0(6)
    );
\Data_Ch0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch0[7]_i_1_n_0\,
      Q => Data_Ch0(7)
    );
\Data_Ch0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch0[8]_i_1_n_0\,
      Q => Data_Ch0(8)
    );
\Data_Ch0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch0[9]_i_1_n_0\,
      Q => Data_Ch0(9)
    );
Data_Ch0_valid_D_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => Data_Ch3_valid,
      Q => Data_Ch3_valid_D
    );
Data_Ch0_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => Data_Ch0_valid,
      Q => Data_Ch3_valid
    );
\Data_Ch1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]\(0),
      O => \Data_Ch1[0]_i_1_n_0\
    );
\Data_Ch1[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]\(10),
      O => \Data_Ch1[10]_i_1_n_0\
    );
\Data_Ch1[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]\(11),
      O => \Data_Ch1[11]_i_1_n_0\
    );
\Data_Ch1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]\(1),
      O => \Data_Ch1[1]_i_1_n_0\
    );
\Data_Ch1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]\(2),
      O => \Data_Ch1[2]_i_1_n_0\
    );
\Data_Ch1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]\(3),
      O => \Data_Ch1[3]_i_1_n_0\
    );
\Data_Ch1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]\(4),
      O => \Data_Ch1[4]_i_1_n_0\
    );
\Data_Ch1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]\(5),
      O => \Data_Ch1[5]_i_1_n_0\
    );
\Data_Ch1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]\(6),
      O => \Data_Ch1[6]_i_1_n_0\
    );
\Data_Ch1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]\(7),
      O => \Data_Ch1[7]_i_1_n_0\
    );
\Data_Ch1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]\(8),
      O => \Data_Ch1[8]_i_1_n_0\
    );
\Data_Ch1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]\(9),
      O => \Data_Ch1[9]_i_1_n_0\
    );
\Data_Ch1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch1[0]_i_1_n_0\,
      Q => Data_Ch1(0)
    );
\Data_Ch1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch1[10]_i_1_n_0\,
      Q => Data_Ch1(10)
    );
\Data_Ch1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch1[11]_i_1_n_0\,
      Q => Data_Ch1(11)
    );
\Data_Ch1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch1[1]_i_1_n_0\,
      Q => Data_Ch1(1)
    );
\Data_Ch1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch1[2]_i_1_n_0\,
      Q => Data_Ch1(2)
    );
\Data_Ch1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch1[3]_i_1_n_0\,
      Q => Data_Ch1(3)
    );
\Data_Ch1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch1[4]_i_1_n_0\,
      Q => Data_Ch1(4)
    );
\Data_Ch1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch1[5]_i_1_n_0\,
      Q => Data_Ch1(5)
    );
\Data_Ch1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch1[6]_i_1_n_0\,
      Q => Data_Ch1(6)
    );
\Data_Ch1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch1[7]_i_1_n_0\,
      Q => Data_Ch1(7)
    );
\Data_Ch1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch1[8]_i_1_n_0\,
      Q => Data_Ch1(8)
    );
\Data_Ch1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch1[9]_i_1_n_0\,
      Q => Data_Ch1(9)
    );
\Data_Ch2[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]_0\(0),
      O => \Data_Ch2[0]_i_1_n_0\
    );
\Data_Ch2[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]_0\(10),
      O => \Data_Ch2[10]_i_1_n_0\
    );
\Data_Ch2[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]_0\(11),
      O => \Data_Ch2[11]_i_1_n_0\
    );
\Data_Ch2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]_0\(1),
      O => \Data_Ch2[1]_i_1_n_0\
    );
\Data_Ch2[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]_0\(2),
      O => \Data_Ch2[2]_i_1_n_0\
    );
\Data_Ch2[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]_0\(3),
      O => \Data_Ch2[3]_i_1_n_0\
    );
\Data_Ch2[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]_0\(4),
      O => \Data_Ch2[4]_i_1_n_0\
    );
\Data_Ch2[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]_0\(5),
      O => \Data_Ch2[5]_i_1_n_0\
    );
\Data_Ch2[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]_0\(6),
      O => \Data_Ch2[6]_i_1_n_0\
    );
\Data_Ch2[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]_0\(7),
      O => \Data_Ch2[7]_i_1_n_0\
    );
\Data_Ch2[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]_0\(8),
      O => \Data_Ch2[8]_i_1_n_0\
    );
\Data_Ch2[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => \chxDout_reg[11]_0\(9),
      O => \Data_Ch2[9]_i_1_n_0\
    );
\Data_Ch2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch2[0]_i_1_n_0\,
      Q => Data_Ch3(0)
    );
\Data_Ch2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch2[10]_i_1_n_0\,
      Q => Data_Ch3(10)
    );
\Data_Ch2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch2[11]_i_1_n_0\,
      Q => Data_Ch3(11)
    );
\Data_Ch2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch2[1]_i_1_n_0\,
      Q => Data_Ch3(1)
    );
\Data_Ch2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch2[2]_i_1_n_0\,
      Q => Data_Ch3(2)
    );
\Data_Ch2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch2[3]_i_1_n_0\,
      Q => Data_Ch3(3)
    );
\Data_Ch2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch2[4]_i_1_n_0\,
      Q => Data_Ch3(4)
    );
\Data_Ch2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch2[5]_i_1_n_0\,
      Q => Data_Ch3(5)
    );
\Data_Ch2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch2[6]_i_1_n_0\,
      Q => Data_Ch3(6)
    );
\Data_Ch2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch2[7]_i_1_n_0\,
      Q => Data_Ch3(7)
    );
\Data_Ch2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch2[8]_i_1_n_0\,
      Q => Data_Ch3(8)
    );
\Data_Ch2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \Data_Ch0[11]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \Data_Ch2[9]_i_1_n_0\,
      Q => Data_Ch3(9)
    );
\FSM_sequential_AD_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => \/FSM_sequential_AD_state[0]_i_1_n_0\,
      Q => AD_state(0)
    );
\FSM_sequential_AD_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => \/FSM_sequential_AD_state[1]_i_1_n_0\,
      Q => Data_Ch0_valid
    );
PM_D1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => pll_trig1,
      Q => PM_D1
    );
PM_D2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => PM_D1,
      Q => PM_D2
    );
TrigInCh3_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_Ch3_valid,
      I1 => Data_Ch3_valid_D,
      O => TrigInCh3
    );
\delay_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_flag_D,
      O => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(3),
      O => \delay_cnt[0]_i_3_n_0\
    );
\delay_cnt[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(2),
      O => \delay_cnt[0]_i_4_n_0\
    );
\delay_cnt[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(1),
      O => \delay_cnt[0]_i_5_n_0\
    );
\delay_cnt[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => delay_cnt_reg(0),
      I1 => delay_cnt_flag_reg_n_0,
      O => \delay_cnt[0]_i_6_n_0\
    );
\delay_cnt[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(15),
      O => \delay_cnt[12]_i_2_n_0\
    );
\delay_cnt[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(14),
      O => \delay_cnt[12]_i_3_n_0\
    );
\delay_cnt[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(13),
      O => \delay_cnt[12]_i_4_n_0\
    );
\delay_cnt[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(12),
      O => \delay_cnt[12]_i_5_n_0\
    );
\delay_cnt[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(19),
      O => \delay_cnt[16]_i_2_n_0\
    );
\delay_cnt[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(18),
      O => \delay_cnt[16]_i_3_n_0\
    );
\delay_cnt[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(17),
      O => \delay_cnt[16]_i_4_n_0\
    );
\delay_cnt[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(16),
      O => \delay_cnt[16]_i_5_n_0\
    );
\delay_cnt[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(23),
      O => \delay_cnt[20]_i_2_n_0\
    );
\delay_cnt[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(22),
      O => \delay_cnt[20]_i_3_n_0\
    );
\delay_cnt[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(21),
      O => \delay_cnt[20]_i_4_n_0\
    );
\delay_cnt[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(20),
      O => \delay_cnt[20]_i_5_n_0\
    );
\delay_cnt[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(27),
      O => \delay_cnt[24]_i_2_n_0\
    );
\delay_cnt[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(26),
      O => \delay_cnt[24]_i_3_n_0\
    );
\delay_cnt[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(25),
      O => \delay_cnt[24]_i_4_n_0\
    );
\delay_cnt[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(24),
      O => \delay_cnt[24]_i_5_n_0\
    );
\delay_cnt[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(31),
      O => \delay_cnt[28]_i_2_n_0\
    );
\delay_cnt[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(30),
      O => \delay_cnt[28]_i_3_n_0\
    );
\delay_cnt[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(29),
      O => \delay_cnt[28]_i_4_n_0\
    );
\delay_cnt[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(28),
      O => \delay_cnt[28]_i_5_n_0\
    );
\delay_cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(7),
      O => \delay_cnt[4]_i_2_n_0\
    );
\delay_cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(6),
      O => \delay_cnt[4]_i_3_n_0\
    );
\delay_cnt[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(5),
      O => \delay_cnt[4]_i_4_n_0\
    );
\delay_cnt[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(4),
      O => \delay_cnt[4]_i_5_n_0\
    );
\delay_cnt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(11),
      O => \delay_cnt[8]_i_2_n_0\
    );
\delay_cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(10),
      O => \delay_cnt[8]_i_3_n_0\
    );
\delay_cnt[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(9),
      O => \delay_cnt[8]_i_4_n_0\
    );
\delay_cnt[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_cnt_flag_reg_n_0,
      I1 => delay_cnt_reg(8),
      O => \delay_cnt[8]_i_5_n_0\
    );
delay_cnt_flag_D_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => delay_cnt_flag_reg_n_0,
      Q => delay_cnt_flag_D
    );
delay_cnt_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFBBBB00000000"
    )
        port map (
      I0 => Data_Ch0_valid,
      I1 => AD_state(0),
      I2 => PM_D2,
      I3 => PM_D1,
      I4 => Start_mode,
      I5 => delay_cnt_flag_reg_n_0,
      O => delay_cnt_flag_i_1_n_0
    );
delay_cnt_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => sys_rst_n_reg,
      D => delay_cnt_flag_i_1_n_0,
      Q => delay_cnt_flag_reg_n_0
    );
\delay_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[0]_i_2_n_7\,
      Q => delay_cnt_reg(0)
    );
\delay_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \delay_cnt_reg[0]_i_2_n_0\,
      CO(2) => \delay_cnt_reg[0]_i_2_n_1\,
      CO(1) => \delay_cnt_reg[0]_i_2_n_2\,
      CO(0) => \delay_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => delay_cnt_flag_reg_n_0,
      O(3) => \delay_cnt_reg[0]_i_2_n_4\,
      O(2) => \delay_cnt_reg[0]_i_2_n_5\,
      O(1) => \delay_cnt_reg[0]_i_2_n_6\,
      O(0) => \delay_cnt_reg[0]_i_2_n_7\,
      S(3) => \delay_cnt[0]_i_3_n_0\,
      S(2) => \delay_cnt[0]_i_4_n_0\,
      S(1) => \delay_cnt[0]_i_5_n_0\,
      S(0) => \delay_cnt[0]_i_6_n_0\
    );
\delay_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[8]_i_1_n_5\,
      Q => delay_cnt_reg(10)
    );
\delay_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[8]_i_1_n_4\,
      Q => delay_cnt_reg(11)
    );
\delay_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[12]_i_1_n_7\,
      Q => delay_cnt_reg(12)
    );
\delay_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[8]_i_1_n_0\,
      CO(3) => \delay_cnt_reg[12]_i_1_n_0\,
      CO(2) => \delay_cnt_reg[12]_i_1_n_1\,
      CO(1) => \delay_cnt_reg[12]_i_1_n_2\,
      CO(0) => \delay_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delay_cnt_reg[12]_i_1_n_4\,
      O(2) => \delay_cnt_reg[12]_i_1_n_5\,
      O(1) => \delay_cnt_reg[12]_i_1_n_6\,
      O(0) => \delay_cnt_reg[12]_i_1_n_7\,
      S(3) => \delay_cnt[12]_i_2_n_0\,
      S(2) => \delay_cnt[12]_i_3_n_0\,
      S(1) => \delay_cnt[12]_i_4_n_0\,
      S(0) => \delay_cnt[12]_i_5_n_0\
    );
\delay_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[12]_i_1_n_6\,
      Q => delay_cnt_reg(13)
    );
\delay_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[12]_i_1_n_5\,
      Q => delay_cnt_reg(14)
    );
\delay_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[12]_i_1_n_4\,
      Q => delay_cnt_reg(15)
    );
\delay_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[16]_i_1_n_7\,
      Q => delay_cnt_reg(16)
    );
\delay_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[12]_i_1_n_0\,
      CO(3) => \delay_cnt_reg[16]_i_1_n_0\,
      CO(2) => \delay_cnt_reg[16]_i_1_n_1\,
      CO(1) => \delay_cnt_reg[16]_i_1_n_2\,
      CO(0) => \delay_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delay_cnt_reg[16]_i_1_n_4\,
      O(2) => \delay_cnt_reg[16]_i_1_n_5\,
      O(1) => \delay_cnt_reg[16]_i_1_n_6\,
      O(0) => \delay_cnt_reg[16]_i_1_n_7\,
      S(3) => \delay_cnt[16]_i_2_n_0\,
      S(2) => \delay_cnt[16]_i_3_n_0\,
      S(1) => \delay_cnt[16]_i_4_n_0\,
      S(0) => \delay_cnt[16]_i_5_n_0\
    );
\delay_cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[16]_i_1_n_6\,
      Q => delay_cnt_reg(17)
    );
\delay_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[16]_i_1_n_5\,
      Q => delay_cnt_reg(18)
    );
\delay_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[16]_i_1_n_4\,
      Q => delay_cnt_reg(19)
    );
\delay_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[0]_i_2_n_6\,
      Q => delay_cnt_reg(1)
    );
\delay_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[20]_i_1_n_7\,
      Q => delay_cnt_reg(20)
    );
\delay_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[16]_i_1_n_0\,
      CO(3) => \delay_cnt_reg[20]_i_1_n_0\,
      CO(2) => \delay_cnt_reg[20]_i_1_n_1\,
      CO(1) => \delay_cnt_reg[20]_i_1_n_2\,
      CO(0) => \delay_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delay_cnt_reg[20]_i_1_n_4\,
      O(2) => \delay_cnt_reg[20]_i_1_n_5\,
      O(1) => \delay_cnt_reg[20]_i_1_n_6\,
      O(0) => \delay_cnt_reg[20]_i_1_n_7\,
      S(3) => \delay_cnt[20]_i_2_n_0\,
      S(2) => \delay_cnt[20]_i_3_n_0\,
      S(1) => \delay_cnt[20]_i_4_n_0\,
      S(0) => \delay_cnt[20]_i_5_n_0\
    );
\delay_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[20]_i_1_n_6\,
      Q => delay_cnt_reg(21)
    );
\delay_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[20]_i_1_n_5\,
      Q => delay_cnt_reg(22)
    );
\delay_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[20]_i_1_n_4\,
      Q => delay_cnt_reg(23)
    );
\delay_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[24]_i_1_n_7\,
      Q => delay_cnt_reg(24)
    );
\delay_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[20]_i_1_n_0\,
      CO(3) => \delay_cnt_reg[24]_i_1_n_0\,
      CO(2) => \delay_cnt_reg[24]_i_1_n_1\,
      CO(1) => \delay_cnt_reg[24]_i_1_n_2\,
      CO(0) => \delay_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delay_cnt_reg[24]_i_1_n_4\,
      O(2) => \delay_cnt_reg[24]_i_1_n_5\,
      O(1) => \delay_cnt_reg[24]_i_1_n_6\,
      O(0) => \delay_cnt_reg[24]_i_1_n_7\,
      S(3) => \delay_cnt[24]_i_2_n_0\,
      S(2) => \delay_cnt[24]_i_3_n_0\,
      S(1) => \delay_cnt[24]_i_4_n_0\,
      S(0) => \delay_cnt[24]_i_5_n_0\
    );
\delay_cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[24]_i_1_n_6\,
      Q => delay_cnt_reg(25)
    );
\delay_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[24]_i_1_n_5\,
      Q => delay_cnt_reg(26)
    );
\delay_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[24]_i_1_n_4\,
      Q => delay_cnt_reg(27)
    );
\delay_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[28]_i_1_n_7\,
      Q => delay_cnt_reg(28)
    );
\delay_cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_delay_cnt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \delay_cnt_reg[28]_i_1_n_1\,
      CO(1) => \delay_cnt_reg[28]_i_1_n_2\,
      CO(0) => \delay_cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delay_cnt_reg[28]_i_1_n_4\,
      O(2) => \delay_cnt_reg[28]_i_1_n_5\,
      O(1) => \delay_cnt_reg[28]_i_1_n_6\,
      O(0) => \delay_cnt_reg[28]_i_1_n_7\,
      S(3) => \delay_cnt[28]_i_2_n_0\,
      S(2) => \delay_cnt[28]_i_3_n_0\,
      S(1) => \delay_cnt[28]_i_4_n_0\,
      S(0) => \delay_cnt[28]_i_5_n_0\
    );
\delay_cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[28]_i_1_n_6\,
      Q => delay_cnt_reg(29)
    );
\delay_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[0]_i_2_n_5\,
      Q => delay_cnt_reg(2)
    );
\delay_cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[28]_i_1_n_5\,
      Q => delay_cnt_reg(30)
    );
\delay_cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[28]_i_1_n_4\,
      Q => delay_cnt_reg(31)
    );
\delay_cnt_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt_flag_D,
      I1 => delay_cnt_flag_reg_n_0,
      O => \delay_cnt_reg[31]_i_1_n_0\
    );
\delay_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[0]_i_2_n_4\,
      Q => delay_cnt_reg(3)
    );
\delay_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[4]_i_1_n_7\,
      Q => delay_cnt_reg(4)
    );
\delay_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[0]_i_2_n_0\,
      CO(3) => \delay_cnt_reg[4]_i_1_n_0\,
      CO(2) => \delay_cnt_reg[4]_i_1_n_1\,
      CO(1) => \delay_cnt_reg[4]_i_1_n_2\,
      CO(0) => \delay_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delay_cnt_reg[4]_i_1_n_4\,
      O(2) => \delay_cnt_reg[4]_i_1_n_5\,
      O(1) => \delay_cnt_reg[4]_i_1_n_6\,
      O(0) => \delay_cnt_reg[4]_i_1_n_7\,
      S(3) => \delay_cnt[4]_i_2_n_0\,
      S(2) => \delay_cnt[4]_i_3_n_0\,
      S(1) => \delay_cnt[4]_i_4_n_0\,
      S(0) => \delay_cnt[4]_i_5_n_0\
    );
\delay_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[4]_i_1_n_6\,
      Q => delay_cnt_reg(5)
    );
\delay_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[4]_i_1_n_5\,
      Q => delay_cnt_reg(6)
    );
\delay_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[4]_i_1_n_4\,
      Q => delay_cnt_reg(7)
    );
\delay_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[8]_i_1_n_7\,
      Q => delay_cnt_reg(8)
    );
\delay_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[4]_i_1_n_0\,
      CO(3) => \delay_cnt_reg[8]_i_1_n_0\,
      CO(2) => \delay_cnt_reg[8]_i_1_n_1\,
      CO(1) => \delay_cnt_reg[8]_i_1_n_2\,
      CO(0) => \delay_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delay_cnt_reg[8]_i_1_n_4\,
      O(2) => \delay_cnt_reg[8]_i_1_n_5\,
      O(1) => \delay_cnt_reg[8]_i_1_n_6\,
      O(0) => \delay_cnt_reg[8]_i_1_n_7\,
      S(3) => \delay_cnt[8]_i_2_n_0\,
      S(2) => \delay_cnt[8]_i_3_n_0\,
      S(1) => \delay_cnt[8]_i_4_n_0\,
      S(0) => \delay_cnt[8]_i_5_n_0\
    );
\delay_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt[0]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => \delay_cnt_reg[8]_i_1_n_6\,
      Q => delay_cnt_reg(9)
    );
\delay_cnt_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(0),
      Q => \axi_rdata_reg[31]\(0)
    );
\delay_cnt_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(10),
      Q => \axi_rdata_reg[31]\(10)
    );
\delay_cnt_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(11),
      Q => \axi_rdata_reg[31]\(11)
    );
\delay_cnt_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(12),
      Q => \axi_rdata_reg[31]\(12)
    );
\delay_cnt_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(13),
      Q => \axi_rdata_reg[31]\(13)
    );
\delay_cnt_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(14),
      Q => \axi_rdata_reg[31]\(14)
    );
\delay_cnt_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(15),
      Q => \axi_rdata_reg[31]\(15)
    );
\delay_cnt_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(16),
      Q => \axi_rdata_reg[31]\(16)
    );
\delay_cnt_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(17),
      Q => \axi_rdata_reg[31]\(17)
    );
\delay_cnt_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(18),
      Q => \axi_rdata_reg[31]\(18)
    );
\delay_cnt_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(19),
      Q => \axi_rdata_reg[31]\(19)
    );
\delay_cnt_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(1),
      Q => \axi_rdata_reg[31]\(1)
    );
\delay_cnt_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(20),
      Q => \axi_rdata_reg[31]\(20)
    );
\delay_cnt_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(21),
      Q => \axi_rdata_reg[31]\(21)
    );
\delay_cnt_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(22),
      Q => \axi_rdata_reg[31]\(22)
    );
\delay_cnt_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(23),
      Q => \axi_rdata_reg[31]\(23)
    );
\delay_cnt_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(24),
      Q => \axi_rdata_reg[31]\(24)
    );
\delay_cnt_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(25),
      Q => \axi_rdata_reg[31]\(25)
    );
\delay_cnt_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(26),
      Q => \axi_rdata_reg[31]\(26)
    );
\delay_cnt_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(27),
      Q => \axi_rdata_reg[31]\(27)
    );
\delay_cnt_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(28),
      Q => \axi_rdata_reg[31]\(28)
    );
\delay_cnt_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(29),
      Q => \axi_rdata_reg[31]\(29)
    );
\delay_cnt_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(2),
      Q => \axi_rdata_reg[31]\(2)
    );
\delay_cnt_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(30),
      Q => \axi_rdata_reg[31]\(30)
    );
\delay_cnt_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(31),
      Q => \axi_rdata_reg[31]\(31)
    );
\delay_cnt_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(3),
      Q => \axi_rdata_reg[31]\(3)
    );
\delay_cnt_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(4),
      Q => \axi_rdata_reg[31]\(4)
    );
\delay_cnt_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(5),
      Q => \axi_rdata_reg[31]\(5)
    );
\delay_cnt_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(6),
      Q => \axi_rdata_reg[31]\(6)
    );
\delay_cnt_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(7),
      Q => \axi_rdata_reg[31]\(7)
    );
\delay_cnt_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(8),
      Q => \axi_rdata_reg[31]\(8)
    );
\delay_cnt_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => \delay_cnt_reg[31]_i_1_n_0\,
      CLR => sys_rst_n_reg,
      D => delay_cnt_reg(9),
      Q => \axi_rdata_reg[31]\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0_clk_wiz;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0_clk_wiz is
  signal clk_in1_clk_wiz_0 : STD_LOGIC;
  signal clk_out1_clk_wiz_0 : STD_LOGIC;
  signal clk_out2_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_buf_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_clk_wiz_0 : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout2_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of plle2_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_0,
      O => clkfbout_buf_clk_wiz_0
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_clk_wiz_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_clk_wiz_0,
      O => clk_out1
    );
clkout2_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out2_clk_wiz_0,
      O => clk_out2
    );
plle2_adv_inst: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 25,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 25.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE => 100,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 5,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_0,
      CLKFBOUT => clkfbout_clk_wiz_0,
      CLKIN1 => clk_in1_clk_wiz_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKOUT0 => clk_out1_clk_wiz_0,
      CLKOUT1 => clk_out2_clk_wiz_0,
      CLKOUT2 => NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT3 => NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT4 => NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_plle2_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_plle2_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => locked,
      PWRDWN => '0',
      RST => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1_clk_wiz;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1_clk_wiz is
  signal clk_out1_clk_wiz_1 : STD_LOGIC;
  signal clkfbout_buf_clk_wiz_1 : STD_LOGIC;
  signal clkfbout_clk_wiz_1 : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_1,
      O => clkfbout_buf_clk_wiz_1
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_clk_wiz_1,
      O => clk_out1
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 64.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 100.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 64.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_1,
      CLKFBOUT => clkfbout_clk_wiz_1,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_clk_wiz_1,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CHD_p : in STD_LOGIC;
    CHD_n : in STD_LOGIC;
    clk_out2 : in STD_LOGIC;
    load : in STD_LOGIC;
    dclk_idly : in STD_LOGIC;
    CLK : in STD_LOGIC;
    FCO_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io is
  signal IDELAYE2_chx_n_1 : STD_LOGIC;
  signal IDELAYE2_chx_n_2 : STD_LOGIC;
  signal IDELAYE2_chx_n_3 : STD_LOGIC;
  signal IDELAYE2_chx_n_4 : STD_LOGIC;
  signal IDELAYE2_chx_n_5 : STD_LOGIC;
  signal Q_0 : STD_LOGIC;
  signal Q_1 : STD_LOGIC;
  signal adc_chx_ibuf : STD_LOGIC;
  signal adc_chx_idly : STD_LOGIC;
  signal dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IBUFDS_ch3 : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of IBUFDS_ch3 : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of IBUFDS_ch3 : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of IBUFDS_ch3 : label is "AUTO";
  attribute BOX_TYPE of IDDR_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of IDDR_inst : label is "TRUE";
  attribute BOX_TYPE of IDELAYE2_chx : label is "PRIMITIVE";
  attribute IODELAY_GROUP : string;
  attribute IODELAY_GROUP of IDELAYE2_chx : label is "AD9228";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of IDELAYE2_chx : label is 0;
begin
IBUFDS_ch3: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => CHD_p,
      IB => CHD_n,
      O => adc_chx_ibuf
    );
IDDR_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dclk_idly,
      CE => '1',
      D => adc_chx_idly,
      Q1 => Q_0,
      Q2 => Q_1,
      R => '0',
      S => '0'
    );
IDELAYE2_chx: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => clk_out2,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"10101",
      CNTVALUEOUT(4) => IDELAYE2_chx_n_1,
      CNTVALUEOUT(3) => IDELAYE2_chx_n_2,
      CNTVALUEOUT(2) => IDELAYE2_chx_n_3,
      CNTVALUEOUT(1) => IDELAYE2_chx_n_4,
      CNTVALUEOUT(0) => IDELAYE2_chx_n_5,
      DATAIN => '0',
      DATAOUT => adc_chx_idly,
      IDATAIN => adc_chx_ibuf,
      INC => '0',
      LD => load,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\chxDout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => dout(0),
      Q => Q(0),
      R => '0'
    );
\chxDout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => dout(10),
      Q => Q(10),
      R => '0'
    );
\chxDout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => dout(11),
      Q => Q(11),
      R => '0'
    );
\chxDout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => dout(1),
      Q => Q(1),
      R => '0'
    );
\chxDout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => dout(2),
      Q => Q(2),
      R => '0'
    );
\chxDout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => dout(3),
      Q => Q(3),
      R => '0'
    );
\chxDout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => dout(4),
      Q => Q(4),
      R => '0'
    );
\chxDout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => dout(5),
      Q => Q(5),
      R => '0'
    );
\chxDout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => dout(6),
      Q => Q(6),
      R => '0'
    );
\chxDout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => dout(7),
      Q => Q(7),
      R => '0'
    );
\chxDout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => dout(8),
      Q => Q(8),
      R => '0'
    );
\chxDout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => dout(9),
      Q => Q(9),
      R => '0'
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => Q_1,
      Q => dout(0),
      R => '0'
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dout(8),
      Q => dout(10),
      R => '0'
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dout(9),
      Q => dout(11),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => Q_0,
      Q => dout(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dout(0),
      Q => dout(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dout(1),
      Q => dout(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dout(2),
      Q => dout(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dout(3),
      Q => dout(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dout(4),
      Q => dout(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dout(5),
      Q => dout(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dout(6),
      Q => dout(8),
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dout(7),
      Q => dout(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_0 is
  port (
    \Data_Ch1_reg[11]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CHA_p : in STD_LOGIC;
    CHA_n : in STD_LOGIC;
    clk_out2 : in STD_LOGIC;
    load : in STD_LOGIC;
    dclk_idly : in STD_LOGIC;
    CLK : in STD_LOGIC;
    FCO_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_0 : entity is "io";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_0 is
  signal IDELAYE2_chx_n_1 : STD_LOGIC;
  signal IDELAYE2_chx_n_2 : STD_LOGIC;
  signal IDELAYE2_chx_n_3 : STD_LOGIC;
  signal IDELAYE2_chx_n_4 : STD_LOGIC;
  signal IDELAYE2_chx_n_5 : STD_LOGIC;
  signal Q_0 : STD_LOGIC;
  signal Q_1 : STD_LOGIC;
  signal adc_chx_ibuf : STD_LOGIC;
  signal adc_chx_idly : STD_LOGIC;
  signal \dout_reg_n_0_[0]\ : STD_LOGIC;
  signal \dout_reg_n_0_[10]\ : STD_LOGIC;
  signal \dout_reg_n_0_[11]\ : STD_LOGIC;
  signal \dout_reg_n_0_[1]\ : STD_LOGIC;
  signal \dout_reg_n_0_[2]\ : STD_LOGIC;
  signal \dout_reg_n_0_[3]\ : STD_LOGIC;
  signal \dout_reg_n_0_[4]\ : STD_LOGIC;
  signal \dout_reg_n_0_[5]\ : STD_LOGIC;
  signal \dout_reg_n_0_[6]\ : STD_LOGIC;
  signal \dout_reg_n_0_[7]\ : STD_LOGIC;
  signal \dout_reg_n_0_[8]\ : STD_LOGIC;
  signal \dout_reg_n_0_[9]\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IBUFDS_ch3 : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of IBUFDS_ch3 : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of IBUFDS_ch3 : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of IBUFDS_ch3 : label is "AUTO";
  attribute BOX_TYPE of IDDR_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of IDDR_inst : label is "TRUE";
  attribute BOX_TYPE of IDELAYE2_chx : label is "PRIMITIVE";
  attribute IODELAY_GROUP : string;
  attribute IODELAY_GROUP of IDELAYE2_chx : label is "AD9228";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of IDELAYE2_chx : label is 0;
begin
IBUFDS_ch3: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => CHA_p,
      IB => CHA_n,
      O => adc_chx_ibuf
    );
IDDR_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dclk_idly,
      CE => '1',
      D => adc_chx_idly,
      Q1 => Q_0,
      Q2 => Q_1,
      R => '0',
      S => '0'
    );
IDELAYE2_chx: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => clk_out2,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"10000",
      CNTVALUEOUT(4) => IDELAYE2_chx_n_1,
      CNTVALUEOUT(3) => IDELAYE2_chx_n_2,
      CNTVALUEOUT(2) => IDELAYE2_chx_n_3,
      CNTVALUEOUT(1) => IDELAYE2_chx_n_4,
      CNTVALUEOUT(0) => IDELAYE2_chx_n_5,
      DATAIN => '0',
      DATAOUT => adc_chx_idly,
      IDATAIN => adc_chx_ibuf,
      INC => '0',
      LD => load,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\chxDout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => \dout_reg_n_0_[0]\,
      Q => \Data_Ch1_reg[11]\(0),
      R => '0'
    );
\chxDout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => \dout_reg_n_0_[10]\,
      Q => \Data_Ch1_reg[11]\(10),
      R => '0'
    );
\chxDout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => \dout_reg_n_0_[11]\,
      Q => \Data_Ch1_reg[11]\(11),
      R => '0'
    );
\chxDout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => \dout_reg_n_0_[1]\,
      Q => \Data_Ch1_reg[11]\(1),
      R => '0'
    );
\chxDout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => \dout_reg_n_0_[2]\,
      Q => \Data_Ch1_reg[11]\(2),
      R => '0'
    );
\chxDout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => \dout_reg_n_0_[3]\,
      Q => \Data_Ch1_reg[11]\(3),
      R => '0'
    );
\chxDout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => \dout_reg_n_0_[4]\,
      Q => \Data_Ch1_reg[11]\(4),
      R => '0'
    );
\chxDout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => \dout_reg_n_0_[5]\,
      Q => \Data_Ch1_reg[11]\(5),
      R => '0'
    );
\chxDout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => \dout_reg_n_0_[6]\,
      Q => \Data_Ch1_reg[11]\(6),
      R => '0'
    );
\chxDout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => \dout_reg_n_0_[7]\,
      Q => \Data_Ch1_reg[11]\(7),
      R => '0'
    );
\chxDout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => \dout_reg_n_0_[8]\,
      Q => \Data_Ch1_reg[11]\(8),
      R => '0'
    );
\chxDout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => FCO_n,
      CE => '1',
      D => \dout_reg_n_0_[9]\,
      Q => \Data_Ch1_reg[11]\(9),
      R => '0'
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => Q_1,
      Q => \dout_reg_n_0_[0]\,
      R => '0'
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[8]\,
      Q => \dout_reg_n_0_[10]\,
      R => '0'
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[9]\,
      Q => \dout_reg_n_0_[11]\,
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => Q_0,
      Q => \dout_reg_n_0_[1]\,
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[0]\,
      Q => \dout_reg_n_0_[2]\,
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[1]\,
      Q => \dout_reg_n_0_[3]\,
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[2]\,
      Q => \dout_reg_n_0_[4]\,
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[3]\,
      Q => \dout_reg_n_0_[5]\,
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[4]\,
      Q => \dout_reg_n_0_[6]\,
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[5]\,
      Q => \dout_reg_n_0_[7]\,
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[6]\,
      Q => \dout_reg_n_0_[8]\,
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[7]\,
      Q => \dout_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_1 is
  port (
    \Data_Ch2_reg[11]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CHB_p : in STD_LOGIC;
    CHB_n : in STD_LOGIC;
    clk_out2 : in STD_LOGIC;
    load : in STD_LOGIC;
    dclk_idly : in STD_LOGIC;
    CLK : in STD_LOGIC;
    clk_out1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_1 : entity is "io";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_1 is
  signal IDELAYE2_chx_n_1 : STD_LOGIC;
  signal IDELAYE2_chx_n_2 : STD_LOGIC;
  signal IDELAYE2_chx_n_3 : STD_LOGIC;
  signal IDELAYE2_chx_n_4 : STD_LOGIC;
  signal IDELAYE2_chx_n_5 : STD_LOGIC;
  signal Q_0 : STD_LOGIC;
  signal Q_1 : STD_LOGIC;
  signal adc_chx_ibuf : STD_LOGIC;
  signal adc_chx_idly : STD_LOGIC;
  signal \dout_reg_n_0_[0]\ : STD_LOGIC;
  signal \dout_reg_n_0_[10]\ : STD_LOGIC;
  signal \dout_reg_n_0_[11]\ : STD_LOGIC;
  signal \dout_reg_n_0_[1]\ : STD_LOGIC;
  signal \dout_reg_n_0_[2]\ : STD_LOGIC;
  signal \dout_reg_n_0_[3]\ : STD_LOGIC;
  signal \dout_reg_n_0_[4]\ : STD_LOGIC;
  signal \dout_reg_n_0_[5]\ : STD_LOGIC;
  signal \dout_reg_n_0_[6]\ : STD_LOGIC;
  signal \dout_reg_n_0_[7]\ : STD_LOGIC;
  signal \dout_reg_n_0_[8]\ : STD_LOGIC;
  signal \dout_reg_n_0_[9]\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IBUFDS_ch3 : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of IBUFDS_ch3 : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of IBUFDS_ch3 : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of IBUFDS_ch3 : label is "AUTO";
  attribute BOX_TYPE of IDDR_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of IDDR_inst : label is "TRUE";
  attribute BOX_TYPE of IDELAYE2_chx : label is "PRIMITIVE";
  attribute IODELAY_GROUP : string;
  attribute IODELAY_GROUP of IDELAYE2_chx : label is "AD9228";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of IDELAYE2_chx : label is 0;
begin
IBUFDS_ch3: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => CHB_p,
      IB => CHB_n,
      O => adc_chx_ibuf
    );
IDDR_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dclk_idly,
      CE => '1',
      D => adc_chx_idly,
      Q1 => Q_0,
      Q2 => Q_1,
      R => '0',
      S => '0'
    );
IDELAYE2_chx: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => clk_out2,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"10110",
      CNTVALUEOUT(4) => IDELAYE2_chx_n_1,
      CNTVALUEOUT(3) => IDELAYE2_chx_n_2,
      CNTVALUEOUT(2) => IDELAYE2_chx_n_3,
      CNTVALUEOUT(1) => IDELAYE2_chx_n_4,
      CNTVALUEOUT(0) => IDELAYE2_chx_n_5,
      DATAIN => '0',
      DATAOUT => adc_chx_idly,
      IDATAIN => adc_chx_ibuf,
      INC => '0',
      LD => load,
      LDPIPEEN => '0',
      REGRST => '0'
    );
\chxDout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out1,
      CE => '1',
      D => \dout_reg_n_0_[0]\,
      Q => \Data_Ch2_reg[11]\(0),
      R => '0'
    );
\chxDout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out1,
      CE => '1',
      D => \dout_reg_n_0_[10]\,
      Q => \Data_Ch2_reg[11]\(10),
      R => '0'
    );
\chxDout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out1,
      CE => '1',
      D => \dout_reg_n_0_[11]\,
      Q => \Data_Ch2_reg[11]\(11),
      R => '0'
    );
\chxDout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out1,
      CE => '1',
      D => \dout_reg_n_0_[1]\,
      Q => \Data_Ch2_reg[11]\(1),
      R => '0'
    );
\chxDout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out1,
      CE => '1',
      D => \dout_reg_n_0_[2]\,
      Q => \Data_Ch2_reg[11]\(2),
      R => '0'
    );
\chxDout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out1,
      CE => '1',
      D => \dout_reg_n_0_[3]\,
      Q => \Data_Ch2_reg[11]\(3),
      R => '0'
    );
\chxDout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out1,
      CE => '1',
      D => \dout_reg_n_0_[4]\,
      Q => \Data_Ch2_reg[11]\(4),
      R => '0'
    );
\chxDout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out1,
      CE => '1',
      D => \dout_reg_n_0_[5]\,
      Q => \Data_Ch2_reg[11]\(5),
      R => '0'
    );
\chxDout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out1,
      CE => '1',
      D => \dout_reg_n_0_[6]\,
      Q => \Data_Ch2_reg[11]\(6),
      R => '0'
    );
\chxDout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out1,
      CE => '1',
      D => \dout_reg_n_0_[7]\,
      Q => \Data_Ch2_reg[11]\(7),
      R => '0'
    );
\chxDout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out1,
      CE => '1',
      D => \dout_reg_n_0_[8]\,
      Q => \Data_Ch2_reg[11]\(8),
      R => '0'
    );
\chxDout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out1,
      CE => '1',
      D => \dout_reg_n_0_[9]\,
      Q => \Data_Ch2_reg[11]\(9),
      R => '0'
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => Q_1,
      Q => \dout_reg_n_0_[0]\,
      R => '0'
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[8]\,
      Q => \dout_reg_n_0_[10]\,
      R => '0'
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[9]\,
      Q => \dout_reg_n_0_[11]\,
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => Q_0,
      Q => \dout_reg_n_0_[1]\,
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[0]\,
      Q => \dout_reg_n_0_[2]\,
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[1]\,
      Q => \dout_reg_n_0_[3]\,
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[2]\,
      Q => \dout_reg_n_0_[4]\,
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[3]\,
      Q => \dout_reg_n_0_[5]\,
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[4]\,
      Q => \dout_reg_n_0_[6]\,
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[5]\,
      Q => \dout_reg_n_0_[7]\,
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[6]\,
      Q => \dout_reg_n_0_[8]\,
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dout_reg_n_0_[7]\,
      Q => \dout_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_2 is
  port (
    CHC_p : in STD_LOGIC;
    CHC_n : in STD_LOGIC;
    clk_out2 : in STD_LOGIC;
    load : in STD_LOGIC;
    dclk_idly : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_2 : entity is "io";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_2 is
  signal IDELAYE2_chx_n_1 : STD_LOGIC;
  signal IDELAYE2_chx_n_2 : STD_LOGIC;
  signal IDELAYE2_chx_n_3 : STD_LOGIC;
  signal IDELAYE2_chx_n_4 : STD_LOGIC;
  signal IDELAYE2_chx_n_5 : STD_LOGIC;
  signal Q_0 : STD_LOGIC;
  signal Q_1 : STD_LOGIC;
  signal adc_chx_ibuf : STD_LOGIC;
  signal adc_chx_idly : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IBUFDS_ch3 : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of IBUFDS_ch3 : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of IBUFDS_ch3 : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of IBUFDS_ch3 : label is "AUTO";
  attribute BOX_TYPE of IDDR_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of IDDR_inst : label is "TRUE";
  attribute BOX_TYPE of IDELAYE2_chx : label is "PRIMITIVE";
  attribute IODELAY_GROUP : string;
  attribute IODELAY_GROUP of IDELAYE2_chx : label is "AD9228";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of IDELAYE2_chx : label is 0;
begin
IBUFDS_ch3: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => CHC_p,
      IB => CHC_n,
      O => adc_chx_ibuf
    );
IDDR_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dclk_idly,
      CE => '1',
      D => adc_chx_idly,
      Q1 => Q_0,
      Q2 => Q_1,
      R => '0',
      S => '0'
    );
IDELAYE2_chx: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => clk_out2,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"10110",
      CNTVALUEOUT(4) => IDELAYE2_chx_n_1,
      CNTVALUEOUT(3) => IDELAYE2_chx_n_2,
      CNTVALUEOUT(2) => IDELAYE2_chx_n_3,
      CNTVALUEOUT(1) => IDELAYE2_chx_n_4,
      CNTVALUEOUT(0) => IDELAYE2_chx_n_5,
      DATAIN => '0',
      DATAOUT => adc_chx_idly,
      IDATAIN => adc_chx_ibuf,
      INC => '0',
      LD => load,
      LDPIPEEN => '0',
      REGRST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_generator is
  port (
    load : out STD_LOGIC;
    clk_out2 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_generator is
  signal IDELAYE2_chx_i_10_n_0 : STD_LOGIC;
  signal IDELAYE2_chx_i_2_n_0 : STD_LOGIC;
  signal IDELAYE2_chx_i_3_n_0 : STD_LOGIC;
  signal IDELAYE2_chx_i_4_n_0 : STD_LOGIC;
  signal IDELAYE2_chx_i_5_n_0 : STD_LOGIC;
  signal IDELAYE2_chx_i_6_n_0 : STD_LOGIC;
  signal IDELAYE2_chx_i_7_n_0 : STD_LOGIC;
  signal IDELAYE2_chx_i_8_n_0 : STD_LOGIC;
  signal IDELAYE2_chx_i_9_n_0 : STD_LOGIC;
  signal \cntDelay[0]_i_3_n_0\ : STD_LOGIC;
  signal \cntDelay[0]_i_4_n_0\ : STD_LOGIC;
  signal \cntDelay[0]_i_5_n_0\ : STD_LOGIC;
  signal \cntDelay[0]_i_6_n_0\ : STD_LOGIC;
  signal cntDelay_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \cntDelay_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cntDelay_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cntDelay_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cntDelay_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cntDelay_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cntDelay_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cntDelay_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cntDelay_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cntDelay_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cntDelay_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cntDelay_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cntDelay_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cntDelay_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cntDelay_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cntDelay_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cntDelay_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cntDelay_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cntDelay_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cntDelay_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cntDelay_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cntDelay_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cntDelay_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cntDelay_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cntDelay_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cntDelay_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cntDelay_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cntDelay_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cntDelay_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cntDelay_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cntDelay_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cntDelay_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cntDelay_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cntDelay_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cntDelay_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cntDelay_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cntDelay_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cntDelay_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cntDelay_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cntDelay_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cntDelay_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cntDelay_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cntDelay_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cntDelay_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cntDelay_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cntDelay_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cntDelay_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cntDelay_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \NLW_cntDelay_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of IDELAYE2_chx_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of IDELAYE2_chx_i_6 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of IDELAYE2_chx_i_7 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cntDelay[0]_i_3\ : label is "soft_lutpair1";
begin
IDELAYE2_chx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA020002AA02AA02"
    )
        port map (
      I0 => IDELAYE2_chx_i_2_n_0,
      I1 => IDELAYE2_chx_i_3_n_0,
      I2 => IDELAYE2_chx_i_4_n_0,
      I3 => cntDelay_reg(18),
      I4 => IDELAYE2_chx_i_5_n_0,
      I5 => cntDelay_reg(17),
      O => load
    );
IDELAYE2_chx_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cntDelay_reg(14),
      I1 => cntDelay_reg(15),
      I2 => cntDelay_reg(13),
      I3 => cntDelay_reg(16),
      O => IDELAYE2_chx_i_10_n_0
    );
IDELAYE2_chx_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => cntDelay_reg(19),
      I1 => cntDelay_reg(22),
      I2 => cntDelay_reg(23),
      I3 => cntDelay_reg(21),
      I4 => cntDelay_reg(20),
      O => IDELAYE2_chx_i_2_n_0
    );
IDELAYE2_chx_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"010F"
    )
        port map (
      I0 => cntDelay_reg(7),
      I1 => cntDelay_reg(6),
      I2 => IDELAYE2_chx_i_6_n_0,
      I3 => cntDelay_reg(8),
      O => IDELAYE2_chx_i_3_n_0
    );
IDELAYE2_chx_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15FFFFFF"
    )
        port map (
      I0 => IDELAYE2_chx_i_7_n_0,
      I1 => cntDelay_reg(10),
      I2 => cntDelay_reg(11),
      I3 => cntDelay_reg(17),
      I4 => cntDelay_reg(16),
      O => IDELAYE2_chx_i_4_n_0
    );
IDELAYE2_chx_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAB"
    )
        port map (
      I0 => IDELAYE2_chx_i_8_n_0,
      I1 => cntDelay_reg(2),
      I2 => cntDelay_reg(0),
      I3 => cntDelay_reg(6),
      I4 => IDELAYE2_chx_i_9_n_0,
      I5 => IDELAYE2_chx_i_10_n_0,
      O => IDELAYE2_chx_i_5_n_0
    );
IDELAYE2_chx_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cntDelay_reg(9),
      I1 => cntDelay_reg(13),
      I2 => cntDelay_reg(12),
      I3 => cntDelay_reg(15),
      I4 => cntDelay_reg(14),
      O => IDELAYE2_chx_i_6_n_0
    );
IDELAYE2_chx_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cntDelay_reg(14),
      I1 => cntDelay_reg(15),
      I2 => cntDelay_reg(12),
      I3 => cntDelay_reg(13),
      O => IDELAYE2_chx_i_7_n_0
    );
IDELAYE2_chx_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF1FFF0FFFFFFF"
    )
        port map (
      I0 => cntDelay_reg(8),
      I1 => cntDelay_reg(7),
      I2 => cntDelay_reg(11),
      I3 => cntDelay_reg(12),
      I4 => cntDelay_reg(10),
      I5 => cntDelay_reg(9),
      O => IDELAYE2_chx_i_8_n_0
    );
IDELAYE2_chx_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cntDelay_reg(8),
      I1 => cntDelay_reg(10),
      I2 => cntDelay_reg(3),
      I3 => cntDelay_reg(5),
      I4 => cntDelay_reg(4),
      I5 => cntDelay_reg(1),
      O => IDELAYE2_chx_i_9_n_0
    );
\cntDelay[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111311131113"
    )
        port map (
      I0 => cntDelay_reg(19),
      I1 => \cntDelay[0]_i_3_n_0\,
      I2 => cntDelay_reg(18),
      I3 => cntDelay_reg(17),
      I4 => cntDelay_reg(16),
      I5 => \cntDelay[0]_i_4_n_0\,
      O => sel
    );
\cntDelay[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cntDelay_reg(20),
      I1 => cntDelay_reg(21),
      I2 => cntDelay_reg(23),
      I3 => cntDelay_reg(22),
      O => \cntDelay[0]_i_3_n_0\
    );
\cntDelay[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEEEEEEEEE"
    )
        port map (
      I0 => cntDelay_reg(14),
      I1 => cntDelay_reg(15),
      I2 => cntDelay_reg(12),
      I3 => cntDelay_reg(11),
      I4 => \cntDelay[0]_i_6_n_0\,
      I5 => cntDelay_reg(13),
      O => \cntDelay[0]_i_4_n_0\
    );
\cntDelay[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntDelay_reg(0),
      O => \cntDelay[0]_i_5_n_0\
    );
\cntDelay[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cntDelay_reg(8),
      I1 => cntDelay_reg(9),
      I2 => cntDelay_reg(10),
      I3 => cntDelay_reg(7),
      I4 => cntDelay_reg(6),
      O => \cntDelay[0]_i_6_n_0\
    );
\cntDelay_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[0]_i_2_n_7\,
      Q => cntDelay_reg(0),
      R => '0'
    );
\cntDelay_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cntDelay_reg[0]_i_2_n_0\,
      CO(2) => \cntDelay_reg[0]_i_2_n_1\,
      CO(1) => \cntDelay_reg[0]_i_2_n_2\,
      CO(0) => \cntDelay_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cntDelay_reg[0]_i_2_n_4\,
      O(2) => \cntDelay_reg[0]_i_2_n_5\,
      O(1) => \cntDelay_reg[0]_i_2_n_6\,
      O(0) => \cntDelay_reg[0]_i_2_n_7\,
      S(3 downto 1) => cntDelay_reg(3 downto 1),
      S(0) => \cntDelay[0]_i_5_n_0\
    );
\cntDelay_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[8]_i_1_n_5\,
      Q => cntDelay_reg(10),
      R => '0'
    );
\cntDelay_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[8]_i_1_n_4\,
      Q => cntDelay_reg(11),
      R => '0'
    );
\cntDelay_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[12]_i_1_n_7\,
      Q => cntDelay_reg(12),
      R => '0'
    );
\cntDelay_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntDelay_reg[8]_i_1_n_0\,
      CO(3) => \cntDelay_reg[12]_i_1_n_0\,
      CO(2) => \cntDelay_reg[12]_i_1_n_1\,
      CO(1) => \cntDelay_reg[12]_i_1_n_2\,
      CO(0) => \cntDelay_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cntDelay_reg[12]_i_1_n_4\,
      O(2) => \cntDelay_reg[12]_i_1_n_5\,
      O(1) => \cntDelay_reg[12]_i_1_n_6\,
      O(0) => \cntDelay_reg[12]_i_1_n_7\,
      S(3 downto 0) => cntDelay_reg(15 downto 12)
    );
\cntDelay_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[12]_i_1_n_6\,
      Q => cntDelay_reg(13),
      R => '0'
    );
\cntDelay_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[12]_i_1_n_5\,
      Q => cntDelay_reg(14),
      R => '0'
    );
\cntDelay_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[12]_i_1_n_4\,
      Q => cntDelay_reg(15),
      R => '0'
    );
\cntDelay_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[16]_i_1_n_7\,
      Q => cntDelay_reg(16),
      R => '0'
    );
\cntDelay_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntDelay_reg[12]_i_1_n_0\,
      CO(3) => \cntDelay_reg[16]_i_1_n_0\,
      CO(2) => \cntDelay_reg[16]_i_1_n_1\,
      CO(1) => \cntDelay_reg[16]_i_1_n_2\,
      CO(0) => \cntDelay_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cntDelay_reg[16]_i_1_n_4\,
      O(2) => \cntDelay_reg[16]_i_1_n_5\,
      O(1) => \cntDelay_reg[16]_i_1_n_6\,
      O(0) => \cntDelay_reg[16]_i_1_n_7\,
      S(3 downto 0) => cntDelay_reg(19 downto 16)
    );
\cntDelay_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[16]_i_1_n_6\,
      Q => cntDelay_reg(17),
      R => '0'
    );
\cntDelay_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[16]_i_1_n_5\,
      Q => cntDelay_reg(18),
      R => '0'
    );
\cntDelay_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[16]_i_1_n_4\,
      Q => cntDelay_reg(19),
      R => '0'
    );
\cntDelay_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[0]_i_2_n_6\,
      Q => cntDelay_reg(1),
      R => '0'
    );
\cntDelay_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[20]_i_1_n_7\,
      Q => cntDelay_reg(20),
      R => '0'
    );
\cntDelay_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntDelay_reg[16]_i_1_n_0\,
      CO(3) => \NLW_cntDelay_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cntDelay_reg[20]_i_1_n_1\,
      CO(1) => \cntDelay_reg[20]_i_1_n_2\,
      CO(0) => \cntDelay_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cntDelay_reg[20]_i_1_n_4\,
      O(2) => \cntDelay_reg[20]_i_1_n_5\,
      O(1) => \cntDelay_reg[20]_i_1_n_6\,
      O(0) => \cntDelay_reg[20]_i_1_n_7\,
      S(3 downto 0) => cntDelay_reg(23 downto 20)
    );
\cntDelay_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[20]_i_1_n_6\,
      Q => cntDelay_reg(21),
      R => '0'
    );
\cntDelay_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[20]_i_1_n_5\,
      Q => cntDelay_reg(22),
      R => '0'
    );
\cntDelay_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[20]_i_1_n_4\,
      Q => cntDelay_reg(23),
      R => '0'
    );
\cntDelay_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[0]_i_2_n_5\,
      Q => cntDelay_reg(2),
      R => '0'
    );
\cntDelay_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[0]_i_2_n_4\,
      Q => cntDelay_reg(3),
      R => '0'
    );
\cntDelay_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[4]_i_1_n_7\,
      Q => cntDelay_reg(4),
      R => '0'
    );
\cntDelay_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntDelay_reg[0]_i_2_n_0\,
      CO(3) => \cntDelay_reg[4]_i_1_n_0\,
      CO(2) => \cntDelay_reg[4]_i_1_n_1\,
      CO(1) => \cntDelay_reg[4]_i_1_n_2\,
      CO(0) => \cntDelay_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cntDelay_reg[4]_i_1_n_4\,
      O(2) => \cntDelay_reg[4]_i_1_n_5\,
      O(1) => \cntDelay_reg[4]_i_1_n_6\,
      O(0) => \cntDelay_reg[4]_i_1_n_7\,
      S(3 downto 0) => cntDelay_reg(7 downto 4)
    );
\cntDelay_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[4]_i_1_n_6\,
      Q => cntDelay_reg(5),
      R => '0'
    );
\cntDelay_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[4]_i_1_n_5\,
      Q => cntDelay_reg(6),
      R => '0'
    );
\cntDelay_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[4]_i_1_n_4\,
      Q => cntDelay_reg(7),
      R => '0'
    );
\cntDelay_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[8]_i_1_n_7\,
      Q => cntDelay_reg(8),
      R => '0'
    );
\cntDelay_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntDelay_reg[4]_i_1_n_0\,
      CO(3) => \cntDelay_reg[8]_i_1_n_0\,
      CO(2) => \cntDelay_reg[8]_i_1_n_1\,
      CO(1) => \cntDelay_reg[8]_i_1_n_2\,
      CO(0) => \cntDelay_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cntDelay_reg[8]_i_1_n_4\,
      O(2) => \cntDelay_reg[8]_i_1_n_5\,
      O(1) => \cntDelay_reg[8]_i_1_n_6\,
      O(0) => \cntDelay_reg[8]_i_1_n_7\,
      S(3 downto 0) => cntDelay_reg(11 downto 8)
    );
\cntDelay_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => sel,
      D => \cntDelay_reg[8]_i_1_n_6\,
      Q => cntDelay_reg(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0 is
  port (
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0 is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      clk_out2 => clk_out2,
      locked => locked,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1 is
  port (
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1 is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1 is
  port (
    CLK : out STD_LOGIC;
    adcClkIn_p : out STD_LOGIC;
    adcClkIn_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \Data_Ch1_reg[11]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \Data_Ch2_reg[11]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CHD_p : in STD_LOGIC;
    CHD_n : in STD_LOGIC;
    clk_out2 : in STD_LOGIC;
    CHA_p : in STD_LOGIC;
    CHA_n : in STD_LOGIC;
    CHB_p : in STD_LOGIC;
    CHB_n : in STD_LOGIC;
    CHC_p : in STD_LOGIC;
    CHC_n : in STD_LOGIC;
    FCO_p : in STD_LOGIC;
    FCO_n : in STD_LOGIC;
    DCO_p : in STD_LOGIC;
    DCO_n : in STD_LOGIC;
    rst_r2_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1 is
  signal \^clk\ : STD_LOGIC;
  signal OddrClk : STD_LOGIC;
  signal dclk_bufg : STD_LOGIC;
  signal dclk_ibuf : STD_LOGIC;
  signal dclk_idly : STD_LOGIC;
  signal fcoClkIn_10m : STD_LOGIC;
  signal load : STD_LOGIC;
  signal NLW_IDELAYCTRL_inst_RDY_UNCONNECTED : STD_LOGIC;
  signal NLW_IDELAYE2_dco_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_ODDR_inst_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_inst_S_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of BUFG_dclk : label is "PRIMITIVE";
  attribute BOX_TYPE of IBUFDS_dclk : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of IBUFDS_dclk : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of IBUFDS_dclk : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of IBUFDS_dclk : label is "AUTO";
  attribute BOX_TYPE of IBUFDS_fclk : label is "PRIMITIVE";
  attribute CAPACITANCE of IBUFDS_fclk : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of IBUFDS_fclk : label is "0";
  attribute IFD_DELAY_VALUE of IBUFDS_fclk : label is "AUTO";
  attribute BOX_TYPE of IDELAYCTRL_inst : label is "PRIMITIVE";
  attribute IODELAY_GROUP : string;
  attribute IODELAY_GROUP of IDELAYCTRL_inst : label is "AD9228";
  attribute BOX_TYPE of IDELAYE2_dco : label is "PRIMITIVE";
  attribute IODELAY_GROUP of IDELAYE2_dco : label is "AD9228";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of IDELAYE2_dco : label is 0;
  attribute BOX_TYPE of OBUFDS_inst : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_inst : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of OBUFDS_inst : label is "OBUFDS";
  attribute BOX_TYPE of ODDR_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of ODDR_inst : label is "TRUE";
begin
  CLK <= \^clk\;
BUFG_dclk: unisim.vcomponents.BUFG
     port map (
      I => dclk_idly,
      O => dclk_bufg
    );
IBUFDS_dclk: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => DCO_p,
      IB => DCO_n,
      O => dclk_ibuf
    );
IBUFDS_fclk: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => FCO_p,
      IB => FCO_n,
      O => fcoClkIn_10m
    );
IDELAYCTRL_inst: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => NLW_IDELAYCTRL_inst_RDY_UNCONNECTED,
      REFCLK => clk_out2,
      RST => '0'
    );
IDELAYE2_dco: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "CLOCK"
    )
        port map (
      C => clk_out2,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"11110",
      CNTVALUEOUT(4 downto 0) => NLW_IDELAYE2_dco_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => dclk_idly,
      IDATAIN => dclk_ibuf,
      INC => '0',
      LD => load,
      LDPIPEEN => '0',
      REGRST => '0'
    );
OBUFDS_inst: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OddrClk,
      O => adcClkIn_p,
      OB => adcClkIn_n
    );
ODDR_inst: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => rst_r2_reg,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => OddrClk,
      R => NLW_ODDR_inst_R_UNCONNECTED,
      S => NLW_ODDR_inst_S_UNCONNECTED
    );
ch0_idelay: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io
     port map (
      CHD_n => CHD_n,
      CHD_p => CHD_p,
      CLK => dclk_bufg,
      FCO_n => \^clk\,
      Q(11 downto 0) => Q(11 downto 0),
      clk_out2 => clk_out2,
      dclk_idly => dclk_idly,
      load => load
    );
ch1_idelay: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_0
     port map (
      CHA_n => CHA_n,
      CHA_p => CHA_p,
      CLK => dclk_bufg,
      \Data_Ch1_reg[11]\(11 downto 0) => \Data_Ch1_reg[11]\(11 downto 0),
      FCO_n => \^clk\,
      clk_out2 => clk_out2,
      dclk_idly => dclk_idly,
      load => load
    );
ch2_idelay: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_1
     port map (
      CHB_n => CHB_n,
      CHB_p => CHB_p,
      CLK => dclk_bufg,
      \Data_Ch2_reg[11]\(11 downto 0) => \Data_Ch2_reg[11]\(11 downto 0),
      clk_out1 => \^clk\,
      clk_out2 => clk_out2,
      dclk_idly => dclk_idly,
      load => load
    );
ch3_idelay: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_2
     port map (
      CHC_n => CHC_n,
      CHC_p => CHC_p,
      clk_out2 => clk_out2,
      dclk_idly => dclk_idly,
      load => load
    );
load_pulse: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_generator
     port map (
      clk_out2 => clk_out2,
      load => load
    );
my_clk_wiz_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1
     port map (
      clk_in1 => fcoClkIn_10m,
      clk_out1 => \^clk\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sys_ctrl is
  port (
    CLK : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    \FSM_sequential_AD_state_reg[1]\ : out STD_LOGIC;
    clk_40m_i : in STD_LOGIC;
    ps_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sys_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sys_ctrl is
  signal \^clk\ : STD_LOGIC;
  signal locked : STD_LOGIC;
  signal my_clk_wiz_0_sys_ctrl_i_1_n_0 : STD_LOGIC;
  signal rst_r1 : STD_LOGIC;
  signal rst_r1_i_1_n_0 : STD_LOGIC;
  signal rst_r2 : STD_LOGIC;
  signal sys_rst_n : STD_LOGIC;
  signal sys_rst_n_i_1_n_0 : STD_LOGIC;
  signal sys_rst_nr : STD_LOGIC;
begin
  CLK <= \^clk\;
\DataToTriCh0_reg_D[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_rst_n,
      O => \FSM_sequential_AD_state_reg[1]\
    );
my_clk_wiz_0_sys_ctrl: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0
     port map (
      clk_in1 => clk_40m_i,
      clk_out1 => \^clk\,
      clk_out2 => clk_out2,
      locked => locked,
      reset => my_clk_wiz_0_sys_ctrl_i_1_n_0
    );
my_clk_wiz_0_sys_ctrl_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_r2,
      O => my_clk_wiz_0_sys_ctrl_i_1_n_0
    );
rst_r1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ps_rst_n,
      O => rst_r1_i_1_n_0
    );
rst_r1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_40m_i,
      CE => '1',
      CLR => rst_r1_i_1_n_0,
      D => '1',
      Q => rst_r1
    );
rst_r2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_40m_i,
      CE => '1',
      CLR => rst_r1_i_1_n_0,
      D => rst_r1,
      Q => rst_r2
    );
sys_rst_n_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_rst_nr,
      O => sys_rst_n_i_1_n_0
    );
sys_rst_n_reg: unisim.vcomponents.FDCE
     port map (
      C => \^clk\,
      CE => '1',
      CLR => sys_rst_n_i_1_n_0,
      D => '1',
      Q => sys_rst_n
    );
sys_rst_nr_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => locked,
      Q => sys_rst_nr,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Adc9228_top is
  port (
    TrigInCh3 : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    clk_10m_o : out STD_LOGIC;
    adcClkIn_p : out STD_LOGIC;
    adcClkIn_n : out STD_LOGIC;
    DataToTriCh0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DataToTriCh1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DataToTriCh3 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    pll_trig_debug1 : out STD_LOGIC;
    pll_trig_debug2 : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    clk_40m_i : in STD_LOGIC;
    CHD_p : in STD_LOGIC;
    CHD_n : in STD_LOGIC;
    CHA_p : in STD_LOGIC;
    CHA_n : in STD_LOGIC;
    CHB_p : in STD_LOGIC;
    CHB_n : in STD_LOGIC;
    CHC_p : in STD_LOGIC;
    CHC_n : in STD_LOGIC;
    FCO_p : in STD_LOGIC;
    FCO_n : in STD_LOGIC;
    DCO_p : in STD_LOGIC;
    DCO_n : in STD_LOGIC;
    Start_mode : in STD_LOGIC;
    pll_trig1 : in STD_LOGIC;
    pll_trig2 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    ps_rst_n : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Adc9228_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Adc9228_top is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^clk_10m_o\ : STD_LOGIC;
  signal clk_out1_fromSysCtrl : STD_LOGIC;
  signal clk_out2_fromSysCtrl : STD_LOGIC;
  signal data_AD0_w : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal data_AD1_w : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal data_AD2_w : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal delay_cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal sys_ctrl_ins_n_2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axi_arready_reg : label is "xilinx.com:interface:aximm:1.0 S_AXILite ARREADY";
  attribute X_INTERFACE_INFO of axi_awready_reg : label is "xilinx.com:interface:aximm:1.0 S_AXILite AWREADY";
  attribute X_INTERFACE_INFO of axi_bvalid_reg : label is "xilinx.com:interface:aximm:1.0 S_AXILite BVALID";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[0]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[10]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[11]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[12]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[13]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[14]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[15]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[16]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[17]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[18]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[19]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[20]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[21]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[22]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[23]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[24]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[25]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[26]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[27]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[28]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[29]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[2]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[30]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[31]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[3]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[4]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[5]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[6]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[7]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[8]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of \axi_rdata_reg[9]\ : label is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of axi_rvalid_reg : label is "xilinx.com:interface:aximm:1.0 S_AXILite RVALID";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair3";
  attribute X_INTERFACE_INFO of axi_wready_reg : label is "xilinx.com:interface:aximm:1.0 S_AXILite WREADY";
  attribute SOFT_HLUTNM of \slv_reg3[31]_i_2\ : label is "soft_lutpair3";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  clk_10m_o <= \^clk_10m_o\;
AD_control_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AD_control
     port map (
      DataToTriCh0(11 downto 0) => DataToTriCh0(11 downto 0),
      DataToTriCh1(11 downto 0) => DataToTriCh1(11 downto 0),
      DataToTriCh3(11 downto 0) => DataToTriCh3(11 downto 0),
      Q(11 downto 0) => data_AD0_w(11 downto 0),
      Start_mode => Start_mode,
      TrigInCh3 => TrigInCh3,
      \axi_rdata_reg[31]\(31 downto 0) => delay_cnt_reg(31 downto 0),
      \chxDout_reg[11]\(11 downto 0) => data_AD1_w(11 downto 0),
      \chxDout_reg[11]_0\(11 downto 0) => data_AD2_w(11 downto 0),
      clk_out1 => \^clk_10m_o\,
      pll_trig1 => pll_trig1,
      sys_rst_n_reg => sys_ctrl_ins_n_2
    );
adc_1_ins: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1
     port map (
      CHA_n => CHA_n,
      CHA_p => CHA_p,
      CHB_n => CHB_n,
      CHB_p => CHB_p,
      CHC_n => CHC_n,
      CHC_p => CHC_p,
      CHD_n => CHD_n,
      CHD_p => CHD_p,
      CLK => \^clk_10m_o\,
      DCO_n => DCO_n,
      DCO_p => DCO_p,
      \Data_Ch1_reg[11]\(11 downto 0) => data_AD1_w(11 downto 0),
      \Data_Ch2_reg[11]\(11 downto 0) => data_AD2_w(11 downto 0),
      FCO_n => FCO_n,
      FCO_p => FCO_p,
      Q(11 downto 0) => data_AD0_w(11 downto 0),
      adcClkIn_n => adcClkIn_n,
      adcClkIn_p => adcClkIn_p,
      clk_out2 => clk_out2_fromSysCtrl,
      rst_r2_reg => clk_out1_fromSysCtrl
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_ARADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_ARADDR(1),
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => S_AXI_WVALID,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => S_AXI_WVALID,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => S_AXI_WVALID,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => delay_cnt_reg(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => delay_cnt_reg(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => delay_cnt_reg(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => delay_cnt_reg(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => delay_cnt_reg(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => delay_cnt_reg(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => delay_cnt_reg(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => delay_cnt_reg(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => delay_cnt_reg(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => delay_cnt_reg(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => delay_cnt_reg(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => delay_cnt_reg(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => delay_cnt_reg(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => delay_cnt_reg(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => delay_cnt_reg(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => delay_cnt_reg(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => delay_cnt_reg(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => delay_cnt_reg(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => delay_cnt_reg(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => delay_cnt_reg(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => delay_cnt_reg(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => delay_cnt_reg(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => delay_cnt_reg(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => delay_cnt_reg(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => delay_cnt_reg(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => delay_cnt_reg(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => delay_cnt_reg(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => delay_cnt_reg(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => delay_cnt_reg(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => delay_cnt_reg(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => delay_cnt_reg(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => delay_cnt_reg(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => S_AXI_RDATA(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => S_AXI_RDATA(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => S_AXI_RDATA(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => S_AXI_RDATA(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => S_AXI_RDATA(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => S_AXI_RDATA(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => S_AXI_RDATA(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => S_AXI_RDATA(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => S_AXI_RDATA(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => S_AXI_RDATA(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => S_AXI_RDATA(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => S_AXI_RDATA(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => S_AXI_RDATA(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => S_AXI_RDATA(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => S_AXI_RDATA(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => S_AXI_RDATA(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => S_AXI_RDATA(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => S_AXI_RDATA(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => S_AXI_RDATA(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => S_AXI_RDATA(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => S_AXI_RDATA(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => S_AXI_RDATA(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => S_AXI_RDATA(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => S_AXI_RDATA(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => S_AXI_RDATA(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => S_AXI_RDATA(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => S_AXI_RDATA(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => S_AXI_RDATA(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => S_AXI_RDATA(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => S_AXI_RDATA(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => S_AXI_RDATA(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => S_AXI_RDATA(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_rvalid\,
      I3 => S_AXI_RREADY,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => S_AXI_WVALID,
      I2 => S_AXI_AWVALID,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
pll_reg1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_40m_i,
      CE => '1',
      CLR => sys_ctrl_ins_n_2,
      D => pll_trig1,
      Q => pll_trig_debug1
    );
pll_reg2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_40m_i,
      CE => '1',
      CLR => sys_ctrl_ins_n_2,
      D => pll_trig2,
      Q => pll_trig_debug2
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WSTRB(1),
      I2 => axi_awaddr(2),
      I3 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WSTRB(2),
      I2 => axi_awaddr(2),
      I3 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WSTRB(3),
      I2 => axi_awaddr(2),
      I3 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WSTRB(0),
      I2 => axi_awaddr(2),
      I3 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WSTRB(1),
      I2 => axi_awaddr(2),
      I3 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WSTRB(2),
      I2 => axi_awaddr(2),
      I3 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WSTRB(3),
      I2 => axi_awaddr(2),
      I3 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WSTRB(0),
      I2 => axi_awaddr(2),
      I3 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => S_AXI_WSTRB(1),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => S_AXI_WSTRB(2),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => S_AXI_WSTRB(3),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      O => \slv_reg3[31]_i_2_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => S_AXI_WSTRB(0),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
sys_ctrl_ins: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sys_ctrl
     port map (
      CLK => clk_out1_fromSysCtrl,
      \FSM_sequential_AD_state_reg[1]\ => sys_ctrl_ins_n_2,
      clk_40m_i => clk_40m_i,
      clk_out2 => clk_out2_fromSysCtrl,
      ps_rst_n => ps_rst_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Adc3444_TCP_Adc9228_top_0_0,Adc9228_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Adc9228_top,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^datatotrich0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^datatotrich1\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^datatotrich3\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^triginch3\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXILite_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXILite_aclk, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_Adc9228_top_0_0_clk_10m_o, ASSOCIATED_BUSIF S_AXILite";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXILite_aresetn RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXILite_aresetn, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXILite ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXILite ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXILite AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXILite AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXILite BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXILite BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXILite RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXILite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 10000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_Adc9228_top_0_0_clk_10m_o, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXILite RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXILite WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXILite WVALID";
  attribute X_INTERFACE_INFO of clk_10m_o : signal is "xilinx.com:signal:clock:1.0 clk_10m_o CLK";
  attribute X_INTERFACE_PARAMETER of clk_10m_o : signal is "XIL_INTERFACENAME clk_10m_o, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_Adc9228_top_0_0_clk_10m_o";
  attribute X_INTERFACE_INFO of ps_rst_n : signal is "xilinx.com:signal:reset:1.0 ps_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ps_rst_n : signal is "XIL_INTERFACENAME ps_rst_n, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXILite ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXILite ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXILite AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXILite AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXILite BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXILite RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXILite RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXILite WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXILite WSTRB";
begin
  DataToTriCh0(15) <= \<const0>\;
  DataToTriCh0(14) <= \<const0>\;
  DataToTriCh0(13) <= \<const0>\;
  DataToTriCh0(12) <= \<const0>\;
  DataToTriCh0(11 downto 0) <= \^datatotrich0\(11 downto 0);
  DataToTriCh1(15) <= \<const0>\;
  DataToTriCh1(14) <= \<const0>\;
  DataToTriCh1(13) <= \<const0>\;
  DataToTriCh1(12) <= \<const0>\;
  DataToTriCh1(11 downto 0) <= \^datatotrich1\(11 downto 0);
  DataToTriCh2(15) <= \<const0>\;
  DataToTriCh2(14) <= \<const0>\;
  DataToTriCh2(13) <= \<const0>\;
  DataToTriCh2(12) <= \<const0>\;
  DataToTriCh2(11 downto 0) <= \^datatotrich3\(11 downto 0);
  DataToTriCh3(15) <= \<const0>\;
  DataToTriCh3(14) <= \<const0>\;
  DataToTriCh3(13) <= \<const0>\;
  DataToTriCh3(12) <= \<const0>\;
  DataToTriCh3(11 downto 0) <= \^datatotrich3\(11 downto 0);
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  TrigInCh0 <= \^triginch3\;
  TrigInCh1 <= \^triginch3\;
  TrigInCh2 <= \^triginch3\;
  TrigInCh3 <= \^triginch3\;
  led <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Adc9228_top
     port map (
      CHA_n => CHA_n,
      CHA_p => CHA_p,
      CHB_n => CHB_n,
      CHB_p => CHB_p,
      CHC_n => CHC_n,
      CHC_p => CHC_p,
      CHD_n => CHD_n,
      CHD_p => CHD_p,
      DCO_n => DCO_n,
      DCO_p => DCO_p,
      DataToTriCh0(11 downto 0) => \^datatotrich0\(11 downto 0),
      DataToTriCh1(11 downto 0) => \^datatotrich1\(11 downto 0),
      DataToTriCh3(11 downto 0) => \^datatotrich3\(11 downto 0),
      FCO_n => FCO_n,
      FCO_p => FCO_p,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(1 downto 0) => S_AXI_ARADDR(3 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(1 downto 0) => S_AXI_AWADDR(3 downto 2),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      Start_mode => Start_mode,
      TrigInCh3 => \^triginch3\,
      adcClkIn_n => adcClkIn_n,
      adcClkIn_p => adcClkIn_p,
      clk_10m_o => clk_10m_o,
      clk_40m_i => clk_40m_i,
      pll_trig1 => pll_trig1,
      pll_trig2 => pll_trig2,
      pll_trig_debug1 => pll_trig_debug1,
      pll_trig_debug2 => pll_trig_debug2,
      ps_rst_n => ps_rst_n
    );
end STRUCTURE;
