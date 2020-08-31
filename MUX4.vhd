----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:55:18 04/17/2019 
-- Design Name: 
-- Module Name:    MUX4 - Behavioral 
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

entity MUX4 is
PORT(
      I0: IN STD_LOGIC;
		I1: IN STD_LOGIC;
		I2: IN STD_LOGIC;
		I3: IN STD_LOGIC;
		
		S0:IN STD_LOGIC_VECTOR (1 downto 0 );
		O:	OUT STD_LOGIC	
);
end MUX4;

architecture Behavioral of MUX4 is

begin
O<= I0 when (S0="00") else
    I1 when (S0="01") else
    I2 when (S0="10") else
	 I3 when (S0="11");

end Behavioral;


