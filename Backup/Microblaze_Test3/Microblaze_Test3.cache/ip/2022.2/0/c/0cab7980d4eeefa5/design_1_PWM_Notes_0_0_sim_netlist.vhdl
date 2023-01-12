-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Jan 10 14:24:21 2023
-- Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_PWM_Notes_0_0_sim_netlist.vhdl
-- Design      : design_1_PWM_Notes_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm is
  port (
    AUD_PWM : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    RESET : in STD_LOGIC;
    PWM_EN : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aud_pwm\ : STD_LOGIC;
  signal \count[0][5]_i_2_n_0\ : STD_LOGIC;
  signal \count[0][5]_i_3_n_0\ : STD_LOGIC;
  signal \count[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \count[0][7]_i_3_n_0\ : STD_LOGIC;
  signal \count[0][9]_i_2_n_0\ : STD_LOGIC;
  signal \count[0]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count_reg[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal half_duty_new0 : STD_LOGIC;
  signal \half_duty_new_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal half_duty_new_reg_n_100 : STD_LOGIC;
  signal half_duty_new_reg_n_101 : STD_LOGIC;
  signal half_duty_new_reg_n_102 : STD_LOGIC;
  signal half_duty_new_reg_n_103 : STD_LOGIC;
  signal half_duty_new_reg_n_104 : STD_LOGIC;
  signal half_duty_new_reg_n_105 : STD_LOGIC;
  signal half_duty_new_reg_n_97 : STD_LOGIC;
  signal half_duty_new_reg_n_98 : STD_LOGIC;
  signal half_duty_new_reg_n_99 : STD_LOGIC;
  signal \half_duty_reg[0]0\ : STD_LOGIC;
  signal pwm_out0_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_8_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_9_n_0 : STD_LOGIC;
  signal pwm_out0_carry_n_0 : STD_LOGIC;
  signal pwm_out0_carry_n_1 : STD_LOGIC;
  signal pwm_out0_carry_n_2 : STD_LOGIC;
  signal pwm_out0_carry_n_3 : STD_LOGIC;
  signal pwm_out1_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_out1_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_out1_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_out1_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_out1_carry_n_0 : STD_LOGIC;
  signal pwm_out1_carry_n_1 : STD_LOGIC;
  signal pwm_out1_carry_n_2 : STD_LOGIC;
  signal pwm_out1_carry_n_3 : STD_LOGIC;
  signal \pwm_out[0]_i_1_n_0\ : STD_LOGIC;
  signal NLW_half_duty_new_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_half_duty_new_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_half_duty_new_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_half_duty_new_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 18 );
  signal NLW_half_duty_new_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_pwm_out0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pwm_out1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0][0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[0][1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[0][2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[0][4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[0][5]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[0][7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[0][7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[0][8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[0][9]_i_1\ : label is "soft_lutpair1";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of half_duty_new_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute SOFT_HLUTNM of pwm_out0_carry_i_5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of pwm_out0_carry_i_7 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of pwm_out0_carry_i_8 : label is "soft_lutpair0";
begin
  AR(0) <= \^ar\(0);
  AUD_PWM <= \^aud_pwm\;
\count[0][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg[0]\(0),
      O => \count[0]_0\(0)
    );
\count[0][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg[0]\(0),
      I1 => \count_reg[0]\(1),
      O => \count[0]_0\(1)
    );
\count[0][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_reg[0]\(1),
      I1 => \count_reg[0]\(0),
      I2 => \count_reg[0]\(2),
      O => \count[0]_0\(2)
    );
\count[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000000FF7F"
    )
        port map (
      I0 => \count_reg[0]\(5),
      I1 => \count_reg[0]\(6),
      I2 => \count_reg[0]\(7),
      I3 => \count[0][7]_i_3_n_0\,
      I4 => \count[0][5]_i_3_n_0\,
      I5 => \count_reg[0]\(3),
      O => \count[0]_0\(3)
    );
\count[0][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_reg[0]\(3),
      I1 => \count_reg[0]\(1),
      I2 => \count_reg[0]\(0),
      I3 => \count_reg[0]\(2),
      I4 => \count_reg[0]\(4),
      O => \count[0]_0\(4)
    );
\count[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F00FF0E0E0"
    )
        port map (
      I0 => \count[0][7]_i_3_n_0\,
      I1 => \count[0][5]_i_2_n_0\,
      I2 => \count_reg[0]\(5),
      I3 => \count_reg[0]\(4),
      I4 => \count_reg[0]\(3),
      I5 => \count[0][5]_i_3_n_0\,
      O => \count[0]_0\(5)
    );
\count[0][5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg[0]\(6),
      I1 => \count_reg[0]\(7),
      O => \count[0][5]_i_2_n_0\
    );
\count[0][5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \count_reg[0]\(1),
      I1 => \count_reg[0]\(0),
      I2 => \count_reg[0]\(2),
      O => \count[0][5]_i_3_n_0\
    );
\count[0][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3C3CCC4CCCCCCC4"
    )
        port map (
      I0 => \count_reg[0]\(7),
      I1 => \count_reg[0]\(6),
      I2 => \count[0][7]_i_2_n_0\,
      I3 => \count[0][7]_i_3_n_0\,
      I4 => \count_reg[0]\(3),
      I5 => \count_reg[0]\(4),
      O => \count[0]_0\(6)
    );
\count[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C6C6CCC4CCCCCCC4"
    )
        port map (
      I0 => \count_reg[0]\(6),
      I1 => \count_reg[0]\(7),
      I2 => \count[0][7]_i_2_n_0\,
      I3 => \count[0][7]_i_3_n_0\,
      I4 => \count_reg[0]\(3),
      I5 => \count_reg[0]\(4),
      O => \count[0]_0\(7)
    );
\count[0][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg[0]\(2),
      I1 => \count_reg[0]\(0),
      I2 => \count_reg[0]\(1),
      I3 => \count_reg[0]\(5),
      O => \count[0][7]_i_2_n_0\
    );
\count[0][7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \count_reg[0]\(9),
      I1 => \count_reg[0]\(4),
      I2 => \count_reg[0]\(8),
      O => \count[0][7]_i_3_n_0\
    );
\count[0][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA68AA6A"
    )
        port map (
      I0 => \count_reg[0]\(8),
      I1 => \count_reg[0]\(4),
      I2 => \count_reg[0]\(3),
      I3 => \count[0][9]_i_2_n_0\,
      I4 => \count_reg[0]\(9),
      O => \count[0]_0\(8)
    );
\count[0][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA68AA"
    )
        port map (
      I0 => \count_reg[0]\(9),
      I1 => \count_reg[0]\(4),
      I2 => \count_reg[0]\(3),
      I3 => \count_reg[0]\(8),
      I4 => \count[0][9]_i_2_n_0\,
      O => \count[0]_0\(9)
    );
\count[0][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \count_reg[0]\(5),
      I1 => \count_reg[0]\(1),
      I2 => \count_reg[0]\(0),
      I3 => \count_reg[0]\(2),
      I4 => \count_reg[0]\(7),
      I5 => \count_reg[0]\(6),
      O => \count[0][9]_i_2_n_0\
    );
\count_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \count[0]_0\(0),
      Q => \count_reg[0]\(0)
    );
\count_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \count[0]_0\(1),
      Q => \count_reg[0]\(1)
    );
\count_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \count[0]_0\(2),
      Q => \count_reg[0]\(2)
    );
\count_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \count[0]_0\(3),
      Q => \count_reg[0]\(3)
    );
\count_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \count[0]_0\(4),
      Q => \count_reg[0]\(4)
    );
\count_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \count[0]_0\(5),
      Q => \count_reg[0]\(5)
    );
\count_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \count[0]_0\(6),
      Q => \count_reg[0]\(6)
    );
\count_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \count[0]_0\(7),
      Q => \count_reg[0]\(7)
    );
