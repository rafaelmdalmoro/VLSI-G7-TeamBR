-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Nov 24 16:28:34 2022
-- Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_DoubleDabbler12Bit_0_0_sim_netlist.vhdl
-- Design      : design_1_DoubleDabbler12Bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    hex_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    bcd_tho : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd_hun : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd_ten : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd_uni : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_DoubleDabbler12Bit_0_0,DoubleDabbler12Bit,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "DoubleDabbler12Bit,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \bcd_hun[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bcd_hun[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bcd_hun[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bcd_hun[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bcd_hun[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bcd_hun[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bcd_hun[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bcd_hun[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \bcd_ten[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bcd_ten[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^bcd_tho\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bcd_tho[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bcd_tho[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bcd_tho[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bcd_tho[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bcd_tho[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bcd_tho[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bcd_tho[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bcd_tho[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bcd_tho[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bcd_tho[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bcd_tho[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bcd_tho[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bcd_tho[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \^bcd_uni\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^hex_in\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bcd_hun[0]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bcd_tho[2]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bcd_tho[2]_INST_0_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bcd_tho[2]_INST_0_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bcd_tho[2]_INST_0_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bcd_tho[2]_INST_0_i_8\ : label is "soft_lutpair1";
begin
  \^hex_in\(11 downto 0) <= hex_in(11 downto 0);
  bcd_tho(3) <= \<const0>\;
  bcd_tho(2 downto 0) <= \^bcd_tho\(2 downto 0);
  bcd_uni(3 downto 1) <= \^bcd_uni\(3 downto 1);
  bcd_uni(0) <= \^hex_in\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\bcd_hun[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECCECEDCEEDECFFC"
    )
        port map (
      I0 => \bcd_hun[0]_INST_0_i_1_n_0\,
      I1 => \bcd_hun[0]_INST_0_i_2_n_0\,
      I2 => \bcd_tho[1]_INST_0_i_1_n_0\,
      I3 => \bcd_hun[0]_INST_0_i_3_n_0\,
      I4 => \bcd_hun[0]_INST_0_i_4_n_0\,
      I5 => \bcd_hun[0]_INST_0_i_5_n_0\,
      O => bcd_hun(0)
    );
\bcd_hun[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"62299994"
    )
        port map (
      I0 => \bcd_tho[2]_INST_0_i_8_n_0\,
      I1 => \bcd_tho[2]_INST_0_i_7_n_0\,
      I2 => \bcd_tho[2]_INST_0_i_6_n_0\,
      I3 => \bcd_tho[2]_INST_0_i_5_n_0\,
      I4 => \bcd_tho[2]_INST_0_i_4_n_0\,
      O => \bcd_hun[0]_INST_0_i_1_n_0\
    );
\bcd_hun[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8001122424488001"
    )
        port map (
      I0 => \bcd_hun[0]_INST_0_i_3_n_0\,
      I1 => \bcd_tho[2]_INST_0_i_4_n_0\,
      I2 => \bcd_tho[2]_INST_0_i_5_n_0\,
      I3 => \bcd_tho[2]_INST_0_i_6_n_0\,
      I4 => \bcd_tho[2]_INST_0_i_7_n_0\,
      I5 => \bcd_tho[2]_INST_0_i_8_n_0\,
      O => \bcd_hun[0]_INST_0_i_2_n_0\
    );
\bcd_hun[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C3D70000D73C"
    )
        port map (
      I0 => \^hex_in\(4),
      I1 => \^hex_in\(6),
      I2 => \bcd_tho[2]_INST_0_i_5_n_0\,
      I3 => \^hex_in\(5),
      I4 => \bcd_hun[0]_INST_0_i_6_n_0\,
      I5 => \bcd_hun[0]_INST_0_i_7_n_0\,
      O => \bcd_hun[0]_INST_0_i_3_n_0\
    );
\bcd_hun[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007017FC0000FC01"
    )
        port map (
      I0 => \^hex_in\(3),
      I1 => \^hex_in\(4),
      I2 => \bcd_hun[0]_INST_0_i_8_n_0\,
      I3 => \^hex_in\(5),
      I4 => \bcd_hun[0]_INST_0_i_6_n_0\,
      I5 => \bcd_hun[0]_INST_0_i_7_n_0\,
      O => \bcd_hun[0]_INST_0_i_4_n_0\
    );
\bcd_hun[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000066696FF9"
    )
        port map (
      I0 => \bcd_hun[0]_INST_0_i_3_n_0\,
      I1 => \^hex_in\(4),
      I2 => \bcd_hun[0]_INST_0_i_4_n_0\,
      I3 => \^hex_in\(3),
      I4 => \^hex_in\(2),
      I5 => \bcd_ten[0]_INST_0_i_2_n_0\,
      O => \bcd_hun[0]_INST_0_i_5_n_0\
    );
