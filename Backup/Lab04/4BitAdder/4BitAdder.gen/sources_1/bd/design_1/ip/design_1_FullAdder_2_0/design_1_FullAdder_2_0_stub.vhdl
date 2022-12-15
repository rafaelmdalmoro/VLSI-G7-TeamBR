-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Nov 24 13:35:20 2022
-- Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_FullAdder_2_0 -prefix
--               design_1_FullAdder_2_0_ FullAdder_0_stub.vhdl
-- Design      : FullAdder_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_FullAdder_2_0 is
  Port ( 
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );

end design_1_FullAdder_2_0;

architecture stub of design_1_FullAdder_2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,B,Cin,S,Cout";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "FullAdder,Vivado 2022.2";
begin
end;
