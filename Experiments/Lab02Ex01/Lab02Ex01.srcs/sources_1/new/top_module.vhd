----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2022 09:03:32
-- Design Name: 
-- Module Name: top_module - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_module is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           LED : out STD_LOGIC_VECTOR (15 downto 0);
           AN : out STD_LOGIC_VECTOR (7 downto 0));
end top_module;

architecture Behavioral of top_module is

signal jumping_led : std_logic_vector (15 downto 0) := ( 0=>'1', others=>'0' ); -- Initializes as 1
signal sclk : std_logic := '0';

begin

--CLOCK DIVIDER--
process(clk, reset)
constant limit : integer := 50_000_000;             -- Upper limit for counter
variable counter : integer range 1 to limit := 1;	-- Counter for 100MHz to 1Hz
begin
    if reset = '1' then
        sclk <= '0';
        counter := 1;
        jumping_led <= ( 0=>'1', others=>'0' );
    elsif rising_edge(clk) then
        if enable = '1' then
            if counter = limit then
                counter := 1;
                sclk <= not sclk;
                jumping_led <= std_logic_vector(rotate_left(unsigned(jumping_led), 1));
            else
                counter := counter + 1;
            end if;
        end if;
    end if;
end process;

LED <= jumping_led;
AN <= (others => '1');

end Behavioral;
