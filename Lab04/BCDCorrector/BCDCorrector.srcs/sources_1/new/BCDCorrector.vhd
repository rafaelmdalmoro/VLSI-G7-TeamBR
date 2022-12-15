----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2022 15:36:58
-- Design Name: 
-- Module Name: BCDCorrector - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCDCorrector is
    Port ( S : in STD_LOGIC_VECTOR (4 downto 0);
           CorrS : out STD_LOGIC_VECTOR (3 downto 0));
end BCDCorrector;

architecture Behavioral of BCDCorrector is

signal check : std_logic;

begin

check <= (S(3) and S(2)) or (S(3) and S(1)) or S(4);
CorrS <= ( 2=>check, 1=>check , others=>'0');

end Behavioral;