\bcd_hun[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0420184182180420"
    )
        port map (
      I0 => \^hex_in\(6),
      I1 => \^hex_in\(7),
      I2 => \^hex_in\(9),
      I3 => \^hex_in\(11),
      I4 => \^hex_in\(10),
      I5 => \^hex_in\(8),
      O => \bcd_hun[0]_INST_0_i_6_n_0\
    );
\bcd_hun[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6D69B66D69DB6D69"
    )
        port map (
      I0 => \^hex_in\(7),
      I1 => \^hex_in\(9),
      I2 => \^hex_in\(11),
      I3 => \^hex_in\(10),
      I4 => \^hex_in\(8),
      I5 => \^hex_in\(6),
      O => \bcd_hun[0]_INST_0_i_7_n_0\
    );
\bcd_hun[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"696DDB696DB6696D"
    )
        port map (
      I0 => \^hex_in\(6),
      I1 => \^hex_in\(8),
      I2 => \^hex_in\(10),
      I3 => \^hex_in\(11),
      I4 => \^hex_in\(9),
      I5 => \^hex_in\(7),
      O => \bcd_hun[0]_INST_0_i_8_n_0\
    );
\bcd_hun[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4420BB4"
    )
        port map (
      I0 => \bcd_tho[2]_INST_0_i_2_n_0\,
      I1 => \bcd_tho[1]_INST_0_i_1_n_0\,
      I2 => \bcd_tho[2]_INST_0_i_3_n_0\,
      I3 => \bcd_tho[2]_INST_0_i_1_n_0\,
      I4 => \bcd_tho[0]_INST_0_i_1_n_0\,
      O => bcd_hun(1)
    );
\bcd_hun[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40BD6B80"
    )
        port map (
      I0 => \bcd_tho[0]_INST_0_i_1_n_0\,
      I1 => \bcd_tho[2]_INST_0_i_1_n_0\,
      I2 => \bcd_tho[2]_INST_0_i_3_n_0\,
      I3 => \bcd_tho[1]_INST_0_i_1_n_0\,
      I4 => \bcd_tho[2]_INST_0_i_2_n_0\,
      O => bcd_hun(2)
    );
\bcd_hun[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40097440"
    )
        port map (
      I0 => \bcd_tho[2]_INST_0_i_2_n_0\,
      I1 => \bcd_tho[1]_INST_0_i_1_n_0\,
      I2 => \bcd_tho[2]_INST_0_i_3_n_0\,
      I3 => \bcd_tho[2]_INST_0_i_1_n_0\,
      I4 => \bcd_tho[0]_INST_0_i_1_n_0\,
      O => bcd_hun(3)
    );
\bcd_ten[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF9996FFFF9006"
    )
        port map (
      I0 => \^hex_in\(3),
      I1 => \bcd_hun[0]_INST_0_i_4_n_0\,
      I2 => \bcd_ten[0]_INST_0_i_1_n_0\,
      I3 => \^hex_in\(2),
      I4 => \bcd_ten[0]_INST_0_i_2_n_0\,
      I5 => \^hex_in\(1),
      O => bcd_ten(0)
    );
\bcd_ten[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6669"
    )
        port map (
      I0 => \bcd_hun[0]_INST_0_i_3_n_0\,
      I1 => \^hex_in\(4),
      I2 => \bcd_hun[0]_INST_0_i_4_n_0\,
      I3 => \^hex_in\(3),
      O => \bcd_ten[0]_INST_0_i_1_n_0\
    );
\bcd_ten[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5CC04DE0C2C24CD"
    )
        port map (
      I0 => \bcd_hun[0]_INST_0_i_7_n_0\,
      I1 => \bcd_hun[0]_INST_0_i_6_n_0\,
      I2 => \^hex_in\(5),
      I3 => \bcd_hun[0]_INST_0_i_8_n_0\,
      I4 => \^hex_in\(4),
      I5 => \^hex_in\(3),
      O => \bcd_ten[0]_INST_0_i_2_n_0\
    );
\bcd_ten[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECCECEDC11213003"
    )
        port map (
      I0 => \bcd_hun[0]_INST_0_i_1_n_0\,
      I1 => \bcd_hun[0]_INST_0_i_2_n_0\,
      I2 => \bcd_tho[1]_INST_0_i_1_n_0\,
      I3 => \bcd_hun[0]_INST_0_i_3_n_0\,
      I4 => \bcd_hun[0]_INST_0_i_4_n_0\,
      I5 => \bcd_hun[0]_INST_0_i_5_n_0\,
      O => bcd_ten(1)
    );