\count_reg[0][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \count[0]_0\(8),
      Q => \count_reg[0]\(8)
    );
\count_reg[0][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \count[0]_0\(9),
      Q => \count_reg[0]\(9)
    );
half_duty_new_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 1) => Q(6 downto 0),
      A(0) => '0',
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_half_duty_new_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000001111101000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_half_duty_new_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_half_duty_new_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_half_duty_new_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => half_duty_new0,
      CEP => \half_duty_reg[0]0\,
      CLK => CLK,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_half_duty_new_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_half_duty_new_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 18) => NLW_half_duty_new_reg_P_UNCONNECTED(47 downto 18),
      P(17 downto 9) => \half_duty_new_reg__0\(8 downto 0),
      P(8) => half_duty_new_reg_n_97,
      P(7) => half_duty_new_reg_n_98,
      P(6) => half_duty_new_reg_n_99,
      P(5) => half_duty_new_reg_n_100,
      P(4) => half_duty_new_reg_n_101,
      P(3) => half_duty_new_reg_n_102,
      P(2) => half_duty_new_reg_n_103,
      P(1) => half_duty_new_reg_n_104,
      P(0) => half_duty_new_reg_n_105,
      PATTERNBDETECT => NLW_half_duty_new_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_half_duty_new_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_half_duty_new_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_half_duty_new_reg_UNDERFLOW_UNCONNECTED
    );
