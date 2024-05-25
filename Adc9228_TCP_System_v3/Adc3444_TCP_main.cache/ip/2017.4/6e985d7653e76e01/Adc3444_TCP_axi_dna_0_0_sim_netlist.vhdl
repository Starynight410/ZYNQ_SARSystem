-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed May 18 16:11:26 2022
-- Host        : DESKTOP-N01S6N9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_axi_dna_0_0_sim_netlist.vhdl
-- Design      : Adc3444_TCP_axi_dna_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z030fbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dna is
  port (
    s_axil_arready : out STD_LOGIC;
    s_axil_rvalid : out STD_LOGIC;
    s_axil_bvalid : out STD_LOGIC;
    s_axil_awready : out STD_LOGIC;
    s_axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_arvalid : in STD_LOGIC;
    s_axil_rready : in STD_LOGIC;
    s_axil_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axil_clk : in STD_LOGIC;
    s_axil_bready : in STD_LOGIC;
    s_axil_awvalid : in STD_LOGIC;
    s_axil_wvalid : in STD_LOGIC;
    s_axil_rstn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dna;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dna is
  signal dna_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \dna_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \dna_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \dna_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \dna_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \dna_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \dna_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \dna_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \dna_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \dna_cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \dna_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \dna_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \dna_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \dna_cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \dna_cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \dna_cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \dna_cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \dna_cnt0_carry__4_n_0\ : STD_LOGIC;
  signal \dna_cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \dna_cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \dna_cnt0_carry__4_n_3\ : STD_LOGIC;
  signal \dna_cnt0_carry__5_n_0\ : STD_LOGIC;
  signal \dna_cnt0_carry__5_n_1\ : STD_LOGIC;
  signal \dna_cnt0_carry__5_n_2\ : STD_LOGIC;
  signal \dna_cnt0_carry__5_n_3\ : STD_LOGIC;
  signal \dna_cnt0_carry__6_n_2\ : STD_LOGIC;
  signal \dna_cnt0_carry__6_n_3\ : STD_LOGIC;
  signal dna_cnt0_carry_n_0 : STD_LOGIC;
  signal dna_cnt0_carry_n_1 : STD_LOGIC;
  signal dna_cnt0_carry_n_2 : STD_LOGIC;
  signal dna_cnt0_carry_n_3 : STD_LOGIC;
  signal \dna_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \dna_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \dna_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \dna_cnt[31]_i_2_n_0\ : STD_LOGIC;
  signal \dna_cnt[31]_i_3_n_0\ : STD_LOGIC;
  signal \dna_cnt[31]_i_4_n_0\ : STD_LOGIC;
  signal \dna_cnt[31]_i_5_n_0\ : STD_LOGIC;
  signal \dna_cnt[31]_i_6_n_0\ : STD_LOGIC;
  signal \dna_cnt[31]_i_7_n_0\ : STD_LOGIC;
  signal \dna_cnt[31]_i_8_n_0\ : STD_LOGIC;
  signal \dna_cnt[31]_i_9_n_0\ : STD_LOGIC;
  signal \dna_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \dna_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \dna_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal dna_dout : STD_LOGIC;
  signal dna_read : STD_LOGIC;
  signal dna_read_i_2_n_0 : STD_LOGIC;
  signal dna_read_reg0 : STD_LOGIC;
  signal dna_read_reg21_in : STD_LOGIC;
  signal \dna_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[32]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[33]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[34]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[35]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[36]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[37]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[38]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[39]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[40]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[41]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[42]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[43]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[44]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[45]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[46]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[47]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[48]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[49]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[50]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[51]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[52]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[53]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[54]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[55]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[56]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \dna_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal dna_shift : STD_LOGIC;
  signal dna_shift_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal rFPGADNA0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rFPGADNA1 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal rFPGADNA2 : STD_LOGIC;
  signal \^s_axil_arready\ : STD_LOGIC;
  signal s_axil_arready_next : STD_LOGIC;
  signal \^s_axil_awready\ : STD_LOGIC;
  signal s_axil_awready_next : STD_LOGIC;
  signal \^s_axil_bvalid\ : STD_LOGIC;
  signal s_axil_bvalid_reg_i_1_n_0 : STD_LOGIC;
  signal s_axil_rdata_reg : STD_LOGIC;
  signal \s_axil_rdata_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axil_rdata_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal s_axil_rst : STD_LOGIC;
  signal \^s_axil_rvalid\ : STD_LOGIC;
  signal s_axil_rvalid_reg_i_1_n_0 : STD_LOGIC;
  signal \NLW_dna_cnt0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_dna_cnt0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of DNA_PORT_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of s_axil_awready_reg0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axil_bvalid_reg_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axil_rdata_reg[25]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axil_rdata_reg[27]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_axil_rdata_reg[28]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axil_rdata_reg[29]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axil_rdata_reg[30]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axil_rdata_reg[31]_i_2\ : label is "soft_lutpair1";
begin
  s_axil_arready <= \^s_axil_arready\;
  s_axil_awready <= \^s_axil_awready\;
  s_axil_bvalid <= \^s_axil_bvalid\;
  s_axil_rvalid <= \^s_axil_rvalid\;
DNA_PORT_inst: unisim.vcomponents.DNA_PORT
    generic map(
      SIM_DNA_VALUE => X"010203040506070"
    )
        port map (
      CLK => s_axil_clk,
      DIN => '0',
      DOUT => dna_dout,
      READ => dna_read,
      SHIFT => dna_shift
    );
dna_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dna_cnt0_carry_n_0,
      CO(2) => dna_cnt0_carry_n_1,
      CO(1) => dna_cnt0_carry_n_2,
      CO(0) => dna_cnt0_carry_n_3,
      CYINIT => dna_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3 downto 0) => dna_cnt(4 downto 1)
    );
