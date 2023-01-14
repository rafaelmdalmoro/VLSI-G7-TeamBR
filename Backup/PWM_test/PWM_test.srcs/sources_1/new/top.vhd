----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.01.2023 10:11:49
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           PWM_EN : in STD_LOGIC;
           NOTE : in STD_LOGIC_VECTOR (3 downto 0);
           AUD_PWM : out STD_LOGIC;
           PWM_OUT : out STD_LOGIC
           );
end top;

architecture Behavioral of top is

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

signal sPWM : std_logic_vector(0 downto 0);
signal sDUTY : std_logic_vector(7 downto 0);

signal counter : integer range 0 to 256 := 0;
signal limit: integer range 0 to 10_000 := 0;
signal L: integer range 0 to 10_000 := 0;

signal dir, sclk : std_logic := '1';

begin

PWM_GEN: pwm
generic map( sys_clk => 100_000_000 )
port map(
    clk       => CLK,
    reset_n   => RESET,
    ena       => PWM_EN,
    duty      => sDUTY,
    pwm_out   => sPWM,
    pwm_n_out => open
    );

-- Hard-coded values for each note
process(NOTE)
begin
    case NOTE(3 downto 0) is
        when "0001" => L <= 1489;   --C4
        when "0010" => L <= 1570;   --D4
        when "0011" => L <= 1643;   --E4
        when "0100" => L <= 1677;   --F4
        when "0101" => L <= 1739;   --G4
        when "0110" => L <= 1793;   --A4
        when "0111" => L <= 1841;   --B4
        when "1000" => L <= 1864;   --C5
        when "1001" => L <= 1904;   --D5
        when "1010" => L <= 1941;   --E5
        when "1011" => L <= 1957;   --F5
        when "1100" => L <= 1988;   --G5
        when "1101" => L <= 2015;   --A5
        when "1110" => L <= 2039;   --B5
        when others => L <= 0;      --87 Hz
    end case;
end process;

-- Converts 'L' value to adequate 'limit' value
process(L)
begin
    limit <= 190 + 2047 - L;
end process;

-- CLOCK DIVIDER TO CHANGE SOUND FREQUENCY
-- Changes frequency based on chosen note ('limit' signal)
process(CLK, RESET)
	variable scounter : integer range 0 to 10_000 := 0;
begin
    if reset = '0' then
        sclk <= '0';
        scounter := 0;
    elsif rising_edge(CLK) then
        if scounter = limit then
            scounter := 0;
            sclk <= not sclk;
        else
            scounter := scounter + 1;
        end if;
    end if;
end process;

-- TRIANGULAR SOUND WAVE /\/\/
-- Changes PWM duty cycle based on frequency of sclk
process(sclk, RESET)
begin
    if RESET = '0' then
        counter <= 0;        
    elsif rising_edge(sclk) then
        if dir = '0' then
            if (counter = 256 or counter > 256) then
                dir <= '1';
            else
                counter <= counter + 2;
            end if; 
        elsif dir = '1' then
            if (counter = 0 or counter < 0) then
                dir <= '0';
            else
                counter <= counter - 2;
            end if; 
        end if;
    end if;
end process;

-- Loads duty cycle to PWM component
sDUTY <= std_logic_vector(TO_UNSIGNED(counter, 8));

-- Outputs PWM wave to board
PWM_OUT <= sPWM(0);
AUD_PWM <= sPWM(0);

end Behavioral;
