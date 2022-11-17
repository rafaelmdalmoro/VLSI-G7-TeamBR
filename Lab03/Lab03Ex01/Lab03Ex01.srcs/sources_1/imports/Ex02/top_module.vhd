----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2022 22:42:34
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
           UPDOWN : in STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (0 to 7);
           SEG : out STD_LOGIC_VECTOR (6 downto 0));
end top_module;

architecture Behavioral of top_module is

component decoder_4bit_to_7seg is
    Port ( number : in STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end component;

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
           an : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal sclk : std_logic := '0';
signal digitounisec : std_logic_vector (3 downto 0) := (others=>'0');
signal digitodecsec : std_logic_vector (3 downto 0) := (others=>'0');
signal digito : std_logic_vector (3 downto 0) := (others=>'0');
signal counterunisec : integer range 0 to 9 := 0;
signal counterdecsec : integer range 0 to 9 := 0;

begin

CLK_1Hz: clk_divider
generic map ( limit => 50_000_000 )
port map (
    clk => CLK,
    reset => RESET,
    clk_div => sclk
);

DECODER: decoder_4bit_to_7seg
port map (
    number => digito,
    seg => SEG
);

MUX: mux_8x7seg
port map(
    clk => clk,
    reset => reset,
    d0 => digitounisec,
    d1 => digitodecsec,
    d2 => (others => '0'),
    d3 => (others => '0'),
    d4 => (others => '0'),
    d5 => (others => '0'),
    d6 => (others => '0'),
    d7 => (others => '0'),
    bcd => digito,
    an => AN
);

digitounisec <= std_logic_vector(TO_UNSIGNED(counterunisec, 4));
digitodecsec <= std_logic_vector(TO_UNSIGNED(counterdecsec, 4));

process(sclk, RESET)
begin
    if RESET = '1' then
        counterunisec <= 0;        
    elsif rising_edge(sclk) then
        if ENABLE = '1' then
            if UPDOWN = '0' then
                if counterunisec = 9 then
                    counterunisec <= 0;
                    if counterdecsec = 9 then
                        counterdecsec <= 0;
                    else
                        counterdecsec <= counterdecsec + 1;
                    end if;
                else
                    counterunisec <= counterunisec + 1;
                end if; 
            elsif UPDOWN = '1' then
                if counterunisec = 0 then
                    counterunisec <= 9;
                    if counterdecsec = 0 then
                        counterdecsec <= 9;
                    else
                        counterdecsec <= counterdecsec - 1;
                    end if;
                else
                    counterunisec <= counterunisec - 1;
                end if; 
            end if;
        end if;
    end if;
end process;

end Behavioral;