half_duty_new_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RESET,
      I1 => PWM_EN,
      O => half_duty_new0
    );
half_duty_new_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \count_reg[0]\(9),
      I1 => \count_reg[0]\(4),
      I2 => \count_reg[0]\(8),
      I3 => RESET,
      I4 => \count_reg[0]\(3),
      I5 => \count[0][9]_i_2_n_0\,
      O => \half_duty_reg[0]0\
    );
pwm_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_out0_carry_n_0,
      CO(2) => pwm_out0_carry_n_1,
      CO(1) => pwm_out0_carry_n_2,
      CO(0) => pwm_out0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pwm_out0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_out0_carry_i_1_n_0,
      S(2) => pwm_out0_carry_i_2_n_0,
      S(1) => pwm_out0_carry_i_3_n_0,
      S(0) => pwm_out0_carry_i_4_n_0
    );
pwm_out0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => pwm_out0_carry_i_5_n_0,
      I1 => \half_duty_new_reg__0\(6),
      I2 => \half_duty_new_reg__0\(5),
      I3 => \half_duty_new_reg__0\(8),
      I4 => \half_duty_new_reg__0\(7),
      I5 => \count_reg[0]\(9),
      O => pwm_out0_carry_i_1_n_0
    );
pwm_out0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4001022002200110"
    )
        port map (
      I0 => pwm_out0_carry_i_6_n_0,
      I1 => pwm_out0_carry_i_7_n_0,
      I2 => \half_duty_new_reg__0\(7),
      I3 => \count_reg[0]\(7),
      I4 => \count_reg[0]\(6),
      I5 => \half_duty_new_reg__0\(6),
      O => pwm_out0_carry_i_2_n_0
    );
pwm_out0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1600800080000016"
    )
        port map (
      I0 => pwm_out0_carry_i_8_n_0,
      I1 => \half_duty_new_reg__0\(3),
      I2 => \count_reg[0]\(3),
      I3 => pwm_out0_carry_i_9_n_0,
      I4 => \count_reg[0]\(4),
      I5 => \half_duty_new_reg__0\(4),
      O => pwm_out0_carry_i_3_n_0
    );
