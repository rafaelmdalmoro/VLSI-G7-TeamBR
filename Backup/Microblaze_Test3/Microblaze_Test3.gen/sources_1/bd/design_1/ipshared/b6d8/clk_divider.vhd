library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity clk_divider is
	Generic ( limit : integer := 50_000_000	);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_div : out STD_LOGIC);
end clk_divider;

architecture Behavioral of clk_divider is

signal sclk : std_logic := '0';		-- Output clock

begin

clk_div <= sclk;

process(clk, reset)
	variable counter : integer range 1 to limit := 1;
begin
    if reset = '1' then
        sclk <= '0';
        counter := 1;
    elsif rising_edge(clk) then
        if counter = limit then
            counter := 1;
            sclk <= not sclk;
        else
            counter := counter + 1;
        end if;
    end if;
end process;

end Behavioral;
