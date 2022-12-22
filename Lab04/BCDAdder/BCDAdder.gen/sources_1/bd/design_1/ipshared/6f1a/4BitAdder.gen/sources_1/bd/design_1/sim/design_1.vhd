--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Thu Nov 24 14:15:34 2022
--Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_FullAdder_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  end component design_1_FullAdder_0_0;
  component design_1_FullAdder_1_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  end component design_1_FullAdder_1_0;
  component design_1_FullAdder_2_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  end component design_1_FullAdder_2_0;
  component design_1_FullAdder_3_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  end component design_1_FullAdder_3_0;
  signal A_0_1 : STD_LOGIC;
  signal A_1_1 : STD_LOGIC;
  signal A_2_1 : STD_LOGIC;
  signal A_3_1 : STD_LOGIC;
  signal B_0_1 : STD_LOGIC;
  signal B_1_1 : STD_LOGIC;
  signal B_2_1 : STD_LOGIC;
  signal B_3_1 : STD_LOGIC;
  signal Cin_0_1 : STD_LOGIC;
  signal FullAdder_0_Cout : STD_LOGIC;
  signal FullAdder_0_S : STD_LOGIC;
  signal FullAdder_1_Cout : STD_LOGIC;
  signal FullAdder_1_S : STD_LOGIC;
  signal FullAdder_2_Cout : STD_LOGIC;
  signal FullAdder_2_S : STD_LOGIC;
  signal FullAdder_3_Cout : STD_LOGIC;
  signal FullAdder_3_S : STD_LOGIC;
begin
  A_0_1 <= A_0;
  A_1_1 <= A_1;
  A_2_1 <= A_2;
  A_3_1 <= A_3;
  B_0_1 <= B_0;
  B_1_1 <= B_1;
  B_2_1 <= B_2;
  B_3_1 <= B_3;
  Cin_0_1 <= Cin;
  Cout <= FullAdder_3_Cout;
  S_0 <= FullAdder_0_S;
  S_1 <= FullAdder_1_S;
  S_2 <= FullAdder_2_S;
  S_3 <= FullAdder_3_S;
FullAdder_0: component design_1_FullAdder_0_0
     port map (
      A => A_0_1,
      B => B_0_1,
      Cin => Cin_0_1,
      Cout => FullAdder_0_Cout,
      S => FullAdder_0_S
    );
FullAdder_1: component design_1_FullAdder_1_0
     port map (
      A => A_1_1,
      B => B_1_1,
      Cin => FullAdder_0_Cout,
      Cout => FullAdder_1_Cout,
      S => FullAdder_1_S
    );
FullAdder_2: component design_1_FullAdder_2_0
     port map (
      A => A_2_1,
      B => B_2_1,
      Cin => FullAdder_1_Cout,
      Cout => FullAdder_2_Cout,
      S => FullAdder_2_S
    );
FullAdder_3: component design_1_FullAdder_3_0
     port map (
      A => A_3_1,
      B => B_3_1,
      Cin => FullAdder_2_Cout,
      Cout => FullAdder_3_Cout,
      S => FullAdder_3_S
    );
end STRUCTURE;