pwm_out0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001188018800001"
    )
        port map (
      I0 => \half_duty_new_reg__0\(0),
      I1 => \count_reg[0]\(0),
      I2 => \count_reg[0]\(1),
      I3 => \half_duty_new_reg__0\(1),
      I4 => \count_reg[0]\(2),
      I5 => \half_duty_new_reg__0\(2),
      O => pwm_out0_carry_i_4_n_0
    );
pwm_out0_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEEA"
    )
        port map (
      I0 => \half_duty_new_reg__0\(4),
      I1 => \half_duty_new_reg__0\(3),
      I2 => \half_duty_new_reg__0\(2),
      I3 => \half_duty_new_reg__0\(1),
      I4 => \half_duty_new_reg__0\(0),
      O => pwm_out0_carry_i_5_n_0
    );
pwm_out0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001FFFFFFFFFF"
    )
        port map (
      I0 => \half_duty_new_reg__0\(0),
      I1 => \half_duty_new_reg__0\(1),
      I2 => \half_duty_new_reg__0\(2),
      I3 => \half_duty_new_reg__0\(3),
      I4 => \half_duty_new_reg__0\(4),
      I5 => \half_duty_new_reg__0\(5),
      O => pwm_out0_carry_i_6_n_0
    );
pwm_out0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \half_duty_new_reg__0\(8),
      I1 => \count_reg[0]\(8),
      O => pwm_out0_carry_i_7_n_0
    );
pwm_out0_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \half_duty_new_reg__0\(2),
      I1 => \half_duty_new_reg__0\(1),
      I2 => \half_duty_new_reg__0\(0),
      O => pwm_out0_carry_i_8_n_0
    );
pwm_out0_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \half_duty_new_reg__0\(5),
      I1 => \count_reg[0]\(5),
      O => pwm_out0_carry_i_9_n_0
    );
pwm_out1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_out1_carry_n_0,
      CO(2) => pwm_out1_carry_n_1,
      CO(1) => pwm_out1_carry_n_2,
      CO(0) => pwm_out1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pwm_out1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_out1_carry_i_1_n_0,
      S(2) => pwm_out1_carry_i_2_n_0,
      S(1) => pwm_out1_carry_i_3_n_0,
      S(0) => pwm_out1_carry_i_4_n_0
    );
pwm_out1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg[0]\(9),
      O => pwm_out1_carry_i_1_n_0
    );
pwm_out1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \half_duty_new_reg__0\(8),
      I1 => \count_reg[0]\(8),
      I2 => \half_duty_new_reg__0\(7),
      I3 => \count_reg[0]\(7),
      I4 => \count_reg[0]\(6),
      I5 => \half_duty_new_reg__0\(6),
      O => pwm_out1_carry_i_2_n_0
    );
pwm_out1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \half_duty_new_reg__0\(5),
      I1 => \count_reg[0]\(5),
      I2 => \half_duty_new_reg__0\(4),
      I3 => \count_reg[0]\(4),
      I4 => \count_reg[0]\(3),
      I5 => \half_duty_new_reg__0\(3),
      O => pwm_out1_carry_i_3_n_0
    );
pwm_out1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8241000000008241"
    )
        port map (
      I0 => \count_reg[0]\(1),
      I1 => \count_reg[0]\(0),
      I2 => \half_duty_new_reg__0\(0),
      I3 => \half_duty_new_reg__0\(1),
      I4 => \half_duty_new_reg__0\(2),
      I5 => \count_reg[0]\(2),
      O => pwm_out1_carry_i_4_n_0
    );
\pwm_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => pwm_out1_carry_n_0,
      I1 => pwm_out0_carry_n_0,
      I2 => \^aud_pwm\,
      O => \pwm_out[0]_i_1_n_0\
    );
\pwm_out[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RESET,
      O => \^ar\(0)
    );
