----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.01.2023 19:28:48
-- Design Name: 
-- Module Name: tb_pwm - Behavioral
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

entity tb_pwm is
--  Port ( );
end tb_pwm;

architecture Behavioral of tb_pwm is

component pwm IS
  GENERIC(
      sys_clk         : INTEGER := 50_000_000; --system clock frequency in Hz
      pwm_freq        : INTEGER := 100_000;    --PWM switching frequency in Hz
      bits_resolution : INTEGER := 8;          --bits of resolution setting the duty cycle
      phases          : INTEGER := 1);         --number of output pwms and phases
  PORT(
      clk       : IN  STD_LOGIC;                                    --system clock
      reset_n   : IN  STD_LOGIC;                                    --asynchronous reset
      ena       : IN  STD_LOGIC;                                    --latches in new duty cycle
      duty      : IN  STD_LOGIC_VECTOR(bits_resolution-1 DOWNTO 0); --duty cycle
      pwm_out   : OUT STD_LOGIC_VECTOR(phases-1 DOWNTO 0);          --pwm outputs
      pwm_n_out : OUT STD_LOGIC_VECTOR(phases-1 DOWNTO 0));         --pwm inverse outputs
END component;

signal sclk, sreset_n, sena : std_logic := '0';
signal sduty : std_logic_vector (7 downto 0) := (others=>'0');
signal spwm_out, spwm_n_out : std_logic_vector(0 downto 0);

begin

UUT: pwm
generic map(
    sys_clk         => 100_000_000,
    pwm_freq        => 100_000,
    bits_resolution => 8,
    phases          => 1
)
port map(
    clk         => sclk,
    reset_n     => sreset_n,
    ena         => sena,
    duty        => sduty,
    pwm_out     => spwm_out,
    pwm_n_out   => spwm_n_out
);

sclk <= not sclk after 5 ns;
sreset_n <= '1' after 10 ns;
sena <= '1' after 30 ns;
sduty <= "00000001" after 50 us,
         "00000010" after 150 us,
         "00000100" after 250 us,
         "00001111" after 350 us,
         "11111111" after 450 us;

end Behavioral;
