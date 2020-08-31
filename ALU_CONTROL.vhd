----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:43:59 04/30/2019 
-- Design Name: 
-- Module Name:    ALU_CONTROL - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;
use work.BigPackage.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_CONTROL is

port(
aluopcode0: in STD_LOGIC;
aluopcode1: in STD_LOGIC;
instructure:in STD_LOGIC_VECTOR (5 downto 0);
output:out  STD_LOGIC_VECTOR (3 downto 0)

);
end ALU_CONTROL;

architecture Behavioral of ALU_CONTROL is
signal temp:STD_LOGIC_VECTOR (3 downto 0);
begin

temp(3)<= ((instructure(0) and instructure(1)) and aluopcode1);
temp(2)<= ((instructure(1) and aluopcode1) or aluopcode0);
temp(1)<= ((not instructure(2))or (not aluopcode1));
temp(0)<= (((instructure(0) or instructure(3)) and aluopcode1) and (not temp(3)));
output<=temp;

end Behavioral;


