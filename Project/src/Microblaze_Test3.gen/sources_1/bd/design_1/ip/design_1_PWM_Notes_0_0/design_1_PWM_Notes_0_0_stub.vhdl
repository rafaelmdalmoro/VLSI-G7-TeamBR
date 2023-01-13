-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Jan 10 14:24:21 2023
-- Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/vikto/Experiments/Microblaze_Test3/Microblaze_Test3.gen/sources_1/bd/design_1/ip/design_1_PWM_Notes_0_0/design_1_PWM_Notes_0_0_stub.vhdl
-- Design      : design_1_PWM_Notes_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_PWM_Notes_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    PWM_EN : in STD_LOGIC;
    NOTE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AUD_PWM : out STD_LOGIC
  );

end design_1_PWM_Notes_0_0;

architecture stub of design_1_PWM_Notes_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RESET,PWM_EN,NOTE[3:0],AUD_PWM";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "top,Vivado 2022.2";
begin
end;
