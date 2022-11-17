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
           AN : out STD_LOGIC_VECTOR (7 downto 0);
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

signal sclk : std_logic := '0';
signal digito : std_logic_vector (3 downto 0) := (others=>'0');
signal counter : integer range 0 to 15 := 0;

begin

CLK_500mHz: clk_divider
generic map ( limit => 25_000_000 )
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

AN <= (0=>'0', others=>'1');    -- Turns on only the left/right-most display

digito <= std_logic_vector(TO_UNSIGNED(counter, 4));

process(sclk, RESET)
begin
    if RESET = '1' then
        counter <= 0;        
    elsif rising_edge(sclk) then
        if ENABLE = '1' then
            if UPDOWN = '0' then
                if counter = 15 then
                    counter <= 0;
                else
                    counter <= counter + 1;
                end if; 
            elsif UPDOWN = '1' then
                if counter = 0 then
                    counter <= 15;
                else
                    counter <= counter - 1;
                end if; 
            end if;
        end if;
    end if;
end process;

end Behavioral;
