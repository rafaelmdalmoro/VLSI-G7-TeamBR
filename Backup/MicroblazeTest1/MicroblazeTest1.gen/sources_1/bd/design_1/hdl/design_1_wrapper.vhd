--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Thu Dec 22 14:09:39 2022
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
    LED_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reset : in STD_LOGIC;
    sevseg_an_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sevseg_seg_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    LED_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    sevseg_seg_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sevseg_an_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      LED_tri_o(15 downto 0) => LED_tri_o(15 downto 0),
      push_buttons_5bits_tri_i(4 downto 0) => push_buttons_5bits_tri_i(4 downto 0),
      reset => reset,
      sevseg_an_tri_o(7 downto 0) => sevseg_an_tri_o(7 downto 0),
      sevseg_seg_tri_o(7 downto 0) => sevseg_seg_tri_o(7 downto 0),
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;
