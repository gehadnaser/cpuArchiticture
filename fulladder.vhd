----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:00:11 04/17/2019 
-- Design Name: 
-- Module Name:    fulladder - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


use work.BigPackage.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fulladder is

port (
num1: in std_logic;
num2: in std_logic;
result:out std_logic;
carryin:in std_logic;
carryout:out std_logic
);
end fulladder;

architecture Behavioral of fulladder is
signal tmpresult: std_logic_vector (1 downto 0 ) ;
begin

tmpresult<= ('0' & num1) + ('0' & num2) + ('0' & carryin);
result<=tmpresult(0);
carryout<= tmpresult(1);

end Behavioral;


