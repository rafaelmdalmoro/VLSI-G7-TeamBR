library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity mux_8x7seg is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           number : in STD_LOGIC_VECTOR (3 downto 0);
           an : out STD_LOGIC_VECTOR (7 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end mux_8x7seg;

architecture Behavioral of mux_8x7seg is

signal sclk : std_logic := '0';
signal s_seg : std_logic_vector(6 downto 0);
signal d3, d2, d1, bcd : std_logic_vector(3 downto 0);

begin

--CLOCK DIVIDER--
process(clk, reset)
	variable counter : integer range 1 to 390_625 := 0;	-- 100MHz to 256Hz
begin
	if reset = '1' then
		sclk <= '0';
		counter := 1;
	elsif rising_edge(clk) then
		if counter = 390_625 then
			counter := 1;
			sclk <= not sclk;
		else
			counter := counter + 1;
		end if;
	end if;
end process;

--MUX FOR 8 DISPLAYS--
process(sclk, reset)
variable counter : integer range 0 to 7 := 0;
begin
    if reset = '1' then
        counter := 0;
    elsif rising_edge(sclk) then
	
		an <= '1'(counter-1 downto 0) & '0' & '1'(7 downto counter+1) ;
		
        --case counter is
        --    when 1 =>   an <= "0111";
        --                bcd <= "0000";
        --    when 2 =>   an <= "1011";   
        --                bcd <= d3;
        --    when 3 =>   an <= "1101";
        --                bcd <= d2;
        --    when 4 =>   an <= "1110";
        --                bcd <= d1;
        --    when others => an <= "1111";
        --                   bcd <="0000";
        --end case;
		
        if counter = 7 then
			counter := 0;
		else
			counter := counter + 1;
		end if;
    end if;
end process;

--DECODER 4-BIT NUMBER TO 7SEG--
process(number)
begin
    case number is
        when "0000" => seg <= "1000000"; -- 0
        when "0001" => seg <= "1111001"; -- 1
        when "0010" => seg <= "0100100"; -- 2
        when "0011" => seg <= "0110000"; -- 3
        when "0100" => seg <= "0011001"; -- 4
        when "0101" => seg <= "0010010"; -- 5
        when "0110" => seg <= "0000010"; -- 6
        when "0111" => seg <= "1111000"; -- 7
        when "1000" => seg <= "0000000"; -- 8
        when "1001" => seg <= "0011000"; -- 9
        when "1010" => seg <= "0001000"; -- A
        when "1011" => seg <= "0000011"; -- B
        when "1100" => seg <= "1000110"; -- C
        when "1101" => seg <= "0100001"; -- D
        when "1110" => seg <= "0000110"; -- E
        when "1111" => seg <= "0001110"; -- F
        when others => seg <= "1111111"; -- off
    end case;
end process;

end Behavioral;
