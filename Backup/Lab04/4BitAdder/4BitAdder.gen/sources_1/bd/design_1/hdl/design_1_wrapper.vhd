--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Thu Nov 24 14:15:34 2022
--Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
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
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
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
    S_0 : out STD_LOGIC;
    S_1 : out STD_LOGIC;
    S_2 : out STD_LOGIC;
    S_3 : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
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
