----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:07:10 04/17/2019 
-- Design Name: 
-- Module Name:    ALUonebit - Behavioral 
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
use work.BigPackage.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUonebit is

port(
  data1:in std_logic;
  data2:in std_logic;
  aluop:in std_logic_vector (3 downto 0);
  cin:in std_logic;
  dataout:out std_logic;
  cflag:out std_logic;
  l:in std_logic;
  qs: out std_logic
  );
end ALUonebit;

architecture Behavioral of ALUonebit is
signal v1,v2,v3,v4:std_logic;
signal outmux,outfulladd,finalout:std_logic;
signal notdata1,notdata2:std_logic;
begin
notdata1<=(not data1);
notdata2<=(not data2);
submux1: MUX2 port map(data2,notdata2,aluop(2),outmux);
submux2: MUX2 port map(data1,notdata1,aluop(3),outfulladd);
adder:fulladder port map (outfulladd,outmux,v3,cin,v4);

v1<=(outfulladd and outmux);
v2<=outfulladd or outmux;
cflag<=v4;
finalmux:MUX4 port map(v1,v2,v3,l,aluop(1 downto 0),finalout);
qs<=v3;
dataout<=finalout;
end Behavioral;


