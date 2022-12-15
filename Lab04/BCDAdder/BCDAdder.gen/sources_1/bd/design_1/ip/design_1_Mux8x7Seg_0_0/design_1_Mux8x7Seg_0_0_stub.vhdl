-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Nov 24 15:09:46 2022
-- Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/vikto/Experiments/BCDAdder/BCDAdder.gen/sources_1/bd/design_1/ip/design_1_Mux8x7Seg_0_0/design_1_Mux8x7Seg_0_0_stub.vhdl
-- Design      : design_1_Mux8x7Seg_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Mux8x7Seg_0_0 is
  Port ( 
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

end design_1_Mux8x7Seg_0_0;

architecture stub of design_1_Mux8x7Seg_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RESET,d0[3:0],d1[3:0],d2[3:0],d3[3:0],d4[3:0],d5[3:0],d6[3:0],d7[3:0],SEG[6:0],AN[7:0],DP";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mux_8x7seg,Vivado 2022.2";
begin
end;