\dna_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dna_cnt0_carry_n_0,
      CO(3) => \dna_cnt0_carry__0_n_0\,
      CO(2) => \dna_cnt0_carry__0_n_1\,
      CO(1) => \dna_cnt0_carry__0_n_2\,
      CO(0) => \dna_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3 downto 0) => dna_cnt(8 downto 5)
    );
\dna_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dna_cnt0_carry__0_n_0\,
      CO(3) => \dna_cnt0_carry__1_n_0\,
      CO(2) => \dna_cnt0_carry__1_n_1\,
      CO(1) => \dna_cnt0_carry__1_n_2\,
      CO(0) => \dna_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3 downto 0) => dna_cnt(12 downto 9)
    );
\dna_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dna_cnt0_carry__1_n_0\,
      CO(3) => \dna_cnt0_carry__2_n_0\,
      CO(2) => \dna_cnt0_carry__2_n_1\,
      CO(1) => \dna_cnt0_carry__2_n_2\,
      CO(0) => \dna_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(16 downto 13),
      S(3 downto 0) => dna_cnt(16 downto 13)
    );
\dna_cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \dna_cnt0_carry__2_n_0\,
      CO(3) => \dna_cnt0_carry__3_n_0\,
      CO(2) => \dna_cnt0_carry__3_n_1\,
      CO(1) => \dna_cnt0_carry__3_n_2\,
      CO(0) => \dna_cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(20 downto 17),
      S(3 downto 0) => dna_cnt(20 downto 17)
    );
\dna_cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \dna_cnt0_carry__3_n_0\,
      CO(3) => \dna_cnt0_carry__4_n_0\,
      CO(2) => \dna_cnt0_carry__4_n_1\,
      CO(1) => \dna_cnt0_carry__4_n_2\,
      CO(0) => \dna_cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(24 downto 21),
      S(3 downto 0) => dna_cnt(24 downto 21)
    );
\dna_cnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \dna_cnt0_carry__4_n_0\,
      CO(3) => \dna_cnt0_carry__5_n_0\,
      CO(2) => \dna_cnt0_carry__5_n_1\,
      CO(1) => \dna_cnt0_carry__5_n_2\,
      CO(0) => \dna_cnt0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(28 downto 25),
      S(3 downto 0) => dna_cnt(28 downto 25)
    );
\dna_cnt0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \dna_cnt0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_dna_cnt0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \dna_cnt0_carry__6_n_2\,
      CO(0) => \dna_cnt0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_dna_cnt0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => p_1_in(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => dna_cnt(31 downto 29)
    );
\dna_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555557"
    )
        port map (
      I0 => dna_cnt(0),
      I1 => \dna_cnt[31]_i_2_n_0\,
      I2 => \dna_cnt[31]_i_3_n_0\,
      I3 => \dna_cnt[31]_i_4_n_0\,
      I4 => \dna_cnt[31]_i_5_n_0\,
      O => \dna_cnt[0]_i_1_n_0\
    );
\dna_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => p_1_in(1),
      I1 => \dna_cnt[31]_i_2_n_0\,
      I2 => \dna_cnt[31]_i_3_n_0\,
      I3 => \dna_cnt[31]_i_4_n_0\,
      I4 => \dna_cnt[31]_i_5_n_0\,
      O => \dna_cnt[1]_i_1_n_0\
    );
\dna_cnt[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \dna_cnt[31]_i_2_n_0\,
      I1 => \dna_cnt[31]_i_3_n_0\,
      I2 => \dna_cnt[31]_i_4_n_0\,
      I3 => \dna_cnt[31]_i_5_n_0\,
      I4 => s_axil_rstn,
      O => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => dna_cnt(20),
      I1 => dna_cnt(21),
      I2 => dna_cnt(18),
      I3 => dna_cnt(19),
      I4 => \dna_cnt[31]_i_6_n_0\,
      O => \dna_cnt[31]_i_2_n_0\
    );
\dna_cnt[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => dna_cnt(12),
      I1 => dna_cnt(13),
      I2 => dna_cnt(10),
      I3 => dna_cnt(11),
      I4 => \dna_cnt[31]_i_7_n_0\,
      O => \dna_cnt[31]_i_3_n_0\
    );
\dna_cnt[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => dna_cnt(31),
      I1 => dna_cnt(30),
      I2 => dna_cnt(2),
      I3 => \dna_cnt[31]_i_8_n_0\,
      I4 => \dna_cnt[31]_i_9_n_0\,
      O => \dna_cnt[31]_i_4_n_0\
    );
\dna_cnt[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => dna_cnt(0),
      I1 => dna_cnt(4),
      I2 => dna_cnt(5),
      I3 => dna_cnt(3),
      I4 => dna_cnt(1),
      O => \dna_cnt[31]_i_5_n_0\
    );
