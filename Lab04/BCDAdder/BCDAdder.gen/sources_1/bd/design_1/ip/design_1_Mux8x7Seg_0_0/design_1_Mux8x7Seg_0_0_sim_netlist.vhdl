-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Nov 24 15:09:46 2022
-- Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/vikto/Experiments/BCDAdder/BCDAdder.gen/sources_1/bd/design_1/ip/design_1_Mux8x7Seg_0_0/design_1_Mux8x7Seg_0_0_sim_netlist.vhdl
-- Design      : design_1_Mux8x7Seg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Mux8x7Seg_0_0_clk_divider is
  port (
    sclk : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Mux8x7Seg_0_0_clk_divider : entity is "clk_divider";
end design_1_Mux8x7Seg_0_0_clk_divider;

architecture STRUCTURE of design_1_Mux8x7Seg_0_0_clk_divider is
  signal counter : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \^sclk\ : STD_LOGIC;
  signal sclk_i_1_n_0 : STD_LOGIC;
  signal \NLW_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[16]_i_3\ : label is "soft_lutpair0";
begin
  sclk <= \^sclk\;
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => \counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \counter_reg_n_0_[4]\,
      S(2) => \counter_reg_n_0_[3]\,
      S(1) => \counter_reg_n_0_[2]\,
      S(0) => \counter_reg_n_0_[1]\
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \counter_reg_n_0_[8]\,
      S(2) => \counter_reg_n_0_[7]\,
      S(1) => \counter_reg_n_0_[6]\,
      S(0) => \counter_reg_n_0_[5]\
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \counter_reg_n_0_[12]\,
      S(2) => \counter_reg_n_0_[11]\,
      S(1) => \counter_reg_n_0_[10]\,
      S(0) => \counter_reg_n_0_[9]\
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \NLW_counter0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \counter_reg_n_0_[16]\,
      S(2) => \counter_reg_n_0_[15]\,
      S(1) => \counter_reg_n_0_[14]\,
      S(0) => \counter_reg_n_0_[13]\
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => counter(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(10),
      O => counter(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(11),
      O => counter(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(12),
      O => counter(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(13),
      O => counter(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(14),
      O => counter(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(15),
      O => counter(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(16),
      O => counter(16)
    );
\counter[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \counter_reg_n_0_[4]\,
      I1 => \counter_reg_n_0_[3]\,
      I2 => \counter_reg_n_0_[5]\,
      I3 => \counter_reg_n_0_[6]\,
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \counter_reg_n_0_[15]\,
      I2 => \counter_reg_n_0_[16]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[1]\,
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[12]\,
      I1 => \counter_reg_n_0_[11]\,
      I2 => \counter_reg_n_0_[14]\,
      I3 => \counter_reg_n_0_[13]\,
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[7]\,
      I1 => \counter_reg_n_0_[8]\,
      I2 => \counter_reg_n_0_[10]\,
      I3 => \counter_reg_n_0_[9]\,
      O => \counter[16]_i_5_n_0\
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(1),
      O => counter(1)
    );
\counter[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(2),
      O => counter(2)
    );
\counter[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(3),
      O => counter(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(4),
      O => counter(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(5),
      O => counter(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(6),
      O => counter(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(7),
      O => counter(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(8),
      O => counter(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => data0(9),
      O => counter(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => counter(0),
      PRE => RESET,
      Q => \counter_reg_n_0_[0]\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(10),
      Q => \counter_reg_n_0_[10]\
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(11),
      Q => \counter_reg_n_0_[11]\
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(12),
      Q => \counter_reg_n_0_[12]\
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(13),
      Q => \counter_reg_n_0_[13]\
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(14),
      Q => \counter_reg_n_0_[14]\
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(15),
      Q => \counter_reg_n_0_[15]\
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(16),
      Q => \counter_reg_n_0_[16]\
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(1),
      Q => \counter_reg_n_0_[1]\
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(2),
      Q => \counter_reg_n_0_[2]\
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(3),
      Q => \counter_reg_n_0_[3]\
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(4),
      Q => \counter_reg_n_0_[4]\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(5),
      Q => \counter_reg_n_0_[5]\
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(6),
      Q => \counter_reg_n_0_[6]\
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(7),
      Q => \counter_reg_n_0_[7]\
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(8),
      Q => \counter_reg_n_0_[8]\
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => counter(9),
      Q => \counter_reg_n_0_[9]\
    );
sclk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => \^sclk\,
      O => sclk_i_1_n_0
    );
sclk_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => sclk_i_1_n_0,
      Q => \^sclk\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Mux8x7Seg_0_0_decoder_4bit_to_7seg is
  port (
    SEG : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Mux8x7Seg_0_0_decoder_4bit_to_7seg : entity is "decoder_4bit_to_7seg";
end design_1_Mux8x7Seg_0_0_decoder_4bit_to_7seg;

architecture STRUCTURE of design_1_Mux8x7Seg_0_0_decoder_4bit_to_7seg is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SEG[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SEG[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SEG[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \SEG[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \SEG[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \SEG[5]_INST_0\ : label is "soft_lutpair3";
begin
\SEG[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => SEG(0)
    );
\SEG[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      O => SEG(1)
    );
\SEG[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => SEG(2)
    );
\SEG[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C234"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => SEG(3)
    );
\SEG[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => SEG(4)
    );
\SEG[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => SEG(5)
    );
\SEG[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      O => SEG(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Mux8x7Seg_0_0_mux_8x7seg is
  port (
    SEG : out STD_LOGIC_VECTOR ( 6 downto 0 );
    AN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RESET : in STD_LOGIC;
    CLK : in STD_LOGIC;
    d7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d6 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d0 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Mux8x7Seg_0_0_mux_8x7seg : entity is "mux_8x7seg";
end design_1_Mux8x7Seg_0_0_mux_8x7seg;

architecture STRUCTURE of design_1_Mux8x7Seg_0_0_mux_8x7seg is
  signal \^an\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \AN[0]_i_1_n_0\ : STD_LOGIC;
  signal \AN[1]_i_1_n_0\ : STD_LOGIC;
  signal \AN[2]_i_1_n_0\ : STD_LOGIC;
  signal \AN[3]_i_1_n_0\ : STD_LOGIC;
  signal \AN[4]_i_1_n_0\ : STD_LOGIC;
  signal \AN[5]_i_1_n_0\ : STD_LOGIC;
  signal \AN[6]_i_1_n_0\ : STD_LOGIC;
  signal \AN[7]_i_1_n_0\ : STD_LOGIC;
  signal \AN[7]_i_2_n_0\ : STD_LOGIC;
  signal \AN[7]_i_3_n_0\ : STD_LOGIC;
  signal bcd : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bcd[0]_i_3_n_0\ : STD_LOGIC;
  signal \bcd[0]_i_4_n_0\ : STD_LOGIC;
  signal \bcd[1]_i_3_n_0\ : STD_LOGIC;
  signal \bcd[1]_i_4_n_0\ : STD_LOGIC;
  signal \bcd[2]_i_3_n_0\ : STD_LOGIC;
  signal \bcd[2]_i_4_n_0\ : STD_LOGIC;
  signal \bcd[3]_i_3_n_0\ : STD_LOGIC;
  signal \bcd[3]_i_4_n_0\ : STD_LOGIC;
  signal bcd_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bcd_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \bcd_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal sclk : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \AN[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \AN[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \AN[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \AN[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \AN[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \AN[7]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair4";
begin
  AN(7 downto 0) <= \^an\(7 downto 0);
\AN[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFCAAAAFFFF"
    )
        port map (
      I0 => \^an\(0),
      I1 => counter(2),
      I2 => counter(1),
      I3 => counter(0),
      I4 => RESET,
      I5 => counter(3),
      O => \AN[0]_i_1_n_0\
    );
\AN[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      O => \AN[1]_i_1_n_0\
    );
\AN[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      O => \AN[2]_i_1_n_0\
    );
\AN[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      I2 => counter(2),
      O => \AN[3]_i_1_n_0\
    );
\AN[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      I2 => counter(2),
      O => \AN[4]_i_1_n_0\
    );
\AN[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      O => \AN[5]_i_1_n_0\
    );
\AN[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      O => \AN[6]_i_1_n_0\
    );
\AN[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(3),
      I1 => RESET,
      O => \AN[7]_i_1_n_0\
    );
\AN[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RESET,
      O => \AN[7]_i_2_n_0\
    );
\AN[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      I2 => counter(2),
      O => \AN[7]_i_3_n_0\
    );
\AN_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \AN[0]_i_1_n_0\,
      Q => \^an\(0),
      R => '0'
    );
\AN_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => sclk,
      CE => \AN[7]_i_2_n_0\,
      D => \AN[1]_i_1_n_0\,
      Q => \^an\(1),
      S => \AN[7]_i_1_n_0\
    );
\AN_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => sclk,
      CE => \AN[7]_i_2_n_0\,
      D => \AN[2]_i_1_n_0\,
      Q => \^an\(2),
      S => \AN[7]_i_1_n_0\
    );
\AN_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => sclk,
      CE => \AN[7]_i_2_n_0\,
      D => \AN[3]_i_1_n_0\,
      Q => \^an\(3),
      S => \AN[7]_i_1_n_0\
    );
\AN_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => sclk,
      CE => \AN[7]_i_2_n_0\,
      D => \AN[4]_i_1_n_0\,
      Q => \^an\(4),
      S => \AN[7]_i_1_n_0\
    );
\AN_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => sclk,
      CE => \AN[7]_i_2_n_0\,
      D => \AN[5]_i_1_n_0\,
      Q => \^an\(5),
      S => \AN[7]_i_1_n_0\
    );
\AN_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => sclk,
      CE => \AN[7]_i_2_n_0\,
      D => \AN[6]_i_1_n_0\,
      Q => \^an\(6),
      S => \AN[7]_i_1_n_0\
    );
\AN_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => sclk,
      CE => \AN[7]_i_2_n_0\,
      D => \AN[7]_i_3_n_0\,
      Q => \^an\(7),
      S => \AN[7]_i_1_n_0\
    );
CLK256Hz: entity work.design_1_Mux8x7Seg_0_0_clk_divider
     port map (
      CLK => CLK,
      RESET => RESET,
      sclk => sclk
    );
DECODER: entity work.design_1_Mux8x7Seg_0_0_decoder_4bit_to_7seg
     port map (
      Q(3 downto 0) => bcd(3 downto 0),
      SEG(6 downto 0) => SEG(6 downto 0)
    );
\bcd[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF01000000"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      I3 => d7(0),
      I4 => counter(3),
      I5 => \bcd_reg[0]_i_2_n_0\,
      O => bcd_0(0)
    );
\bcd[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => d2(0),
      I1 => d1(0),
      I2 => counter(1),
      I3 => d0(0),
      I4 => counter(0),
      O => \bcd[0]_i_3_n_0\
    );
\bcd[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d6(0),
      I1 => d5(0),
      I2 => counter(1),
      I3 => d4(0),
      I4 => counter(0),
      I5 => d3(0),
      O => \bcd[0]_i_4_n_0\
    );
\bcd[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF01000000"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      I3 => d7(1),
      I4 => counter(3),
      I5 => \bcd_reg[1]_i_2_n_0\,
      O => bcd_0(1)
    );
\bcd[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => d2(1),
      I1 => d1(1),
      I2 => counter(1),
      I3 => d0(1),
      I4 => counter(0),
      O => \bcd[1]_i_3_n_0\
    );
\bcd[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d6(1),
      I1 => d5(1),
      I2 => counter(1),
      I3 => d4(1),
      I4 => counter(0),
      I5 => d3(1),
      O => \bcd[1]_i_4_n_0\
    );
\bcd[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF01000000"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      I3 => d7(2),
      I4 => counter(3),
      I5 => \bcd_reg[2]_i_2_n_0\,
      O => bcd_0(2)
    );
\bcd[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => d2(2),
      I1 => d1(2),
      I2 => counter(1),
      I3 => d0(2),
      I4 => counter(0),
      O => \bcd[2]_i_3_n_0\
    );
\bcd[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d6(2),
      I1 => d5(2),
      I2 => counter(1),
      I3 => d4(2),
      I4 => counter(0),
      I5 => d3(2),
      O => \bcd[2]_i_4_n_0\
    );
\bcd[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF01000000"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      I3 => d7(3),
      I4 => counter(3),
      I5 => \bcd_reg[3]_i_2_n_0\,
      O => bcd_0(3)
    );
\bcd[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => d2(3),
      I1 => d1(3),
      I2 => counter(1),
      I3 => d0(3),
      I4 => counter(0),
      O => \bcd[3]_i_3_n_0\
    );
\bcd[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d6(3),
      I1 => d5(3),
      I2 => counter(1),
      I3 => d4(3),
      I4 => counter(0),
      I5 => d3(3),
      O => \bcd[3]_i_4_n_0\
    );
\bcd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \AN[7]_i_2_n_0\,
      D => bcd_0(0),
      Q => bcd(0),
      R => '0'
    );
\bcd_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bcd[0]_i_3_n_0\,
      I1 => \bcd[0]_i_4_n_0\,
      O => \bcd_reg[0]_i_2_n_0\,
      S => counter(2)
    );
\bcd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \AN[7]_i_2_n_0\,
      D => bcd_0(1),
      Q => bcd(1),
      R => '0'
    );
\bcd_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bcd[1]_i_3_n_0\,
      I1 => \bcd[1]_i_4_n_0\,
      O => \bcd_reg[1]_i_2_n_0\,
      S => counter(2)
    );
\bcd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \AN[7]_i_2_n_0\,
      D => bcd_0(2),
      Q => bcd(2),
      R => '0'
    );
\bcd_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bcd[2]_i_3_n_0\,
      I1 => \bcd[2]_i_4_n_0\,
      O => \bcd_reg[2]_i_2_n_0\,
      S => counter(2)
    );
\bcd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \AN[7]_i_2_n_0\,
      D => bcd_0(3),
      Q => bcd(3),
      R => '0'
    );
\bcd_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bcd[3]_i_3_n_0\,
      I1 => \bcd[3]_i_4_n_0\,
      O => \bcd_reg[3]_i_2_n_0\,
      S => counter(2)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA8"
    )
        port map (
      I0 => counter(3),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(2),
      O => \counter[3]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sclk,
      CE => '1',
      D => \counter[0]_i_1_n_0\,
      PRE => RESET,
      Q => counter(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      CLR => RESET,
      D => \counter[1]_i_1_n_0\,
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      CLR => RESET,
      D => \counter[2]_i_1_n_0\,
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      CLR => RESET,
      D => \counter[3]_i_1_n_0\,
      Q => counter(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Mux8x7Seg_0_0 is
  port (
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    d0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d6 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SEG : out STD_LOGIC_VECTOR ( 6 downto 0 );
    AN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DP : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Mux8x7Seg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Mux8x7Seg_0_0 : entity is "design_1_Mux8x7Seg_0_0,mux_8x7seg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Mux8x7Seg_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Mux8x7Seg_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Mux8x7Seg_0_0 : entity is "mux_8x7seg,Vivado 2022.2";
end design_1_Mux8x7Seg_0_0;

architecture STRUCTURE of design_1_Mux8x7Seg_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_CLK_0, INSERT_VIP 0";
  attribute x_interface_info of RESET : signal is "xilinx.com:signal:reset:1.0 RESET RST";
  attribute x_interface_parameter of RESET : signal is "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  DP <= \<const1>\;
U0: entity work.design_1_Mux8x7Seg_0_0_mux_8x7seg
     port map (
      AN(7 downto 0) => AN(7 downto 0),
      CLK => CLK,
      RESET => RESET,
      SEG(6 downto 0) => SEG(6 downto 0),
      d0(3 downto 0) => d0(3 downto 0),
      d1(3 downto 0) => d1(3 downto 0),
      d2(3 downto 0) => d2(3 downto 0),
      d3(3 downto 0) => d3(3 downto 0),
      d4(3 downto 0) => d4(3 downto 0),
      d5(3 downto 0) => d5(3 downto 0),
      d6(3 downto 0) => d6(3 downto 0),
      d7(3 downto 0) => d7(3 downto 0)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
