library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decoder_4bit_to_7seg is
    Port ( number : in STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end decoder_4bit_to_7seg;

architecture Behavioral of decoder_4bit_to_7seg is

begin

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