\dna_cnt[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => dna_cnt(23),
      I1 => dna_cnt(22),
      I2 => dna_cnt(25),
      I3 => dna_cnt(24),
      O => \dna_cnt[31]_i_6_n_0\
    );
\dna_cnt[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => dna_cnt(15),
      I1 => dna_cnt(14),
      I2 => dna_cnt(17),
      I3 => dna_cnt(16),
      O => \dna_cnt[31]_i_7_n_0\
    );
\dna_cnt[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => dna_cnt(27),
      I1 => dna_cnt(26),
      I2 => dna_cnt(29),
      I3 => dna_cnt(28),
      O => \dna_cnt[31]_i_8_n_0\
    );
\dna_cnt[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => dna_cnt(7),
      I1 => dna_cnt(6),
      I2 => dna_cnt(9),
      I3 => dna_cnt(8),
      O => \dna_cnt[31]_i_9_n_0\
    );
\dna_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => p_1_in(3),
      I1 => \dna_cnt[31]_i_2_n_0\,
      I2 => \dna_cnt[31]_i_3_n_0\,
      I3 => \dna_cnt[31]_i_4_n_0\,
      I4 => \dna_cnt[31]_i_5_n_0\,
      O => \dna_cnt[3]_i_1_n_0\
    );
\dna_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => p_1_in(4),
      I1 => \dna_cnt[31]_i_2_n_0\,
      I2 => \dna_cnt[31]_i_3_n_0\,
      I3 => \dna_cnt[31]_i_4_n_0\,
      I4 => \dna_cnt[31]_i_5_n_0\,
      O => \dna_cnt[4]_i_1_n_0\
    );
\dna_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => p_1_in(5),
      I1 => \dna_cnt[31]_i_2_n_0\,
      I2 => \dna_cnt[31]_i_3_n_0\,
      I3 => \dna_cnt[31]_i_4_n_0\,
      I4 => \dna_cnt[31]_i_5_n_0\,
      O => \dna_cnt[5]_i_1_n_0\
    );
\dna_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_cnt[0]_i_1_n_0\,
      Q => dna_cnt(0),
      R => s_axil_rst
    );
\dna_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(10),
      Q => dna_cnt(10),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(11),
      Q => dna_cnt(11),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(12),
      Q => dna_cnt(12),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(13),
      Q => dna_cnt(13),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(14),
      Q => dna_cnt(14),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(15),
      Q => dna_cnt(15),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(16),
      Q => dna_cnt(16),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(17),
      Q => dna_cnt(17),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(18),
      Q => dna_cnt(18),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(19),
      Q => dna_cnt(19),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_cnt[1]_i_1_n_0\,
      Q => dna_cnt(1),
      R => s_axil_rst
    );
\dna_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(20),
      Q => dna_cnt(20),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(21),
      Q => dna_cnt(21),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(22),
      Q => dna_cnt(22),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(23),
      Q => dna_cnt(23),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(24),
      Q => dna_cnt(24),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(25),
      Q => dna_cnt(25),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(26),
      Q => dna_cnt(26),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(27),
      Q => dna_cnt(27),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(28),
      Q => dna_cnt(28),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(29),
      Q => dna_cnt(29),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(2),
      Q => dna_cnt(2),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(30),
      Q => dna_cnt(30),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(31),
      Q => dna_cnt(31),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_cnt[3]_i_1_n_0\,
      Q => dna_cnt(3),
      R => s_axil_rst
    );
\dna_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_cnt[4]_i_1_n_0\,
      Q => dna_cnt(4),
      R => s_axil_rst
    );
\dna_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_cnt[5]_i_1_n_0\,
      Q => dna_cnt(5),
      R => s_axil_rst
    );
\dna_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(6),
      Q => dna_cnt(6),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(7),
      Q => dna_cnt(7),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(8),
      Q => dna_cnt(8),
      R => \dna_cnt[31]_i_1_n_0\
    );
\dna_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => p_1_in(9),
      Q => dna_cnt(9),
      R => \dna_cnt[31]_i_1_n_0\
    );
dna_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => dna_read_i_2_n_0,
      I1 => \dna_cnt[31]_i_4_n_0\,
      I2 => \dna_cnt[31]_i_3_n_0\,
      I3 => \dna_cnt[31]_i_2_n_0\,
      O => dna_read_reg0
    );
dna_read_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => dna_cnt(3),
      I1 => dna_cnt(4),
      I2 => dna_cnt(0),
      I3 => dna_cnt(1),
      I4 => dna_cnt(5),
      I5 => s_axil_rstn,
      O => dna_read_i_2_n_0
    );
dna_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => dna_read_reg0,
      Q => dna_read,
      R => '0'
    );
\dna_reg[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \dna_cnt[31]_i_5_n_0\,
      I1 => \dna_cnt[31]_i_4_n_0\,
      I2 => \dna_cnt[31]_i_3_n_0\,
      I3 => \dna_cnt[31]_i_2_n_0\,
      O => dna_read_reg21_in
    );
\dna_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => dna_dout,
      Q => \dna_reg_reg_n_0_[0]\,
      R => s_axil_rst
    );