\pwm_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \pwm_out[0]_i_1_n_0\,
      Q => \^aud_pwm\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  port (
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    PWM_EN : in STD_LOGIC;
    NOTE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AUD_PWM : out STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  signal PWM_GEN_n_1 : STD_LOGIC;
  signal \^clk\ : STD_LOGIC;
  signal counter0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \counter[7]_i_4_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal dir_i_1_n_0 : STD_LOGIC;
  signal dir_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal sclk_i_1_n_0 : STD_LOGIC;
  signal scounter : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal scounter0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal \scounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \scounter[10]_i_1_n_0\ : STD_LOGIC;
  signal \scounter[11]_i_1_n_0\ : STD_LOGIC;
  signal \scounter[12]_i_1_n_0\ : STD_LOGIC;
  signal \scounter[13]_i_10_n_0\ : STD_LOGIC;
  signal \scounter[13]_i_11_n_0\ : STD_LOGIC;
  signal \scounter[13]_i_12_n_0\ : STD_LOGIC;
  signal \scounter[13]_i_13_n_0\ : STD_LOGIC;
  signal \scounter[13]_i_1_n_0\ : STD_LOGIC;
  signal \scounter[13]_i_5_n_0\ : STD_LOGIC;
  signal \scounter[13]_i_6_n_0\ : STD_LOGIC;
  signal \scounter[13]_i_7_n_0\ : STD_LOGIC;
  signal \scounter[13]_i_8_n_0\ : STD_LOGIC;
  signal \scounter[13]_i_9_n_0\ : STD_LOGIC;
  signal \scounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \scounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \scounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \scounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \scounter[5]_i_1_n_0\ : STD_LOGIC;
  signal \scounter[6]_i_1_n_0\ : STD_LOGIC;
  signal \scounter[7]_i_1_n_0\ : STD_LOGIC;
  signal \scounter[8]_i_1_n_0\ : STD_LOGIC;
  signal \scounter[9]_i_1_n_0\ : STD_LOGIC;
  signal \scounter_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \scounter_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \scounter_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \scounter_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \scounter_reg[13]_i_3_n_3\ : STD_LOGIC;
  signal \scounter_reg[13]_i_4_n_0\ : STD_LOGIC;
  signal \scounter_reg[13]_i_4_n_1\ : STD_LOGIC;
  signal \scounter_reg[13]_i_4_n_2\ : STD_LOGIC;
  signal \scounter_reg[13]_i_4_n_3\ : STD_LOGIC;
  signal \scounter_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \scounter_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \scounter_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \scounter_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \scounter_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \scounter_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \scounter_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \scounter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \NLW_scounter_reg[13]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_scounter_reg[13]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_scounter_reg[13]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_scounter_reg[13]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_scounter_reg[13]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[7]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[7]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of sclk_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \scounter[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \scounter[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \scounter[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \scounter[13]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \scounter[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \scounter[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \scounter[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \scounter[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \scounter[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \scounter[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \scounter[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \scounter[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \scounter[9]_i_1\ : label is "soft_lutpair13";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \scounter_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \scounter_reg[13]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \scounter_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \scounter_reg[8]_i_2\ : label is 35;
begin
PWM_GEN: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm
     port map (
      AR(0) => PWM_GEN_n_1,
      AUD_PWM => AUD_PWM,
      CLK => CLK,
      PWM_EN => PWM_EN,
      Q(6 downto 0) => counter_reg(7 downto 1),
      RESET => RESET
    );
\counter[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(1),
      O => counter0(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(1),
      I2 => dir_reg_n_0,
      O => p_0_in(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AA6"
    )
        port map (
      I0 => counter_reg(3),
      I1 => dir_reg_n_0,
      I2 => counter_reg(1),
      I3 => counter_reg(2),
      O => p_0_in(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E178F0"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(1),
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => dir_reg_n_0,
      O => p_0_in(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F078F0F0F0F0E1F0"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(1),
      I2 => counter_reg(5),
      I3 => dir_reg_n_0,
      I4 => counter_reg(3),
      I5 => counter_reg(4),
      O => p_0_in(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95AA9"
    )
        port map (
      I0 => counter_reg(6),
      I1 => \counter[7]_i_3_n_0\,
      I2 => counter_reg(2),
      I3 => counter_reg(1),
      I4 => \counter[7]_i_4_n_0\,
      O => p_0_in(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(2),
      I2 => \counter[7]_i_3_n_0\,
      I3 => counter_reg(6),
      I4 => counter_reg(7),
      O => \counter[7]_i_1_n_0\
    );
\counter[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000177FE8801"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(2),
      I2 => \counter[7]_i_3_n_0\,
      I3 => counter_reg(6),
      I4 => counter_reg(7),
      I5 => \counter[7]_i_4_n_0\,
      O => p_0_in(7)
    );
\counter[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(3),
      I2 => dir_reg_n_0,
      I3 => counter_reg(5),
      O => \counter[7]_i_3_n_0\
    );
\counter[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => counter_reg(4),
      I1 => dir_reg_n_0,
      I2 => counter_reg(3),
      I3 => counter_reg(5),
      O => \counter[7]_i_4_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \counter[7]_i_1_n_0\,
      CLR => PWM_GEN_n_1,
      D => counter0(1),
      Q => counter_reg(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \counter[7]_i_1_n_0\,
      CLR => PWM_GEN_n_1,
      D => p_0_in(2),
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \counter[7]_i_1_n_0\,
      CLR => PWM_GEN_n_1,
      D => p_0_in(3),
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \counter[7]_i_1_n_0\,
      CLR => PWM_GEN_n_1,
      D => p_0_in(4),
      Q => counter_reg(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \counter[7]_i_1_n_0\,
      CLR => PWM_GEN_n_1,
      D => p_0_in(5),
      Q => counter_reg(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \counter[7]_i_1_n_0\,
      CLR => PWM_GEN_n_1,
      D => p_0_in(6),
      Q => counter_reg(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \counter[7]_i_1_n_0\,
      CLR => PWM_GEN_n_1,
      D => p_0_in(7),
      Q => counter_reg(7)
    );
dir_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => RESET,
      I1 => \counter[7]_i_1_n_0\,
      I2 => dir_reg_n_0,
      O => dir_i_1_n_0
    );
dir_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => dir_i_1_n_0,
      Q => dir_reg_n_0,
      R => '0'
    );
sclk_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \scounter_reg[13]_i_3_n_3\,
      I1 => \^clk\,
      O => sclk_i_1_n_0
    );
sclk_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => sclk_i_1_n_0,
      Q => \^clk\
    );
\scounter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => scounter(0),
      I1 => \scounter_reg[13]_i_3_n_3\,
      O => \scounter[0]_i_1_n_0\
    );
\scounter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scounter0(10),
      I1 => \scounter_reg[13]_i_3_n_3\,
      O => \scounter[10]_i_1_n_0\
    );
\scounter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scounter0(11),
      I1 => \scounter_reg[13]_i_3_n_3\,
      O => \scounter[11]_i_1_n_0\
    );
\scounter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scounter0(12),
      I1 => \scounter_reg[13]_i_3_n_3\,
      O => \scounter[12]_i_1_n_0\
    );
\scounter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scounter0(13),
      I1 => \scounter_reg[13]_i_3_n_3\,
      O => \scounter[13]_i_1_n_0\
    );
\scounter[13]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4111111111111114"
    )
        port map (
      I0 => scounter(10),
      I1 => scounter(11),
      I2 => NOTE(1),
      I3 => NOTE(0),
      I4 => NOTE(2),
      I5 => NOTE(3),
      O => \scounter[13]_i_10_n_0\
    );
\scounter[13]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222444488811222"
    )
        port map (
      I0 => scounter(7),
      I1 => scounter(8),
      I2 => NOTE(1),
      I3 => NOTE(0),
      I4 => NOTE(2),
      I5 => NOTE(3),
      O => \scounter[13]_i_11_n_0\
    );
\scounter[13]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8221184818248828"
    )
        port map (
      I0 => scounter(4),
      I1 => scounter(5),
      I2 => NOTE(1),
      I3 => NOTE(2),
      I4 => NOTE(0),
      I5 => NOTE(3),
      O => \scounter[13]_i_12_n_0\
    );
\scounter[13]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4881114444212244"
    )
        port map (
      I0 => scounter(1),
      I1 => scounter(2),
      I2 => NOTE(0),
      I3 => NOTE(1),
      I4 => NOTE(2),
      I5 => NOTE(3),
      O => \scounter[13]_i_13_n_0\
    );
\scounter[13]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => scounter(12),
      I1 => scounter(13),
      O => \scounter[13]_i_5_n_0\
    );
\scounter[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555A556900000000"
    )
        port map (
      I0 => scounter(9),
      I1 => NOTE(1),
      I2 => NOTE(2),
      I3 => NOTE(3),
      I4 => NOTE(0),
      I5 => \scounter[13]_i_10_n_0\,
      O => \scounter[13]_i_6_n_0\
    );
\scounter[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65AA599900000000"
    )
        port map (
      I0 => scounter(6),
      I1 => NOTE(0),
      I2 => NOTE(2),
      I3 => NOTE(1),
      I4 => NOTE(3),
      I5 => \scounter[13]_i_11_n_0\,
      O => \scounter[13]_i_7_n_0\
    );
\scounter[13]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6A9996A00000000"
    )
        port map (
      I0 => scounter(3),
      I1 => NOTE(1),
      I2 => NOTE(0),
      I3 => NOTE(2),
      I4 => NOTE(3),
      I5 => \scounter[13]_i_12_n_0\,
      O => \scounter[13]_i_8_n_0\
    );
\scounter[13]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9565656A00000000"
    )
        port map (
      I0 => scounter(0),
      I1 => NOTE(1),
      I2 => NOTE(3),
      I3 => NOTE(2),
      I4 => NOTE(0),
      I5 => \scounter[13]_i_13_n_0\,
      O => \scounter[13]_i_9_n_0\
    );
\scounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scounter0(1),
      I1 => \scounter_reg[13]_i_3_n_3\,
      O => \scounter[1]_i_1_n_0\
    );
\scounter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scounter0(2),
      I1 => \scounter_reg[13]_i_3_n_3\,
      O => \scounter[2]_i_1_n_0\
    );
\scounter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scounter0(3),
      I1 => \scounter_reg[13]_i_3_n_3\,
      O => \scounter[3]_i_1_n_0\
    );
\scounter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scounter0(4),
      I1 => \scounter_reg[13]_i_3_n_3\,
      O => \scounter[4]_i_1_n_0\
    );
\scounter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scounter0(5),
      I1 => \scounter_reg[13]_i_3_n_3\,
      O => \scounter[5]_i_1_n_0\
    );
\scounter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scounter0(6),
      I1 => \scounter_reg[13]_i_3_n_3\,
      O => \scounter[6]_i_1_n_0\
    );
