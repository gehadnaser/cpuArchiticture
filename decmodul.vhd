----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:38:03 04/13/2019 
-- Design Name: 
-- Module Name:    decmodul - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
library work;
use IEEE.STD_LOGIC_1164.ALL;
use work.BigPackage.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decmodul is

PORT(
ENABLE: IN STD_LOGIC;
DINPUT: IN STD_LOGIC_VECTOR (4 downto 0);


DOUTPUT:OUT STD_LOGIC_VECTOR(31 downto 0));

end decmodul;

architecture Behavioral of decmodul is

begin


       DOUTPUT<="ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" when (ENABLE='0') ELSE
		          "00000000000000000000000000000001" when (DINPUT="00000") ELSE
					 "00000000000000000000000000000010" when (DINPUT="00001") ELSE
					 "00000000000000000000000000000100" when (DINPUT="00010") ELSE
					 "00000000000000000000000000001000" when (DINPUT="00011") ELSE	
					 "00000000000000000000000000010000" when (DINPUT="00100") ELSE
					 "00000000000000000000000000100000" when (DINPUT="00101") ELSE
			 
					 "00000000000000000000000001000000" when (DINPUT="00110") ELSE
					 "00000000000000000000000010000000" when (DINPUT="00111") ELSE
					 "00000000000000000000000100000000" when (DINPUT="01000") ELSE
					 "00000000000000000000001000000000" when (DINPUT="01001") ELSE
					 "00000000000000000000010000000000" when (DINPUT="01010") ELSE
			 
			 
					 "00000000000000000000100000000000" when (DINPUT="01011") ELSE
					 "00000000000000000001000000000000" when (DINPUT="01100") ELSE
					 "00000000000000000010000000000000" when (DINPUT="01101") ELSE
					 "00000000000000000100000000000000" when (DINPUT="01110") ELSE
					 "00000000000000001000000000000000" when (DINPUT="01111") ELSE
			 
			 
					 "00000000000000010000000000000000" when (DINPUT="10000") ELSE
					 "00000000000000100000000000000000" when (DINPUT="10001") ELSE
					 "00000000000001000000000000000000" when (DINPUT="10010") ELSE
					 "00000000000010000000000000000000" when (DINPUT="10011") ELSE
					 "00000000000100000000000000000000" when (DINPUT="10100") ELSE
			 
			 
					 "00000000001000000000000000000000" when (DINPUT="10101") ELSE
					 "00000000010000000000000000000000" when (DINPUT="10110") ELSE
					 "00000000100000000000000000000000" when (DINPUT="10111") ELSE
					 "00000001000000000000000000000000" when (DINPUT="11000") ELSE
					 "00000010000000000000000000000000" when (DINPUT="11001") ELSE
			 
			 
					 "00000100000000000000000000000000" when (DINPUT="11010") ELSE
					 "00001000000000000000000000000000" when (DINPUT="11011") ELSE
					 "00010000000000000000000000000000" when (DINPUT="11100") ELSE
					 "00100000000000000000000000000000" when (DINPUT="11101") ELSE
					 "01000000000000000000000000000000" when (DINPUT="11110") ELSE
					 "10000000000000000000000000000000" when (DINPUT="11111") ELSE
			 
					 "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

 
 



end Behavioral;