\dna_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[9]\,
      Q => \dna_reg_reg_n_0_[10]\,
      R => s_axil_rst
    );
\dna_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[10]\,
      Q => \dna_reg_reg_n_0_[11]\,
      R => s_axil_rst
    );
\dna_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[11]\,
      Q => \dna_reg_reg_n_0_[12]\,
      R => s_axil_rst
    );
\dna_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[12]\,
      Q => \dna_reg_reg_n_0_[13]\,
      R => s_axil_rst
    );
\dna_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[13]\,
      Q => \dna_reg_reg_n_0_[14]\,
      R => s_axil_rst
    );
\dna_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[14]\,
      Q => \dna_reg_reg_n_0_[15]\,
      R => s_axil_rst
    );
\dna_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[15]\,
      Q => \dna_reg_reg_n_0_[16]\,
      R => s_axil_rst
    );
\dna_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[16]\,
      Q => \dna_reg_reg_n_0_[17]\,
      R => s_axil_rst
    );
\dna_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[17]\,
      Q => \dna_reg_reg_n_0_[18]\,
      R => s_axil_rst
    );
\dna_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[18]\,
      Q => \dna_reg_reg_n_0_[19]\,
      R => s_axil_rst
    );
\dna_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[0]\,
      Q => \dna_reg_reg_n_0_[1]\,
      R => s_axil_rst
    );
\dna_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[19]\,
      Q => \dna_reg_reg_n_0_[20]\,
      R => s_axil_rst
    );
\dna_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[20]\,
      Q => \dna_reg_reg_n_0_[21]\,
      R => s_axil_rst
    );
\dna_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[21]\,
      Q => \dna_reg_reg_n_0_[22]\,
      R => s_axil_rst
    );
\dna_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[22]\,
      Q => \dna_reg_reg_n_0_[23]\,
      R => s_axil_rst
    );
\dna_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[23]\,
      Q => \dna_reg_reg_n_0_[24]\,
      R => s_axil_rst
    );
\dna_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[24]\,
      Q => \dna_reg_reg_n_0_[25]\,
      R => s_axil_rst
    );
\dna_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[25]\,
      Q => \dna_reg_reg_n_0_[26]\,
      R => s_axil_rst
    );
\dna_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[26]\,
      Q => \dna_reg_reg_n_0_[27]\,
      R => s_axil_rst
    );
\dna_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[27]\,
      Q => \dna_reg_reg_n_0_[28]\,
      R => s_axil_rst
    );
\dna_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[28]\,
      Q => \dna_reg_reg_n_0_[29]\,
      R => s_axil_rst
    );
\dna_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[1]\,
      Q => \dna_reg_reg_n_0_[2]\,
      R => s_axil_rst
    );
\dna_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[29]\,
      Q => \dna_reg_reg_n_0_[30]\,
      R => s_axil_rst
    );
\dna_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[30]\,
      Q => \dna_reg_reg_n_0_[31]\,
      R => s_axil_rst
    );
\dna_reg_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[31]\,
      Q => \dna_reg_reg_n_0_[32]\,
      R => s_axil_rst
    );
\dna_reg_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[32]\,
      Q => \dna_reg_reg_n_0_[33]\,
      R => s_axil_rst
    );
\dna_reg_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[33]\,
      Q => \dna_reg_reg_n_0_[34]\,
      R => s_axil_rst
    );
\dna_reg_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[34]\,
      Q => \dna_reg_reg_n_0_[35]\,
      R => s_axil_rst
    );
\dna_reg_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[35]\,
      Q => \dna_reg_reg_n_0_[36]\,
      R => s_axil_rst
    );
\dna_reg_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[36]\,
      Q => \dna_reg_reg_n_0_[37]\,
      R => s_axil_rst
    );
\dna_reg_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[37]\,
      Q => \dna_reg_reg_n_0_[38]\,
      R => s_axil_rst
    );
\dna_reg_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[38]\,
      Q => \dna_reg_reg_n_0_[39]\,
      R => s_axil_rst
    );
\dna_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[2]\,
      Q => \dna_reg_reg_n_0_[3]\,
      R => s_axil_rst
    );
\dna_reg_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[39]\,
      Q => \dna_reg_reg_n_0_[40]\,
      R => s_axil_rst
    );
\dna_reg_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[40]\,
      Q => \dna_reg_reg_n_0_[41]\,
      R => s_axil_rst
    );
\dna_reg_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[41]\,
      Q => \dna_reg_reg_n_0_[42]\,
      R => s_axil_rst
    );
\dna_reg_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[42]\,
      Q => \dna_reg_reg_n_0_[43]\,
      R => s_axil_rst
    );
\dna_reg_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[43]\,
      Q => \dna_reg_reg_n_0_[44]\,
      R => s_axil_rst
    );
\dna_reg_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[44]\,
      Q => \dna_reg_reg_n_0_[45]\,
      R => s_axil_rst
    );
\dna_reg_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[45]\,
      Q => \dna_reg_reg_n_0_[46]\,
      R => s_axil_rst
    );
\dna_reg_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[46]\,
      Q => \dna_reg_reg_n_0_[47]\,
      R => s_axil_rst
    );
\dna_reg_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[47]\,
      Q => \dna_reg_reg_n_0_[48]\,
      R => s_axil_rst
    );
