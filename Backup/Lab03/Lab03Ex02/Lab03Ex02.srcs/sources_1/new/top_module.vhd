----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.11.2022 14:47:51
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
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           ENABLE : in STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (0 to 7);
           SEG : out STD_LOGIC_VECTOR (6 downto 0);
           LED : out STD_LOGIC_VECTOR (5 downto 0);
           DP : out STD_LOGIC);
end top_module;

architecture Behavioral of top_module is

component clk_divider is
	Generic ( limit : integer := 50_000_000	);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_div : out STD_LOGIC);
end component;

component mux_8x7seg is
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
           an : out STD_LOGIC_VECTOR (7 downto 0);
           dp : out std_logic );
end component;

component decoder_4bit_to_7seg is
    Port ( number : in STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal clk_100Hz : std_logic := '0';
signal digito : std_logic_vector (3 downto 0) := (others=>'0');

signal hsec : integer range 0 to 9 := 0;
signal hsec_ready : std_logic := '0';
signal d_hsec : std_logic_vector (3 downto 0) := (others=>'0');
signal dsec : integer range 0 to 9 := 0;
signal dsec_ready : std_logic := '0';
signal d_dsec : std_logic_vector (3 downto 0) := (others=>'0');
signal sec : integer range 0 to 9 := 0;
signal sec_ready : std_logic := '0';
signal d_sec : std_logic_vector (3 downto 0) := (others=>'0');
signal tsec : integer range 0 to 5 := 0;
signal tsec_ready : std_logic := '0';
signal d_tsec : std_logic_vector (3 downto 0) := (others=>'0');
signal min : integer range 0 to 9 := 0;
signal min_ready : std_logic := '0';
signal d_min : std_logic_vector (3 downto 0) := (others=>'0');
signal tmin : integer range 0 to 5 := 0;
signal tmin_ready : std_logic := '0';
signal d_tmin : std_logic_vector (3 downto 0) := (others=>'0');
signal hour : integer range 0 to 9 := 0;
signal d_hour : std_logic_vector (3 downto 0) := (others=>'0');

begin

CLK100Hz: clk_divider
generic map( limit => 500_000 )
port map(
    clk => CLK,
    reset => reset,
    clk_div => clk_100Hz
);

DECODER: decoder_4bit_to_7seg
port map (
    number => digito,
    seg => SEG
);

MUX: mux_8x7seg
port map(
    clk => CLK,
    reset => reset,
    d0 => d_hsec,
    d1 => d_dsec,
    d2 => d_sec,
    d3 => d_tsec,
    d4 => d_min,
    d5 => d_tmin,
    d6 => d_hour,
    d7 => (others => '0'),
    bcd => digito,
    an => AN,
    dp => DP
);

d_hsec <= std_logic_vector(TO_UNSIGNED(hsec, 4));
d_dsec <= std_logic_vector(TO_UNSIGNED(dsec, 4));
d_sec <= std_logic_vector(TO_UNSIGNED(sec, 4));
d_tsec <= std_logic_vector(TO_UNSIGNED(tsec, 4));
d_min <= std_logic_vector(TO_UNSIGNED(min, 4));
d_tmin <= std_logic_vector(TO_UNSIGNED(tmin, 4));
d_hour <= std_logic_vector(TO_UNSIGNED(hour, 4));

LED(0) <= hsec_ready;
LED(1) <= dsec_ready;
LED(2) <= sec_ready;
LED(3) <= tsec_ready;
LED(4) <= min_ready;
LED(5) <= tmin_ready;

--DIGIT FOR HUNDREDTHS OF SECONDS--
process(clk_100Hz, RESET)
begin
    if RESET = '1' then
        hsec <= 0;
    elsif rising_edge(clk_100Hz) then
        if ENABLE = '1' then
            if hsec = 9 then
                hsec <= 0;
                hsec_ready <= '1';
            else
                hsec <= hsec + 1;
                hsec_ready <= '0';
            end if;
        end if;
    end if;
end process;

--DIGIT FOR TENTHS OF SECONDS--
process(hsec_ready, reset)
begin
    if reset = '1' then
        dsec <= 0;
    elsif rising_edge(hsec_ready) then
        if dsec = 9 then
            dsec <= 0;
            dsec_ready <= '1';
        else
            dsec <= dsec + 1;
            dsec_ready <= '0';
        end if;
    end if;
end process;

--DIGIT FOR SECONDS--
process(dsec_ready, reset)
begin
    if reset = '1' then
        sec <= 0;
    elsif rising_edge(dsec_ready) then
        if sec = 9 then
            sec <= 0;
            sec_ready <= '1';
        else
            sec <= sec + 1;
            sec_ready <= '0';
        end if;
    end if;
end process;

--DIGIT FOR TENS OF SECONDS--
process(sec_ready, reset)
begin
    if reset = '1' then
        tsec <= 0;
    elsif rising_edge(sec_ready) then
        if tsec = 5 then
            tsec <= 0;
            tsec_ready <= '1';
        else
            tsec <= tsec + 1;
            tsec_ready <= '0';
        end if;
    end if;
end process;

--DIGIT FOR MINUTES--
process(tsec_ready, reset)
begin
    if reset = '1' then
        min <= 0;
    elsif rising_edge(tsec_ready) then
        if min = 9 then
            min <= 0;
            min_ready <= '1';
        else
            min <= min + 1;
            min_ready <= '0';
        end if;
    end if;
end process;

--DIGIT FOR TENS OF MINUTES--
process(min_ready, reset)
begin
    if reset = '1' then
        tmin <= 0;
    elsif rising_edge(min_ready) then
        if tmin = 5 then
            tmin <= 0;
            tmin_ready <= '1';
        else
            tmin <= tmin + 1;
            tmin_ready <= '0';
        end if;
    end if;
end process;

--DIGIT FOR HOURS--
process(tmin_ready, reset)
begin
    if reset = '1' then
        hour <= 0;
    elsif rising_edge(tmin_ready) then
        if hour = 5 then
            hour <= 0;
        else
            hour <= hour + 1;
        end if;
    end if;
end process;

end Behavioral;