\bcd_ten[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66668C18666631C3"
    )
        port map (
      I0 => \bcd_hun[0]_INST_0_i_5_n_0\,
      I1 => \bcd_hun[0]_INST_0_i_4_n_0\,
      I2 => \bcd_hun[0]_INST_0_i_3_n_0\,
      I3 => \bcd_tho[1]_INST_0_i_1_n_0\,
      I4 => \bcd_hun[0]_INST_0_i_2_n_0\,
      I5 => \bcd_hun[0]_INST_0_i_1_n_0\,
      O => bcd_ten(2)
    );
\bcd_ten[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7D3C7D61080820"
    )
        port map (
      I0 => \bcd_hun[0]_INST_0_i_5_n_0\,
      I1 => \bcd_tho[1]_INST_0_i_1_n_0\,
      I2 => \bcd_hun[0]_INST_0_i_3_n_0\,
      I3 => \bcd_hun[0]_INST_0_i_4_n_0\,
      I4 => \bcd_hun[0]_INST_0_i_1_n_0\,
      I5 => \bcd_hun[0]_INST_0_i_2_n_0\,
      O => bcd_ten(3)
    );
\bcd_tho[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F442F44B"
    )
        port map (
      I0 => \bcd_tho[2]_INST_0_i_2_n_0\,
      I1 => \bcd_tho[1]_INST_0_i_1_n_0\,
      I2 => \bcd_tho[2]_INST_0_i_3_n_0\,
      I3 => \bcd_tho[2]_INST_0_i_1_n_0\,
      I4 => \bcd_tho[0]_INST_0_i_1_n_0\,
      O => \^bcd_tho\(0)
    );
\bcd_tho[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F3220033B200033"
    )
        port map (
      I0 => \bcd_hun[0]_INST_0_i_4_n_0\,
      I1 => \bcd_tho[0]_INST_0_i_2_n_0\,
      I2 => \bcd_tho[0]_INST_0_i_3_n_0\,
      I3 => \bcd_tho[2]_INST_0_i_4_n_0\,
      I4 => \bcd_tho[0]_INST_0_i_4_n_0\,
      I5 => \bcd_hun[0]_INST_0_i_3_n_0\,
      O => \bcd_tho[0]_INST_0_i_1_n_0\
    );
\bcd_tho[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001AA000011A8000"
    )
        port map (
      I0 => \^hex_in\(8),
      I1 => \^hex_in\(7),
      I2 => \^hex_in\(11),
      I3 => \^hex_in\(9),
      I4 => \^hex_in\(10),
      I5 => \^hex_in\(6),
      O => \bcd_tho[0]_INST_0_i_2_n_0\
    );
\bcd_tho[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33C08033378313C8"
    )
        port map (
      I0 => \^hex_in\(6),
      I1 => \^hex_in\(8),
      I2 => \^hex_in\(7),
      I3 => \^hex_in\(11),
      I4 => \^hex_in\(9),
      I5 => \^hex_in\(10),
      O => \bcd_tho[0]_INST_0_i_3_n_0\
    );
\bcd_tho[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CF0F1CF38F3F3CF"
    )
        port map (
      I0 => \^hex_in\(6),
      I1 => \^hex_in\(8),
      I2 => \^hex_in\(10),
      I3 => \^hex_in\(11),
      I4 => \^hex_in\(9),
      I5 => \^hex_in\(7),
      O => \bcd_tho[0]_INST_0_i_4_n_0\
    );
\bcd_tho[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C1D5"
    )
        port map (
      I0 => \bcd_tho[2]_INST_0_i_2_n_0\,
      I1 => \bcd_tho[2]_INST_0_i_1_n_0\,
      I2 => \bcd_tho[2]_INST_0_i_3_n_0\,
      I3 => \bcd_tho[1]_INST_0_i_1_n_0\,
      O => \^bcd_tho\(1)
    );
\bcd_tho[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC3BC2CC3B23CCBC"
    )
        port map (
      I0 => \bcd_hun[0]_INST_0_i_3_n_0\,
      I1 => \bcd_tho[2]_INST_0_i_5_n_0\,
      I2 => \bcd_tho[2]_INST_0_i_8_n_0\,
      I3 => \bcd_tho[2]_INST_0_i_7_n_0\,
      I4 => \bcd_tho[2]_INST_0_i_6_n_0\,
      I5 => \bcd_tho[2]_INST_0_i_4_n_0\,
      O => \bcd_tho[1]_INST_0_i_1_n_0\
    );
