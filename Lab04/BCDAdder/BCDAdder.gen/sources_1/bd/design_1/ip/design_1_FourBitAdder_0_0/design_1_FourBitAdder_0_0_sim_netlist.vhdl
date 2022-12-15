-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Nov 24 15:08:45 2022
-- Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/vikto/Experiments/BCDAdder/BCDAdder.gen/sources_1/bd/design_1/ip/design_1_FourBitAdder_0_0/design_1_FourBitAdder_0_0_sim_netlist.vhdl
-- Design      : design_1_FourBitAdder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FourBitAdder_0_0_FullAdder is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FourBitAdder_0_0_FullAdder : entity is "FullAdder";
end design_1_FourBitAdder_0_0_FullAdder;

architecture STRUCTURE of design_1_FourBitAdder_0_0_FullAdder is
begin
Cout_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => B,
      I1 => A,
      I2 => Cin,
      O => Cout
    );
S_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Cin,
      I1 => A,
      I2 => B,
      O => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_FourBitAdder_0_0_FullAdder__1\ is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_FourBitAdder_0_0_FullAdder__1\ : entity is "FullAdder";
end \design_1_FourBitAdder_0_0_FullAdder__1\;

architecture STRUCTURE of \design_1_FourBitAdder_0_0_FullAdder__1\ is
begin
Cout_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => B,
      I1 => A,
      I2 => Cin,
      O => Cout
    );
S_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Cin,
      I1 => A,
      I2 => B,
      O => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_FourBitAdder_0_0_FullAdder__2\ is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_FourBitAdder_0_0_FullAdder__2\ : entity is "FullAdder";
end \design_1_FourBitAdder_0_0_FullAdder__2\;

architecture STRUCTURE of \design_1_FourBitAdder_0_0_FullAdder__2\ is
begin
Cout_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => B,
      I1 => A,
      I2 => Cin,
      O => Cout
    );
S_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Cin,
      I1 => A,
      I2 => B,
      O => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_FourBitAdder_0_0_FullAdder__3\ is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_FourBitAdder_0_0_FullAdder__3\ : entity is "FullAdder";
end \design_1_FourBitAdder_0_0_FullAdder__3\;

architecture STRUCTURE of \design_1_FourBitAdder_0_0_FullAdder__3\ is
begin
Cout_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => B,
      I1 => A,
      I2 => Cin,
      O => Cout
    );
S_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Cin,
      I1 => A,
      I2 => B,
      O => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FourBitAdder_0_0_design_1_FullAdder_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_FourBitAdder_0_0_design_1_FullAdder_0_0 : entity is "design_1_FullAdder_0_0,FullAdder,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FourBitAdder_0_0_design_1_FullAdder_0_0 : entity is "design_1_FullAdder_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_FourBitAdder_0_0_design_1_FullAdder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_FourBitAdder_0_0_design_1_FullAdder_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_FourBitAdder_0_0_design_1_FullAdder_0_0 : entity is "FullAdder,Vivado 2022.2";
end design_1_FourBitAdder_0_0_design_1_FullAdder_0_0;