\scounter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scounter0(7),
      I1 => \scounter_reg[13]_i_3_n_3\,
      O => \scounter[7]_i_1_n_0\
    );
\scounter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scounter0(8),
      I1 => \scounter_reg[13]_i_3_n_3\,
      O => \scounter[8]_i_1_n_0\
    );
\scounter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scounter0(9),
      I1 => \scounter_reg[13]_i_3_n_3\,
      O => \scounter[9]_i_1_n_0\
    );
\scounter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => \scounter[0]_i_1_n_0\,
      Q => scounter(0)
    );
\scounter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => \scounter[10]_i_1_n_0\,
      Q => scounter(10)
    );
\scounter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => \scounter[11]_i_1_n_0\,
      Q => scounter(11)
    );
\scounter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => \scounter[12]_i_1_n_0\,
      Q => scounter(12)
    );
\scounter_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \scounter_reg[8]_i_2_n_0\,
      CO(3) => \scounter_reg[12]_i_2_n_0\,
      CO(2) => \scounter_reg[12]_i_2_n_1\,
      CO(1) => \scounter_reg[12]_i_2_n_2\,
      CO(0) => \scounter_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => scounter0(12 downto 9),
      S(3 downto 0) => scounter(12 downto 9)
    );
\scounter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => \scounter[13]_i_1_n_0\,
      Q => scounter(13)
    );
