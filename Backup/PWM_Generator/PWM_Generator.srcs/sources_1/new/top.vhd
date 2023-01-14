----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2023 16:04:46
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( CLK : in STD_LOGIC;
           CPU_RESETN : in STD_LOGIC;
           SW : in STD_LOGIC_VECTOR(8 downto 0);
           JA : out STD_LOGIC
           );
end top;

architecture Behavioral of top is

component pwm IS
  GENERIC(
      sys_clk         : INTEGER := 100_000_000; --system clock frequency in Hz
      pwm_freq        : INTEGER := 100_000;     --PWM switching frequency in Hz
      bits_resolution : INTEGER := 8;           --bits of resolution setting the duty cycle
      phases          : INTEGER := 1);          --number of output pwms and phases
  PORT(
      clk       : IN  STD_LOGIC;                                    --system clock
      reset_n   : IN  STD_LOGIC;                                    --asynchronous reset
      ena       : IN  STD_LOGIC;                                    --latches in new duty cycle
      duty      : IN  STD_LOGIC_VECTOR(bits_resolution-1 DOWNTO 0); --duty cycle
      pwm_out   : OUT STD_LOGIC_VECTOR(phases-1 DOWNTO 0);          --pwm outputs
      pwm_n_out : OUT STD_LOGIC_VECTOR(phases-1 DOWNTO 0));         --pwm inverse outputs
END component;

begin

UUT: pwm
port map(
    clk     => CLK,
    reset_n => CPU_RESETN,
    ena     => SW(0),
    duty    => SW(8 downto 1),
    pwm_out(0) => JA,
    pwm_n_out => open
);

end Behavioral;