architecture STRUCTURE of design_1_FourBitAdder_0_0_design_1_FullAdder_0_0 is
begin
U0: entity work.\design_1_FourBitAdder_0_0_FullAdder__1\
     port map (
      A => A,
      B => B,
      Cin => Cin,
      Cout => Cout,
      S => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FourBitAdder_0_0_design_1_FullAdder_1_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_FourBitAdder_0_0_design_1_FullAdder_1_0 : entity is "design_1_FullAdder_1_0,FullAdder,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FourBitAdder_0_0_design_1_FullAdder_1_0 : entity is "design_1_FullAdder_1_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_FourBitAdder_0_0_design_1_FullAdder_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_FourBitAdder_0_0_design_1_FullAdder_1_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_FourBitAdder_0_0_design_1_FullAdder_1_0 : entity is "FullAdder,Vivado 2022.2";
end design_1_FourBitAdder_0_0_design_1_FullAdder_1_0;

architecture STRUCTURE of design_1_FourBitAdder_0_0_design_1_FullAdder_1_0 is
begin
U0: entity work.\design_1_FourBitAdder_0_0_FullAdder__2\
     port map (
      A => A,
      B => B,
      Cin => Cin,
      Cout => Cout,
      S => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FourBitAdder_0_0_design_1_FullAdder_2_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_FourBitAdder_0_0_design_1_FullAdder_2_0 : entity is "design_1_FullAdder_2_0,FullAdder,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FourBitAdder_0_0_design_1_FullAdder_2_0 : entity is "design_1_FullAdder_2_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_FourBitAdder_0_0_design_1_FullAdder_2_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_FourBitAdder_0_0_design_1_FullAdder_2_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_FourBitAdder_0_0_design_1_FullAdder_2_0 : entity is "FullAdder,Vivado 2022.2";
end design_1_FourBitAdder_0_0_design_1_FullAdder_2_0;

architecture STRUCTURE of design_1_FourBitAdder_0_0_design_1_FullAdder_2_0 is
begin
U0: entity work.\design_1_FourBitAdder_0_0_FullAdder__3\
     port map (
      A => A,
      B => B,
      Cin => Cin,
      Cout => Cout,
      S => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FourBitAdder_0_0_design_1_FullAdder_3_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_FourBitAdder_0_0_design_1_FullAdder_3_0 : entity is "design_1_FullAdder_3_0,FullAdder,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FourBitAdder_0_0_design_1_FullAdder_3_0 : entity is "design_1_FullAdder_3_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_FourBitAdder_0_0_design_1_FullAdder_3_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_FourBitAdder_0_0_design_1_FullAdder_3_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_FourBitAdder_0_0_design_1_FullAdder_3_0 : entity is "FullAdder,Vivado 2022.2";
end design_1_FourBitAdder_0_0_design_1_FullAdder_3_0;

architecture STRUCTURE of design_1_FourBitAdder_0_0_design_1_FullAdder_3_0 is
begin
U0: entity work.design_1_FourBitAdder_0_0_FullAdder
     port map (
      A => A,
      B => B,
      Cin => Cin,
      Cout => Cout,
      S => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FourBitAdder_0_0_design_1 is
  port (
    S_0 : out STD_LOGIC;
    S_1 : out STD_LOGIC;
    S_2 : out STD_LOGIC;
    S_3 : out STD_LOGIC;
    Cout : out STD_LOGIC;
    A_0 : in STD_LOGIC;
    B_0 : in STD_LOGIC;
    Cin : in STD_LOGIC;
    A_1 : in STD_LOGIC;
    B_1 : in STD_LOGIC;
    A_2 : in STD_LOGIC;
    B_2 : in STD_LOGIC;
    A_3 : in STD_LOGIC;
    B_3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FourBitAdder_0_0_design_1 : entity is "design_1";
end design_1_FourBitAdder_0_0_design_1;

architecture STRUCTURE of design_1_FourBitAdder_0_0_design_1 is
  signal FullAdder_0_Cout : STD_LOGIC;
  signal FullAdder_1_Cout : STD_LOGIC;
  signal FullAdder_2_Cout : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FullAdder_0 : label is "design_1_FullAdder_0_0,FullAdder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FullAdder_0 : label is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FullAdder_0 : label is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of FullAdder_0 : label is "FullAdder,Vivado 2022.2";
  attribute CHECK_LICENSE_TYPE of FullAdder_1 : label is "design_1_FullAdder_1_0,FullAdder,{}";
  attribute downgradeipidentifiedwarnings of FullAdder_1 : label is "yes";
  attribute ip_definition_source of FullAdder_1 : label is "package_project";
  attribute x_core_info of FullAdder_1 : label is "FullAdder,Vivado 2022.2";
  attribute CHECK_LICENSE_TYPE of FullAdder_2 : label is "design_1_FullAdder_2_0,FullAdder,{}";
  attribute downgradeipidentifiedwarnings of FullAdder_2 : label is "yes";
  attribute ip_definition_source of FullAdder_2 : label is "package_project";
  attribute x_core_info of FullAdder_2 : label is "FullAdder,Vivado 2022.2";
  attribute CHECK_LICENSE_TYPE of FullAdder_3 : label is "design_1_FullAdder_3_0,FullAdder,{}";
  attribute downgradeipidentifiedwarnings of FullAdder_3 : label is "yes";
  attribute ip_definition_source of FullAdder_3 : label is "package_project";
  attribute x_core_info of FullAdder_3 : label is "FullAdder,Vivado 2022.2";
begin
FullAdder_0: entity work.design_1_FourBitAdder_0_0_design_1_FullAdder_0_0
     port map (
      A => A_0,
      B => B_0,
      Cin => Cin,
      Cout => FullAdder_0_Cout,
      S => S_0
    );
FullAdder_1: entity work.design_1_FourBitAdder_0_0_design_1_FullAdder_1_0
     port map (
      A => A_1,
      B => B_1,
      Cin => FullAdder_0_Cout,
      Cout => FullAdder_1_Cout,
      S => S_1
    );
FullAdder_2: entity work.design_1_FourBitAdder_0_0_design_1_FullAdder_2_0
     port map (
      A => A_2,
      B => B_2,
      Cin => FullAdder_1_Cout,
      Cout => FullAdder_2_Cout,
      S => S_2
    );
FullAdder_3: entity work.design_1_FourBitAdder_0_0_design_1_FullAdder_3_0
     port map (
      A => A_3,
      B => B_3,
      Cin => FullAdder_2_Cout,
      Cout => Cout,
      S => S_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FourBitAdder_0_0_design_1_wrapper is
  port (
    A_0 : in STD_LOGIC;
    A_1 : in STD_LOGIC;
    A_2 : in STD_LOGIC;
    A_3 : in STD_LOGIC;
    B_0 : in STD_LOGIC;
    B_1 : in STD_LOGIC;
    B_2 : in STD_LOGIC;
    B_3 : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    S_0 : out STD_LOGIC;
    S_1 : out STD_LOGIC;
    S_2 : out STD_LOGIC;
    S_3 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FourBitAdder_0_0_design_1_wrapper : entity is "design_1_wrapper";
end design_1_FourBitAdder_0_0_design_1_wrapper;

architecture STRUCTURE of design_1_FourBitAdder_0_0_design_1_wrapper is
begin
design_1_i: entity work.design_1_FourBitAdder_0_0_design_1
     port map (
      A_0 => A_0,
      A_1 => A_1,
      A_2 => A_2,
      A_3 => A_3,
      B_0 => B_0,
      B_1 => B_1,
      B_2 => B_2,
      B_3 => B_3,
      Cin => Cin,
      Cout => Cout,
      S_0 => S_0,
      S_1 => S_1,
      S_2 => S_2,
      S_3 => S_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FourBitAdder_0_0 is
  port (
    A_0 : in STD_LOGIC;
    A_1 : in STD_LOGIC;
    A_2 : in STD_LOGIC;
    A_3 : in STD_LOGIC;
    B_0 : in STD_LOGIC;
    B_1 : in STD_LOGIC;
    B_2 : in STD_LOGIC;
    B_3 : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    S_0 : out STD_LOGIC;
    S_1 : out STD_LOGIC;
    S_2 : out STD_LOGIC;
    S_3 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_FourBitAdder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_FourBitAdder_0_0 : entity is "design_1_FourBitAdder_0_0,design_1_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_FourBitAdder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_FourBitAdder_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_FourBitAdder_0_0 : entity is "design_1_wrapper,Vivado 2022.2";
end design_1_FourBitAdder_0_0;

architecture STRUCTURE of design_1_FourBitAdder_0_0 is
begin
U0: entity work.design_1_FourBitAdder_0_0_design_1_wrapper
     port map (
      A_0 => A_0,
      A_1 => A_1,
      A_2 => A_2,
      A_3 => A_3,
      B_0 => B_0,
      B_1 => B_1,
      B_2 => B_2,
      B_3 => B_3,
      Cin => Cin,
      Cout => Cout,
      S_0 => S_0,
      S_1 => S_1,
      S_2 => S_2,
      S_3 => S_3
    );
end STRUCTURE;
