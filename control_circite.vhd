----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:52 04/28/2019 
-- Design Name: 
-- Module Name:    control_circite - Behavioral 
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

entity control_circite is

PORT(
opcode:in STD_LOGIC_VECTOR (5 downto 0 );
RegDst: out STD_LOGIC ;
ALUSrs: out STD_LOGIC ;
MemtoReg: out STD_LOGIC ;
RegWrite: out STD_LOGIC ;
MemRead: out STD_LOGIC ;
MemWrite: out STD_LOGIC ;
Branch: out STD_LOGIC ;
JUMP: out STD_LOGIC ;
BNE: out STD_LOGIC ;
ALUOP: out STD_LOGIC_VECTOR (1 downto 0)
);


end control_circite;

architecture Behavioral of control_circite is

 signal r_formate :STD_LOGIC ;
 signal lw :STD_LOGIC ;
 signal sw :STD_LOGIC ;
 signal beq :STD_LOGIC ;
 signal bneq :STD_LOGIC ;
 signal jmp :STD_LOGIC ;


begin

r_formate<= ((not opcode(5)) and (not opcode(4)) and (not opcode(3)) and (not opcode(2)) and (not opcode(1)) and (not opcode(0)) );

RegDst<= r_formate;


lw<= (opcode(5) and (not opcode(4)) and (not opcode(3)) and (not opcode(2)) and  opcode(1) and opcode(0) );

sw<=(opcode(5) and (not opcode(4)) and  opcode(3) and (not opcode(2)) and opcode(1) and opcode(0) );

ALUSrs<=(lw or sw);

MemtoReg<=lw;
RegWrite<=(r_formate or lw);
MemRead<= lw;
MemWrite<=sw;

beq<=((not opcode(5)) and (not opcode(4)) and (not opcode(3)) and opcode(2) and (not opcode(1)) and (not opcode(0)) );

Branch<=beq;

bneq<=((not opcode(5)) and (not opcode(4)) and (not opcode(3)) and opcode(2) and (not opcode(1)) and opcode(0));
BNE <=bneq;

jmp <= ((not opcode(5)) and (not opcode(4)) and (not opcode(3)) and (not opcode(2)) and opcode(1) and (not opcode(0)) );
JUMP <= jmp;

ALUOP(1)<=r_formate;
ALUOP(0)<=beq ;
end Behavioral;


