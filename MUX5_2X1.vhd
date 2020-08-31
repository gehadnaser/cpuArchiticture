----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:37:32 04/28/2019 
-- Design Name: 
-- Module Name:    MUX5_2X1 - Behavioral 
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

entity MUX5_2X1 is
generic (n:natural:=32);
port (

input1: in STD_LOGIC_VECTOR (n-1 downto 0);
input2: in STD_LOGIC_VECTOR (n-1 downto 0);
selctor:in STD_LOGIC ;
output: out STD_LOGIC_VECTOR (n-1 downto 0)

);
end MUX5_2X1;

architecture Behavioral of MUX5_2X1 is

begin

output<= input1 when (selctor='0') else
         input2 when (selctor='1');
end Behavioral;