\dna_reg_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[48]\,
      Q => \dna_reg_reg_n_0_[49]\,
      R => s_axil_rst
    );
\dna_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[3]\,
      Q => \dna_reg_reg_n_0_[4]\,
      R => s_axil_rst
    );
\dna_reg_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[49]\,
      Q => \dna_reg_reg_n_0_[50]\,
      R => s_axil_rst
    );
\dna_reg_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[50]\,
      Q => \dna_reg_reg_n_0_[51]\,
      R => s_axil_rst
    );
\dna_reg_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[51]\,
      Q => \dna_reg_reg_n_0_[52]\,
      R => s_axil_rst
    );
\dna_reg_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[52]\,
      Q => \dna_reg_reg_n_0_[53]\,
      R => s_axil_rst
    );
\dna_reg_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[53]\,
      Q => \dna_reg_reg_n_0_[54]\,
      R => s_axil_rst
    );
\dna_reg_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[54]\,
      Q => \dna_reg_reg_n_0_[55]\,
      R => s_axil_rst
    );
\dna_reg_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[55]\,
      Q => \dna_reg_reg_n_0_[56]\,
      R => s_axil_rst
    );
\dna_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[4]\,
      Q => \dna_reg_reg_n_0_[5]\,
      R => s_axil_rst
    );
\dna_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[5]\,
      Q => \dna_reg_reg_n_0_[6]\,
      R => s_axil_rst
    );
\dna_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[6]\,
      Q => \dna_reg_reg_n_0_[7]\,
      R => s_axil_rst
    );
\dna_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[7]\,
      Q => \dna_reg_reg_n_0_[8]\,
      R => s_axil_rst
    );
\dna_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => dna_read_reg21_in,
      D => \dna_reg_reg_n_0_[8]\,
      Q => \dna_reg_reg_n_0_[9]\,
      R => s_axil_rst
    );
dna_shift_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => s_axil_rstn,
      I1 => \dna_cnt[31]_i_5_n_0\,
      I2 => \dna_cnt[31]_i_4_n_0\,
      I3 => \dna_cnt[31]_i_3_n_0\,
      I4 => \dna_cnt[31]_i_2_n_0\,
      O => dna_shift_i_1_n_0
    );
dna_shift_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => dna_shift_i_1_n_0,
      Q => dna_shift,
      R => '0'
    );
\rFPGADNA0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[0]\,
      Q => rFPGADNA0(0),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[10]\,
      Q => rFPGADNA0(10),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[11]\,
      Q => rFPGADNA0(11),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[12]\,
      Q => rFPGADNA0(12),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[13]\,
      Q => rFPGADNA0(13),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[14]\,
      Q => rFPGADNA0(14),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[15]\,
      Q => rFPGADNA0(15),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[16]\,
      Q => rFPGADNA0(16),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[17]\,
      Q => rFPGADNA0(17),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[18]\,
      Q => rFPGADNA0(18),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[19]\,
      Q => rFPGADNA0(19),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[1]\,
      Q => rFPGADNA0(1),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[20]\,
      Q => rFPGADNA0(20),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[21]\,
      Q => rFPGADNA0(21),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[22]\,
      Q => rFPGADNA0(22),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[23]\,
      Q => rFPGADNA0(23),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[24]\,
      Q => rFPGADNA0(24),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[25]\,
      Q => rFPGADNA0(25),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[26]\,
      Q => rFPGADNA0(26),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[27]\,
      Q => rFPGADNA0(27),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[28]\,
      Q => rFPGADNA0(28),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[29]\,
      Q => rFPGADNA0(29),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[2]\,
      Q => rFPGADNA0(2),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[30]\,
      Q => rFPGADNA0(30),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[31]\,
      Q => rFPGADNA0(31),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[3]\,
      Q => rFPGADNA0(3),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[4]\,
      Q => rFPGADNA0(4),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[5]\,
      Q => rFPGADNA0(5),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[6]\,
      Q => rFPGADNA0(6),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[7]\,
      Q => rFPGADNA0(7),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[8]\,
      Q => rFPGADNA0(8),
      R => rFPGADNA2
    );
\rFPGADNA0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[9]\,
      Q => rFPGADNA0(9),
      R => rFPGADNA2
    );
\rFPGADNA1[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \dna_cnt[31]_i_2_n_0\,
      I1 => \dna_cnt[31]_i_3_n_0\,
      I2 => \dna_cnt[31]_i_4_n_0\,
      I3 => \dna_cnt[31]_i_5_n_0\,
      I4 => s_axil_rstn,
      O => rFPGADNA2
    );
