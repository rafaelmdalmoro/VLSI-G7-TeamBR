----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.01.2023 13:52:12
-- Design Name: 
-- Module Name: tb_top - Behavioral
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

entity tb_top is
--  Port ( );
end tb_top;

architecture Behavioral of tb_top is

component top is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           PWM_EN : in STD_LOGIC;
           NOTE : in STD_LOGIC_VECTOR (3 downto 0);
           AUD_PWM : out STD_LOGIC);
end component;

signal sclk, sreset, saud_pwm, spwm_en : std_logic := '0';
signal ssw : std_logic_vector(3 downto 0) := (others=>'0');

begin

UUT: top port map(
    CLK     => sclk,
    RESET   => sreset,
    PWM_EN  => spwm_en,
    NOTE    => ssw,
    AUD_PWM => saud_pwm
);

sclk <= not sclk after 5 ns;
sreset <= '1' after 20 ns;
spwm_en <= '1' after 30 ns;
ssw <= "0001" after 2 ms,
       "0010" after 4 ms,
       "0011" after 6 ms,
       "0100" after 8 ms,
       "1111" after 10 ms,
       "1100" after 12 ms;

end Behavioral;
