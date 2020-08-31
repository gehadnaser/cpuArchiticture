----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:37:45 04/28/2019 
-- Design Name: 
-- Module Name:    sign_extend - Behavioral 
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

entity sign_extend is
port(
instruction:in STD_LOGIC_VECTOR (15 downto 0 );
sign_out:out STD_LOGIC_VECTOR (31 downto 0 )

);
end sign_extend;

architecture Behavioral of sign_extend is

begin
sign_out<=("1111111111111111"&instruction )when instruction(15)='1' else
 ("0000000000000000"&instruction);

end Behavioral;


