----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:36:03 04/13/2019 
-- Design Name: 
-- Module Name:    muxmodel - Behavioral 
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

entity muxmodel is

PORT(	I0: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I1: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I2: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I3: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I4: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I5: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I6: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I7: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		
		I8: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I9: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I10: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I11: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I12: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I13: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I14: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I15: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		
		I16: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I17: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I18: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I19: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I20: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I21: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I22: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I23: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		
		I24: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I25: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I26: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I27: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I28: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I29: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I30: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		I31: 	IN STD_LOGIC_VECTOR (31 downto 0 );
		
		
		S0:	IN STD_LOGIC_VECTOR (4 downto 0 );
		O:	OUT STD_LOGIC_VECTOR (31 downto 0 ));
		
end muxmodel;

architecture Behavioral of muxmodel is

begin
O<= I0 WHEN (S0="00000") ELSE
    I1 WHEN (S0="00001") ELSE
	 I2 WHEN (S0="00010") ELSE
	 I3 WHEN (S0="00011") ELSE
	 I4 WHEN (S0="00100") ELSE
	 I5 WHEN (S0="00101") ELSE
	 I6 WHEN (S0="00110") ELSE
	 I7 WHEN (S0="00111") ELSE
	 I8 WHEN (S0="01000") ELSE
	 I9 WHEN (S0="01001") ELSE
	 I10 WHEN (S0="01010") ELSE
	 
	 
	 I11 WHEN (S0="01011") ELSE
	 I12 WHEN (S0="01100") ELSE
	 I13 WHEN (S0="01101") ELSE
	 I14 WHEN (S0="01110") ELSE
	 I15 WHEN (S0="01111") ELSE
	 I16 WHEN (S0="10000") ELSE
	 I17 WHEN (S0="10001") ELSE
	 I18 WHEN (S0="10010") ELSE
	 I19 WHEN (S0="10011") ELSE
	 I20 WHEN (S0="10100") ELSE
	 
	 I21 WHEN (S0="10101") ELSE
	 I22 WHEN (S0="10110") ELSE
	 I23 WHEN (S0="10111") ELSE
	 I24 WHEN (S0="11000") ELSE
	 I25 WHEN (S0="11001") ELSE
	 I26 WHEN (S0="11010") ELSE
	 I27 WHEN (S0="11011") ELSE
	 I28 WHEN (S0="11100") ELSE
	 I29 WHEN (S0="11101") ELSE
	 I30 WHEN (S0="11110") ELSE
	 I31 WHEN (S0="11111") ELSE
    "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

end Behavioral;


