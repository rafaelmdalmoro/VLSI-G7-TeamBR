-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Nov 24 15:08:45 2022
-- Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/vikto/Experiments/BCDAdder/BCDAdder.gen/sources_1/bd/design_1/ip/design_1_FourBitAdder_0_0/design_1_FourBitAdder_0_0_stub.vhdl
-- Design      : design_1_FourBitAdder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_FourBitAdder_0_0 is
  Port ( 
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

end design_1_FourBitAdder_0_0;

architecture stub of design_1_FourBitAdder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A_0,A_1,A_2,A_3,B_0,B_1,B_2,B_3,Cin,Cout,S_0,S_1,S_2,S_3";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "design_1_wrapper,Vivado 2022.2";
begin
end;
