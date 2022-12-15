-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Nov 24 16:28:35 2022
-- Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/vikto/Experiments/BCDAdder/BCDAdder.gen/sources_1/bd/design_1/ip/design_1_DoubleDabbler12Bit_0_0/design_1_DoubleDabbler12Bit_0_0_stub.vhdl
-- Design      : design_1_DoubleDabbler12Bit_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_DoubleDabbler12Bit_0_0 is
  Port ( 
    hex_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    bcd_tho : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd_hun : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd_ten : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd_uni : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_DoubleDabbler12Bit_0_0;

architecture stub of design_1_DoubleDabbler12Bit_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "hex_in[11:0],bcd_tho[3:0],bcd_hun[3:0],bcd_ten[3:0],bcd_uni[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "DoubleDabbler12Bit,Vivado 2022.2";
begin
end;
