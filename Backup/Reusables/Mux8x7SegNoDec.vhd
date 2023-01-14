library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Mux8x7SegNoDec is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           d0 : in std_logic_vector(6 downto 0);
           d1 : in std_logic_vector(6 downto 0);
           d2 : in std_logic_vector(6 downto 0);
           d3 : in std_logic_vector(6 downto 0);
           d4 : in std_logic_vector(6 downto 0);
           d5 : in std_logic_vector(6 downto 0);
           d6 : in std_logic_vector(6 downto 0);
           d7 : in std_logic_vector(6 downto 0);
           SEG : out std_logic_vector(6 downto 0);
           AN : out std_logic_vector(7 downto 0);
           DP : out std_logic );
end Mux8x7SegNoDec;

architecture Behavioral of Mux8x7SegNoDec is

component clk_divider is
	Generic ( limit : integer := 50_000_000	);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_div : out STD_LOGIC);
end component;

signal sclk : std_logic := '0';

begin

--CLOCK DIVIDER-- : 100MHz to 500Hz
CLK256Hz: clk_divider
generic map( limit => 100_000 )
port map(
    clk => clk,
    reset => reset,
    clk_div => sclk
);

DP <= '1';

--MUX FOR 8 DISPLAYS--
process(sclk, reset)
variable counter : integer range 1 to 8 := 1;
begin
    if reset = '1' then
        counter := 1;
    elsif rising_edge(sclk) then		
        case counter is
            when 1 =>   AN <= "01111111";
                        SEG <= d0;
            when 2 =>   AN <= "10111111";   
                        SEG <= d1;
            when 3 =>   AN <= "11011111";
                        SEG <= d2;
            when 4 =>   AN <= "11101111";
                        SEG <= d3;
            when 5 =>   AN <= "11110111";
                        SEG <= d4;
            when 6 =>   AN <= "11111011";
                        SEG <= d5;
            when 7 =>   AN <= "11111101";
                        SEG <= d6;
            when 8 =>   AN <= "11111110";
                        SEG <= d7;
            when others => AN <= "11111111";
                           SEG <= (others => '1');
        end case;
        if counter = 8 then
			counter := 1;
		else
			counter := counter + 1;
		end if;
    end if;
end process;

end Behavioral;
