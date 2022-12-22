--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Thu Nov 24 16:27:14 2022
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
    AN : out STD_LOGIC_VECTOR ( 0 to 7 );
    A_0 : in STD_LOGIC;
    A_1 : in STD_LOGIC;
    A_2 : in STD_LOGIC;
    A_3 : in STD_LOGIC;
    B_0 : in STD_LOGIC;
    B_1 : in STD_LOGIC;
    B_2 : in STD_LOGIC;
    B_3 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Cin : in STD_LOGIC;
    DP : out STD_LOGIC;
    RESET : in STD_LOGIC;
    SEG : out STD_LOGIC_VECTOR ( 0 to 6 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    A_0 : in STD_LOGIC;
    A_1 : in STD_LOGIC;
    A_2 : in STD_LOGIC;
    A_3 : in STD_LOGIC;
    B_0 : in STD_LOGIC;
    B_1 : in STD_LOGIC;
    B_2 : in STD_LOGIC;
    B_3 : in STD_LOGIC;
    Cin : in STD_LOGIC;
    SEG : out STD_LOGIC_VECTOR ( 6 downto 0 );
    AN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DP : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      AN(7 downto 0) => AN(0 to 7),
      A_0 => A_0,
      A_1 => A_1,
      A_2 => A_2,
      A_3 => A_3,
      B_0 => B_0,
      B_1 => B_1,
      B_2 => B_2,
      B_3 => B_3,
      CLK => CLK,
      Cin => Cin,
      DP => DP,
      RESET => RESET,
      SEG(6 downto 0) => SEG(0 to 6)
    );
end STRUCTURE;