\rFPGADNA1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[32]\,
      Q => rFPGADNA1(0),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[42]\,
      Q => rFPGADNA1(10),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[43]\,
      Q => rFPGADNA1(11),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[44]\,
      Q => rFPGADNA1(12),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[45]\,
      Q => rFPGADNA1(13),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[46]\,
      Q => rFPGADNA1(14),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[47]\,
      Q => rFPGADNA1(15),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[48]\,
      Q => rFPGADNA1(16),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[49]\,
      Q => rFPGADNA1(17),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[50]\,
      Q => rFPGADNA1(18),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[51]\,
      Q => rFPGADNA1(19),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[33]\,
      Q => rFPGADNA1(1),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[52]\,
      Q => rFPGADNA1(20),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[53]\,
      Q => rFPGADNA1(21),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[54]\,
      Q => rFPGADNA1(22),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[55]\,
      Q => rFPGADNA1(23),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[56]\,
      Q => rFPGADNA1(24),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[34]\,
      Q => rFPGADNA1(2),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[35]\,
      Q => rFPGADNA1(3),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[36]\,
      Q => rFPGADNA1(4),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[37]\,
      Q => rFPGADNA1(5),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[38]\,
      Q => rFPGADNA1(6),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[39]\,
      Q => rFPGADNA1(7),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[40]\,
      Q => rFPGADNA1(8),
      R => rFPGADNA2
    );
\rFPGADNA1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axil_clk,
      CE => '1',
      D => \dna_reg_reg_n_0_[41]\,
      Q => rFPGADNA1(9),
      R => rFPGADNA2
    );
s_axil_arready_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => \^s_axil_arready\,
      I1 => s_axil_arvalid,
      I2 => \^s_axil_rvalid\,
      I3 => s_axil_rready,
      O => s_axil_arready_next
    );
s_axil_arready_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => '1',
      D => s_axil_arready_next,
      Q => \^s_axil_arready\,
      R => s_axil_rst
    );
s_axil_awready_reg0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => s_axil_wvalid,
      I1 => s_axil_awvalid,
      I2 => s_axil_bready,
      I3 => \^s_axil_bvalid\,
      I4 => \^s_axil_awready\,
      O => s_axil_awready_next
    );
s_axil_awready_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axil_rstn,
      O => s_axil_rst
    );
s_axil_awready_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => '1',
      D => s_axil_awready_next,
      Q => \^s_axil_awready\,
      R => s_axil_rst
    );
s_axil_bvalid_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D0C0C0C"
    )
        port map (
      I0 => \^s_axil_awready\,
      I1 => \^s_axil_bvalid\,
      I2 => s_axil_bready,
      I3 => s_axil_awvalid,
      I4 => s_axil_wvalid,
      O => s_axil_bvalid_reg_i_1_n_0
    );
s_axil_bvalid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => '1',
      D => s_axil_bvalid_reg_i_1_n_0,
      Q => \^s_axil_bvalid\,
      R => s_axil_rst
    );
\s_axil_rdata_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDCEEDC"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => rFPGADNA0(0),
      I3 => s_axil_araddr(0),
      I4 => rFPGADNA1(0),
      O => \s_axil_rdata_reg[0]_i_1_n_0\
    );
\s_axil_rdata_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(10),
      I4 => rFPGADNA0(10),
      O => \s_axil_rdata_reg[10]_i_1_n_0\
    );
\s_axil_rdata_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(11),
      I4 => rFPGADNA0(11),
      O => \s_axil_rdata_reg[11]_i_1_n_0\
    );
\s_axil_rdata_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(12),
      I4 => rFPGADNA0(12),
      O => \s_axil_rdata_reg[12]_i_1_n_0\
    );
\s_axil_rdata_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(13),
      I4 => rFPGADNA0(13),
      O => \s_axil_rdata_reg[13]_i_1_n_0\
    );
\s_axil_rdata_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(14),
      I4 => rFPGADNA0(14),
      O => \s_axil_rdata_reg[14]_i_1_n_0\
    );
\s_axil_rdata_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(15),
      I4 => rFPGADNA0(15),
      O => \s_axil_rdata_reg[15]_i_1_n_0\
    );
\s_axil_rdata_reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(16),
      I4 => rFPGADNA0(16),
      O => \s_axil_rdata_reg[16]_i_1_n_0\
    );
\s_axil_rdata_reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(17),
      I4 => rFPGADNA0(17),
      O => \s_axil_rdata_reg[17]_i_1_n_0\
    );
\s_axil_rdata_reg[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(18),
      I4 => rFPGADNA0(18),
      O => \s_axil_rdata_reg[18]_i_1_n_0\
    );
\s_axil_rdata_reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(19),
      I4 => rFPGADNA0(19),
      O => \s_axil_rdata_reg[19]_i_1_n_0\
    );
\s_axil_rdata_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDCEEDC"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => rFPGADNA0(1),
      I3 => s_axil_araddr(0),
      I4 => rFPGADNA1(1),
      O => \s_axil_rdata_reg[1]_i_1_n_0\
    );
\s_axil_rdata_reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(20),
      I4 => rFPGADNA0(20),
      O => \s_axil_rdata_reg[20]_i_1_n_0\
    );
\s_axil_rdata_reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(21),
      I4 => rFPGADNA0(21),
      O => \s_axil_rdata_reg[21]_i_1_n_0\
    );
\s_axil_rdata_reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(22),
      I4 => rFPGADNA0(22),
      O => \s_axil_rdata_reg[22]_i_1_n_0\
    );
\s_axil_rdata_reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(23),
      I4 => rFPGADNA0(23),
      O => \s_axil_rdata_reg[23]_i_1_n_0\
    );
\s_axil_rdata_reg[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(24),
      I4 => rFPGADNA0(24),
      O => \s_axil_rdata_reg[24]_i_1_n_0\
    );