\bcd_tho[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \bcd_tho[2]_INST_0_i_1_n_0\,
      I1 => \bcd_tho[2]_INST_0_i_2_n_0\,
      I2 => \bcd_tho[2]_INST_0_i_3_n_0\,
      O => \^bcd_tho\(2)
    );
\bcd_tho[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000E000"
    )
        port map (
      I0 => \^hex_in\(8),
      I1 => \^hex_in\(9),
      I2 => \^hex_in\(11),
      I3 => \^hex_in\(10),
      I4 => \^hex_in\(7),
      O => \bcd_tho[2]_INST_0_i_1_n_0\
    );
\bcd_tho[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A7A7A787A7A7A78F"
    )
        port map (
      I0 => \^hex_in\(10),
      I1 => \^hex_in\(9),
      I2 => \^hex_in\(11),
      I3 => \^hex_in\(7),
      I4 => \^hex_in\(8),
      I5 => \^hex_in\(6),
      O => \bcd_tho[2]_INST_0_i_2_n_0\
    );
\bcd_tho[2]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC022BFC"
    )
        port map (
      I0 => \bcd_tho[2]_INST_0_i_4_n_0\,
      I1 => \bcd_tho[2]_INST_0_i_5_n_0\,
      I2 => \bcd_tho[2]_INST_0_i_6_n_0\,
      I3 => \bcd_tho[2]_INST_0_i_7_n_0\,
      I4 => \bcd_tho[2]_INST_0_i_8_n_0\,
      O => \bcd_tho[2]_INST_0_i_3_n_0\
    );
\bcd_tho[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004DF3F34D"
    )
        port map (
      I0 => \^hex_in\(5),
      I1 => \bcd_tho[2]_INST_0_i_5_n_0\,
      I2 => \^hex_in\(6),
      I3 => \bcd_tho[2]_INST_0_i_8_n_0\,
      I4 => \^hex_in\(7),
      I5 => \bcd_hun[0]_INST_0_i_6_n_0\,
      O => \bcd_tho[2]_INST_0_i_4_n_0\
    );
\bcd_tho[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24FBDF2404B2DB04"
    )
        port map (
      I0 => \^hex_in\(7),
      I1 => \^hex_in\(9),
      I2 => \^hex_in\(11),
      I3 => \^hex_in\(10),
      I4 => \^hex_in\(8),
      I5 => \^hex_in\(6),
      O => \bcd_tho[2]_INST_0_i_5_n_0\
    );
\bcd_tho[2]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"71CF"
    )
        port map (
      I0 => \^hex_in\(8),
      I1 => \^hex_in\(9),
      I2 => \^hex_in\(11),
      I3 => \^hex_in\(10),
      O => \bcd_tho[2]_INST_0_i_6_n_0\
    );
\bcd_tho[2]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^hex_in\(10),
      I1 => \^hex_in\(9),
      I2 => \^hex_in\(11),
      O => \bcd_tho[2]_INST_0_i_7_n_0\
    );
\bcd_tho[2]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C7C31CC7"
    )
        port map (
      I0 => \^hex_in\(7),
      I1 => \^hex_in\(9),
      I2 => \^hex_in\(11),
      I3 => \^hex_in\(10),
      I4 => \^hex_in\(8),
      O => \bcd_tho[2]_INST_0_i_8_n_0\
    );
\bcd_uni[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00006669FFFF9006"
    )
        port map (
      I0 => \^hex_in\(3),
      I1 => \bcd_hun[0]_INST_0_i_4_n_0\,
      I2 => \bcd_ten[0]_INST_0_i_1_n_0\,
      I3 => \^hex_in\(2),
      I4 => \bcd_ten[0]_INST_0_i_2_n_0\,
      I5 => \^hex_in\(1),
      O => \^bcd_uni\(1)
    );
\bcd_uni[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF6F0000F00F09F"
    )
        port map (
      I0 => \^hex_in\(3),
      I1 => \bcd_hun[0]_INST_0_i_4_n_0\,
      I2 => \^hex_in\(1),
      I3 => \bcd_ten[0]_INST_0_i_2_n_0\,
      I4 => \^hex_in\(2),
      I5 => \bcd_ten[0]_INST_0_i_1_n_0\,
      O => \^bcd_uni\(2)
    );
\bcd_uni[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9F999FF00090960"
    )
        port map (
      I0 => \^hex_in\(3),
      I1 => \bcd_hun[0]_INST_0_i_4_n_0\,
      I2 => \^hex_in\(1),
      I3 => \bcd_ten[0]_INST_0_i_1_n_0\,
      I4 => \^hex_in\(2),
      I5 => \bcd_ten[0]_INST_0_i_2_n_0\,
      O => \^bcd_uni\(3)
    );
end STRUCTURE;
