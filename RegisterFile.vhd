----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:33:04 04/13/2019 
-- Design Name: 
-- Module Name:    regmodul - Behavioral 
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

entity RegisterFile is

Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));



end RegisterFile;

architecture Behavioral of RegisterFile is


signal output0, output1, output2, output3, output4, output5, output6, output7, output8, output9,
 output10, output11, output12, output13, output14, output15, output16, output17, output18, output19,
 output20, output21, output22, output23, output24, output25, output26, output27, output28, output29,
 output30, output31 : STD_LOGIC_VECTOR (31 downto 0);
 

signal readdata1 : STD_LOGIC_VECTOR (31 downto 0);
signal readdata2 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp : STD_LOGIC_VECTOR (31 downto 0);
signal load0,load1,load2,load3,load4,load5,load6,load7,load8,load9,
load10,load11,load12,load13,load14,load15,load16,load17,load18,load19,load20,
load21,load22,load23,load24,load25,load26,load27,load28,load29,load30,load31 : STD_LOGIC;



begin

dec:decmodul  PORT MAP ('1', write_sel,tmp);
load0<=tmp(0) and  write_ena;
load1<=tmp(1) and  write_ena;
load2<=tmp(2) and  write_ena;
load3<=tmp(3) and  write_ena;
load4<=tmp(4) and  write_ena;
load5<=tmp(5) and  write_ena;
load6<=tmp(6) and  write_ena;
load7<=tmp(7) and  write_ena;
load8<=tmp(8) and  write_ena;

load9<=tmp(9) and  write_ena;
load10<=tmp(10) and  write_ena;
load11<=tmp(11) and  write_ena;
load12<=tmp(12) and  write_ena;
load13<=tmp(13) and  write_ena;
load14<=tmp(14) and  write_ena;
load15<=tmp(15) and  write_ena;
load16<=tmp(16) and  write_ena;
load17<=tmp(17) and  write_ena;

load18<=tmp(18) and  write_ena;
load19<=tmp(19) and  write_ena;
load20<=tmp(20) and  write_ena;
load21<=tmp(21) and  write_ena;
load22<=tmp(22) and  write_ena;
load23<=tmp(23) and  write_ena;
load24<=tmp(24) and  write_ena;
load25<=tmp(25) and  write_ena;
load26<=tmp(26) and  write_ena;


load27<=tmp(27) and  write_ena;
load28<=tmp(28) and  write_ena;
load29<=tmp(29) and  write_ena;
load30<=tmp(30) and  write_ena;
load31<=tmp(31) and  write_ena;


R0: registermodul generic map(32) PORT MAP (write_data,clk,load0,'0','0',output0);
R1: registermodul generic map(32) PORT MAP (write_data,clk,load1,'0','0',output1);
R2: registermodul generic map(32) PORT MAP (write_data,clk,load2,'0','0',output2);
R3: registermodul generic map(32) PORT MAP (write_data,clk,load3,'0','0',output3);
R4: registermodul generic map(32) PORT MAP (write_data,clk,load4,'0','0',output4);
R5: registermodul generic map(32) PORT MAP (write_data,clk,load5,'0','0',output5);
R6: registermodul generic map(32) PORT MAP (write_data,clk,load6,'0','0',output6);
R7: registermodul generic map(32) PORT MAP (write_data,clk,load7,'0','0',output7);
R8: registermodul generic map(32) PORT MAP (write_data,clk,load8,'0','0',output8);
R9: registermodul generic map(32) PORT MAP (write_data,clk,load9,'0','0',output9);


R10: registermodul  generic map(32) PORT MAP (write_data,clk,load10,'0','0',output10);
R11: registermodul generic map(32)  PORT MAP (write_data,clk,load11,'0','0',output11);
R12: registermodul  generic map(32) PORT MAP (write_data,clk,load12,'0','0',output12);
R13: registermodul  generic map(32) PORT MAP (write_data,clk,load13,'0','0',output13);
R14: registermodul generic map(32)  PORT MAP (write_data,clk,load14,'0','0',output14);
R15: registermodul  generic map(32) PORT MAP (write_data,clk,load15,'0','0',output15);
R16: registermodul  generic map(32) PORT MAP (write_data,clk,load16,'0','0',output16);
R17: registermodul  generic map(32) PORT MAP (write_data,clk,load17,'0','0',output17);
R18: registermodul  generic map(32) PORT MAP (write_data,clk,load18,'0','0',output18);
R19: registermodul  generic map(32) PORT MAP (write_data,clk,load19,'0','0',output19);



R20: registermodul  generic map(32) PORT MAP (write_data,clk,load20,'0','0',output20);
R21: registermodul  generic map(32) PORT MAP (write_data,clk,load21,'0','0',output21);
R22: registermodul generic map(32)  PORT MAP (write_data,clk,load22,'0','0',output22);
R23: registermodul  generic map(32) PORT MAP (write_data,clk,load23,'0','0',output23);
R24: registermodul generic map(32)  PORT MAP (write_data,clk,load24,'0','0',output24);
R25: registermodul  generic map(32) PORT MAP (write_data,clk,load25,'0','0',output25);
R26: registermodul generic map(32)  PORT MAP (write_data,clk,load26,'0','0',output26);
R27: registermodul  generic map(32) PORT MAP (write_data,clk,load27,'0','0',output27);
R28: registermodul  generic map(32) PORT MAP (write_data,clk,load28,'0','0',output28);
R29: registermodul  generic map(32) PORT MAP (write_data,clk,load29,'0','0',output29);

R30: registermodul generic map(32) PORT MAP (write_data,clk,load30,'0','0',output30);
R31: registermodul generic map(32) PORT MAP (write_data,clk,load31,'0','0',output31);


datareg1: muxmodel  PORT MAP (output0, output1, output2, output3, output4, output5, output6, output7, output8, output9,
 output10, output11, output12, output13, output14, output15, output16, output17, output18, output19,
 output20, output21, output22, output23, output24, output25, output26, output27, output28, output29,
 output30, output31,read_sel1,data1);



datareg2: muxmodel  PORT MAP (output0, output1, output2, output3, output4, output5, output6, output7, output8, output9,
 output10, output11, output12, output13, output14, output15, output16, output17, output18, output19,
 output20, output21, output22, output23, output24, output25, output26, output27, output28, output29,
 output30, output31,read_sel2,data2);

end Behavioral;