\s_axil_rdata_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA0(25),
      O => \s_axil_rdata_reg[25]_i_1_n_0\
    );
\s_axil_rdata_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA0(26),
      O => \s_axil_rdata_reg[26]_i_1_n_0\
    );
\s_axil_rdata_reg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA0(27),
      O => \s_axil_rdata_reg[27]_i_1_n_0\
    );
\s_axil_rdata_reg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA0(28),
      O => \s_axil_rdata_reg[28]_i_1_n_0\
    );
\s_axil_rdata_reg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA0(29),
      O => \s_axil_rdata_reg[29]_i_1_n_0\
    );
\s_axil_rdata_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDCEEDC"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => rFPGADNA0(2),
      I3 => s_axil_araddr(0),
      I4 => rFPGADNA1(2),
      O => \s_axil_rdata_reg[2]_i_1_n_0\
    );
\s_axil_rdata_reg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA0(30),
      O => \s_axil_rdata_reg[30]_i_1_n_0\
    );
\s_axil_rdata_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B00000"
    )
        port map (
      I0 => s_axil_rready,
      I1 => \^s_axil_rvalid\,
      I2 => s_axil_arvalid,
      I3 => \^s_axil_arready\,
      I4 => \s_axil_rdata_reg[31]_i_3_n_0\,
      O => s_axil_rdata_reg
    );
\s_axil_rdata_reg[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA0(31),
      O => \s_axil_rdata_reg[31]_i_2_n_0\
    );
\s_axil_rdata_reg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => s_axil_araddr(6),
      I1 => s_axil_araddr(7),
      I2 => s_axil_araddr(4),
      I3 => s_axil_araddr(5),
      I4 => s_axil_araddr(3),
      I5 => s_axil_araddr(2),
      O => \s_axil_rdata_reg[31]_i_3_n_0\
    );
\s_axil_rdata_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(3),
      I4 => rFPGADNA0(3),
      O => \s_axil_rdata_reg[3]_i_1_n_0\
    );
\s_axil_rdata_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(4),
      I4 => rFPGADNA0(4),
      O => \s_axil_rdata_reg[4]_i_1_n_0\
    );
\s_axil_rdata_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(5),
      I4 => rFPGADNA0(5),
      O => \s_axil_rdata_reg[5]_i_1_n_0\
    );
\s_axil_rdata_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(6),
      I4 => rFPGADNA0(6),
      O => \s_axil_rdata_reg[6]_i_1_n_0\
    );
\s_axil_rdata_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(7),
      I4 => rFPGADNA0(7),
      O => \s_axil_rdata_reg[7]_i_1_n_0\
    );
\s_axil_rdata_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(8),
      I4 => rFPGADNA0(8),
      O => \s_axil_rdata_reg[8]_i_1_n_0\
    );
\s_axil_rdata_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => s_axil_araddr(1),
      I1 => \s_axil_rdata_reg[31]_i_3_n_0\,
      I2 => s_axil_araddr(0),
      I3 => rFPGADNA1(9),
      I4 => rFPGADNA0(9),
      O => \s_axil_rdata_reg[9]_i_1_n_0\
    );
\s_axil_rdata_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[0]_i_1_n_0\,
      Q => s_axil_rdata(0),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[10]_i_1_n_0\,
      Q => s_axil_rdata(10),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[11]_i_1_n_0\,
      Q => s_axil_rdata(11),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[12]_i_1_n_0\,
      Q => s_axil_rdata(12),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[13]_i_1_n_0\,
      Q => s_axil_rdata(13),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[14]_i_1_n_0\,
      Q => s_axil_rdata(14),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[15]_i_1_n_0\,
      Q => s_axil_rdata(15),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[16]_i_1_n_0\,
      Q => s_axil_rdata(16),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[17]_i_1_n_0\,
      Q => s_axil_rdata(17),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[18]_i_1_n_0\,
      Q => s_axil_rdata(18),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[19]_i_1_n_0\,
      Q => s_axil_rdata(19),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[1]_i_1_n_0\,
      Q => s_axil_rdata(1),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[20]_i_1_n_0\,
      Q => s_axil_rdata(20),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[21]_i_1_n_0\,
      Q => s_axil_rdata(21),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[22]_i_1_n_0\,
      Q => s_axil_rdata(22),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[23]_i_1_n_0\,
      Q => s_axil_rdata(23),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[24]_i_1_n_0\,
      Q => s_axil_rdata(24),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[25]_i_1_n_0\,
      Q => s_axil_rdata(25),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[26]_i_1_n_0\,
      Q => s_axil_rdata(26),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[27]_i_1_n_0\,
      Q => s_axil_rdata(27),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[28]_i_1_n_0\,
      Q => s_axil_rdata(28),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[29]_i_1_n_0\,
      Q => s_axil_rdata(29),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[2]_i_1_n_0\,
      Q => s_axil_rdata(2),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[30]_i_1_n_0\,
      Q => s_axil_rdata(30),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[31]_i_2_n_0\,
      Q => s_axil_rdata(31),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[3]_i_1_n_0\,
      Q => s_axil_rdata(3),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[4]_i_1_n_0\,
      Q => s_axil_rdata(4),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[5]_i_1_n_0\,
      Q => s_axil_rdata(5),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[6]_i_1_n_0\,
      Q => s_axil_rdata(6),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[7]_i_1_n_0\,
      Q => s_axil_rdata(7),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[8]_i_1_n_0\,
      Q => s_axil_rdata(8),
      R => s_axil_rdata_reg
    );