\scounter_reg[13]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \scounter_reg[12]_i_2_n_0\,
      CO(3 downto 0) => \NLW_scounter_reg[13]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_scounter_reg[13]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => scounter0(13),
      S(3 downto 1) => B"000",
      S(0) => scounter(13)
    );
\scounter_reg[13]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \scounter_reg[13]_i_4_n_0\,
      CO(3 downto 1) => \NLW_scounter_reg[13]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \scounter_reg[13]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_scounter_reg[13]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \scounter[13]_i_5_n_0\
    );
\scounter_reg[13]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \scounter_reg[13]_i_4_n_0\,
      CO(2) => \scounter_reg[13]_i_4_n_1\,
      CO(1) => \scounter_reg[13]_i_4_n_2\,
      CO(0) => \scounter_reg[13]_i_4_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_scounter_reg[13]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \scounter[13]_i_6_n_0\,
      S(2) => \scounter[13]_i_7_n_0\,
      S(1) => \scounter[13]_i_8_n_0\,
      S(0) => \scounter[13]_i_9_n_0\
    );
\scounter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => \scounter[1]_i_1_n_0\,
      Q => scounter(1)
    );
\scounter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => \scounter[2]_i_1_n_0\,
      Q => scounter(2)
    );
\scounter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => \scounter[3]_i_1_n_0\,
      Q => scounter(3)
    );
