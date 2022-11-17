library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity mux_8x7seg is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           d0 : in std_logic_vector(3 downto 0);
           d1 : in std_logic_vector(3 downto 0);
           d2 : in std_logic_vector(3 downto 0);
           d3 : in std_logic_vector(3 downto 0);
           d4 : in std_logic_vector(3 downto 0);
           d5 : in std_logic_vector(3 downto 0);
           d6 : in std_logic_vector(3 downto 0);
           d7 : in std_logic_vector(3 downto 0);
           bcd : out std_logic_vector (3 downto 0);
           an : out STD_LOGIC_VECTOR (7 downto 0));
end mux_8x7seg;

architecture Behavioral of mux_8x7seg is

component clk_divider is
	Generic ( limit : integer := 50_000_000	);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_div : out STD_LOGIC);
end component;

signal sclk : std_logic := '0';
signal s_seg : std_logic_vector(6 downto 0);

begin

--CLOCK DIVIDER-- : 100MHz to 256Hz
CLK256Hz: clk_divider
generic map( limit => 390_625 )
port map(
    clk => clk,
    reset => reset,
    clk_div => sclk
);

----CLOCK DIVIDER--
--process(clk, reset)
--	variable counter : integer range 1 to 390_625 := 0;	-- 100MHz to 256Hz
--begin
--	if reset = '1' then
--		sclk <= '0';
--		counter := 1;
--	elsif rising_edge(clk) then
--		if counter = 390_625 then
--			counter := 1;
--			sclk <= not sclk;
--		else
--			counter := counter + 1;
--		end if;
--	end if;
--end process;

--MUX FOR 8 DISPLAYS--
process(sclk, reset)
variable counter : integer range 1 to 8 := 1;
begin
    if reset = '1' then
        counter := 1;
    elsif rising_edge(sclk) then		
        case counter is
            when 1 =>   an <= "01111111";
                        bcd <= d0;
            when 2 =>   an <= "10111111";   
                        bcd <= d1;
            when 3 =>   an <= "11011111";
                        bcd <= d2;
            when 4 =>   an <= "11101111";
                        bcd <= d3;
            when 5 =>   an <= "11110111";
                        bcd <= d4;
            when 6 =>   an <= "11111011";
                        bcd <= d5;
            when 7 =>   an <= "11111101";
                        bcd <= d6;
            when 8 =>   an <= "11111110";
                        bcd <= d7;
            when others => an <= "11111111";
                           bcd <="0000";
        end case;
        if counter = 8 then
			counter := 1;
		else
			counter := counter + 1;
		end if;
    end if;
end process;

end Behavioral;