\s_axil_rdata_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => s_axil_arready_next,
      D => \s_axil_rdata_reg[9]_i_1_n_0\,
      Q => s_axil_rdata(9),
      R => s_axil_rdata_reg
    );
s_axil_rvalid_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => s_axil_arvalid,
      I1 => \^s_axil_arready\,
      I2 => \^s_axil_rvalid\,
      I3 => s_axil_rready,
      O => s_axil_rvalid_reg_i_1_n_0
    );
s_axil_rvalid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axil_clk,
      CE => '1',
      D => s_axil_rvalid_reg_i_1_n_0,
      Q => \^s_axil_rvalid\,
      R => s_axil_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axil_clk : in STD_LOGIC;
    s_axil_rstn : in STD_LOGIC;
    s_axil_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axil_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axil_awvalid : in STD_LOGIC;
    s_axil_awready : out STD_LOGIC;
    s_axil_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axil_wvalid : in STD_LOGIC;
    s_axil_wready : out STD_LOGIC;
    s_axil_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_bvalid : out STD_LOGIC;
    s_axil_bready : in STD_LOGIC;
    s_axil_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axil_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axil_arvalid : in STD_LOGIC;
    s_axil_arready : out STD_LOGIC;
    s_axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_rvalid : out STD_LOGIC;
    s_axil_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Adc3444_TCP_axi_dna_0_0,axi_dna,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_dna,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axil_awready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axil_arready : signal is "xilinx.com:interface:aximm:1.0 s_axil ARREADY";
  attribute X_INTERFACE_INFO of s_axil_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil ARVALID";
  attribute X_INTERFACE_INFO of s_axil_awready : signal is "xilinx.com:interface:aximm:1.0 s_axil AWREADY";
  attribute X_INTERFACE_INFO of s_axil_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil AWVALID";
  attribute X_INTERFACE_INFO of s_axil_bready : signal is "xilinx.com:interface:aximm:1.0 s_axil BREADY";
  attribute X_INTERFACE_INFO of s_axil_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil BVALID";
  attribute X_INTERFACE_INFO of s_axil_clk : signal is "xilinx.com:signal:clock:1.0 s_axil_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axil_clk : signal is "XIL_INTERFACENAME s_axil_clk, ASSOCIATED_BUSIF s_axil, ASSOCIATED_RESET s_axil_rstn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_Adc3444_top_0_1_AdcSampClk";
  attribute X_INTERFACE_INFO of s_axil_rready : signal is "xilinx.com:interface:aximm:1.0 s_axil RREADY";
  attribute X_INTERFACE_PARAMETER of s_axil_rready : signal is "XIL_INTERFACENAME s_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_Adc3444_top_0_1_AdcSampClk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s_axil_rstn : signal is "xilinx.com:signal:reset:1.0 s_axil_rstn RST";
  attribute X_INTERFACE_PARAMETER of s_axil_rstn : signal is "XIL_INTERFACENAME s_axil_rstn, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axil_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil RVALID";
  attribute X_INTERFACE_INFO of s_axil_wready : signal is "xilinx.com:interface:aximm:1.0 s_axil WREADY";
  attribute X_INTERFACE_INFO of s_axil_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil WVALID";
  attribute X_INTERFACE_INFO of s_axil_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axil ARADDR";
  attribute X_INTERFACE_INFO of s_axil_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axil ARPROT";
  attribute X_INTERFACE_INFO of s_axil_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axil AWADDR";
  attribute X_INTERFACE_INFO of s_axil_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axil AWPROT";
  attribute X_INTERFACE_INFO of s_axil_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axil BRESP";
  attribute X_INTERFACE_INFO of s_axil_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axil RDATA";
  attribute X_INTERFACE_INFO of s_axil_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axil RRESP";
  attribute X_INTERFACE_INFO of s_axil_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axil WDATA";
  attribute X_INTERFACE_INFO of s_axil_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axil WSTRB";
begin
  s_axil_awready <= \^s_axil_awready\;
  s_axil_bresp(1) <= \<const0>\;
  s_axil_bresp(0) <= \<const0>\;
  s_axil_rresp(1) <= \<const0>\;
  s_axil_rresp(0) <= \<const0>\;
  s_axil_wready <= \^s_axil_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dna
     port map (
      s_axil_araddr(7 downto 0) => s_axil_araddr(9 downto 2),
      s_axil_arready => s_axil_arready,
      s_axil_arvalid => s_axil_arvalid,
      s_axil_awready => \^s_axil_awready\,
      s_axil_awvalid => s_axil_awvalid,
      s_axil_bready => s_axil_bready,
      s_axil_bvalid => s_axil_bvalid,
      s_axil_clk => s_axil_clk,
      s_axil_rdata(31 downto 0) => s_axil_rdata(31 downto 0),
      s_axil_rready => s_axil_rready,
      s_axil_rstn => s_axil_rstn,
      s_axil_rvalid => s_axil_rvalid,
      s_axil_wvalid => s_axil_wvalid
    );
end STRUCTURE;