\scounter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => \scounter[4]_i_1_n_0\,
      Q => scounter(4)
    );
\scounter_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \scounter_reg[4]_i_2_n_0\,
      CO(2) => \scounter_reg[4]_i_2_n_1\,
      CO(1) => \scounter_reg[4]_i_2_n_2\,
      CO(0) => \scounter_reg[4]_i_2_n_3\,
      CYINIT => scounter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => scounter0(4 downto 1),
      S(3 downto 0) => scounter(4 downto 1)
    );
\scounter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => \scounter[5]_i_1_n_0\,
      Q => scounter(5)
    );
\scounter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => \scounter[6]_i_1_n_0\,
      Q => scounter(6)
    );
\scounter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => \scounter[7]_i_1_n_0\,
      Q => scounter(7)
    );
\scounter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => \scounter[8]_i_1_n_0\,
      Q => scounter(8)
    );
\scounter_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \scounter_reg[4]_i_2_n_0\,
      CO(3) => \scounter_reg[8]_i_2_n_0\,
      CO(2) => \scounter_reg[8]_i_2_n_1\,
      CO(1) => \scounter_reg[8]_i_2_n_2\,
      CO(0) => \scounter_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => scounter0(8 downto 5),
      S(3 downto 0) => scounter(8 downto 5)
    );
\scounter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => PWM_GEN_n_1,
      D => \scounter[9]_i_1_n_0\,
      Q => scounter(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    PWM_EN : in STD_LOGIC;
    NOTE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AUD_PWM : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_PWM_Notes_0_0,top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of RESET : signal is "xilinx.com:signal:reset:1.0 RESET RST";
  attribute x_interface_parameter of RESET : signal is "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
     port map (
      AUD_PWM => AUD_PWM,
      CLK => CLK,
      NOTE(3 downto 0) => NOTE(3 downto 0),
      PWM_EN => PWM_EN,
      RESET => RESET
    );
end STRUCTURE;
