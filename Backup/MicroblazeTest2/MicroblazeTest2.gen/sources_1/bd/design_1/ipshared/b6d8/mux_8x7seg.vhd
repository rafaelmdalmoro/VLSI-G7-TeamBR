library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity mux_8x7seg is
    Generic ( NoDecoder : natural := 0 );
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           d0 : in std_logic_vector(3*(NoDecoder + 1) downto 0);
           d1 : in std_logic_vector(3*(NoDecoder + 1) downto 0);
           d2 : in std_logic_vector(3*(NoDecoder + 1) downto 0);
           d3 : in std_logic_vector(3*(NoDecoder + 1) downto 0);
           d4 : in std_logic_vector(3*(NoDecoder + 1) downto 0);
           d5 : in std_logic_vector(3*(NoDecoder + 1) downto 0);
           d6 : in std_logic_vector(3*(NoDecoder + 1) downto 0);
           d7 : in std_logic_vector(3*(NoDecoder + 1) downto 0);
           SEG : out std_logic_vector(6 downto 0);
           AN : out std_logic_vector(7 downto 0);
           DP : out std_logic );
end mux_8x7seg;

architecture Behavioral of mux_8x7seg is

component clk_divider is
	Generic ( limit : integer := 50_000_000	);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_div : out STD_LOGIC);
end component;

component decoder_4bit_to_7seg is
    Port ( number : in STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal sclk : std_logic := '0';
signal bcd : std_logic_vector(3*(NoDecoder + 1) downto 0);

begin

--CLOCK DIVIDER-- : 100MHz to 500Hz
CLK256Hz: clk_divider
generic map( limit => 100_000 )
port map(
    clk => clk,
    reset => reset,
    clk_div => sclk
);

--7SEG DECODER--
EnableDecoder: if NoDecoder = 0 generate
    DECODER: decoder_4bit_to_7seg
    port map(
        number => bcd,
        seg => SEG
    );
end generate EnableDecoder;

DisableDecoder: if NoDecoder = 1 generate
    SEG <= bcd;
end generate DisableDecoder;

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
                        dp <= '1';
            when 2 =>   an <= "10111111";   
                        bcd <= d1;
                        dp <= '1';
            when 3 =>   an <= "11011111";
                        bcd <= d2;
                        dp <= '1';
            when 4 =>   an <= "11101111";
                        bcd <= d3;
                        dp <= '1';
            when 5 =>   an <= "11110111";
                        bcd <= d4;
                        dp <= '1';
            when 6 =>   an <= "11111011";
                        bcd <= d5;
                        dp <= '1';
            when 7 =>   an <= "11111101";
                        bcd <= d6;
                        dp <= '1';
            when 8 =>   an <= "11111110";
                        bcd <= d7;
                        dp <= '1';
            when others => an <= "11111111";
                           bcd <= (others => '0');
        end case;
        if counter = 8 then
			counter := 1;
		else
			counter := counter + 1;
		end if;
    end if;
end process;

end Behavioral;
