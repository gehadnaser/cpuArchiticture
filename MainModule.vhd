----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:23:57 04/28/2019 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
USE ieee.STD_LOGIC_unsigned.aLL;

use work.BigPackage.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainModule is

port(
START: IN STD_LOGIC;

CLK: IN STD_LOGIC;

RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);

RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);

ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0);

PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);

DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0)
);


end MainModule;

architecture Behavioral of MainModule is
--pc--
signal input:STD_LOGIC_VECTOR(31 downto 0);
signal pc_output:STD_LOGIC_VECTOR(31 downto 0);
signal ins_memory_output:STD_LOGIC_VECTOR(31 downto 0);
--instructin mem---
signal rs:STD_LOGIC_VECTOR(4 downto 0);
signal rt:STD_LOGIC_VECTOR(4 downto 0);
signal rd:STD_LOGIC_VECTOR(4 downto 0);
signal op:STD_LOGIC_VECTOR(5 downto 0);
signal funct:STD_LOGIC_VECTOR(5 downto 0);
signal ins_shift:STD_LOGIC_VECTOR(25 downto 0);
--control circuit signals--
signal opcode:STD_LOGIC_VECTOR (5 downto 0 );
signal RegDst: STD_LOGIC ;
signal ALUSrs: STD_LOGIC ;
signal MemtoReg: STD_LOGIC ;
signal RegWrite: STD_LOGIC ;
signal MemRead: STD_LOGIC ;
signal MemWrite: STD_LOGIC ;
signal Branch: STD_LOGIC ;
signal JUMP: STD_LOGIC ;
signal BNE: STD_LOGIC ;
signal ALUOP: STD_LOGIC_VECTOR (1 downto 0);
--mux5_2x1---
signal mux_out_filereg_in : STD_LOGIC_VECTOR (4 downto 0);
--register file--
signal regfile_data1: STD_LOGIC_VECTOR (31 downto 0);
signal regfile_data2: STD_LOGIC_VECTOR (31 downto 0);
signal write_data:STD_LOGIC_VECTOR (31 downto 0);   -- come from mux 3la al ymen t7t
--sign_extend--
signal sign_extend_out :STD_LOGIC_VECTOR (31 downto 0);
signal sign_extend_in: STD_LOGIC_VECTOR (15 downto 0);

--mux output between reg file&sign extend--
signal rf_alu_mux :STD_LOGIC_VECTOR (31 downto 0);
signal alu_control_out :STD_LOGIC_VECTOR (3 downto 0);

--ALU_OUT---

signal alu_out: std_logic_vector (31 downto 0);
signal cf: std_logic;
signal zf: std_logic;
signal ov: std_logic;
--DATA MEM--
signal DATA_MEM_OUT:std_logic_vector (31 downto 0);
signal out_mux_data_mem : std_logic_vector (31 downto 0);
--ji--
signal add4 : std_logic_vector (31 downto 0);
--shiftout--
signal shift_out : std_logic_vector (27 downto 0);
signal jmp_address : std_logic_vector (31 downto 0);

--alu add --
signal shift_out_2 : std_logic_vector (31 downto 0);

signal alu_add_res : std_logic_vector (31 downto 0);
signal and_sig : std_logic ; 

signal mux_alu1_out:std_logic_vector (31 downto 0);
signal not_start : std_logic ; 

begin
not_start<= (not START);
pc: registermodul generic map(32)  port map(input,CLK,START,'0',not_start,pc_output);
ins_memory: INSTRMEMORY port map(not_start,ins_memory_output,pc_output,CLK);
op<=ins_memory_output(31 downto 26);
rs<=ins_memory_output(25 downto 21);
rt<=ins_memory_output(20 downto 16);
rd<=ins_memory_output(15 downto 11);
funct<= ins_memory_output(5 downto 0);

sign_extend_in <=ins_memory_output(15 downto 0);

control_unit:control_circite port map(op,RegDst,ALUSrs,MemtoReg,RegWrite,MemRead,MemWrite,Branch,JUMP,BNE,ALUOP);

mux52x1:MUX5_2X1 generic map(5) port map(rt,rd,RegDst,mux_out_filereg_in);

register_file:RegisterFile port map(rs,rt,mux_out_filereg_in,RegWrite,CLK,write_data,regfile_data1,regfile_data2);

RegFileOut1<=regfile_data1;
RegFileOut2<=regfile_data2;


signextend: sign_extend port map(sign_extend_in ,sign_extend_out);
mux2x1: MUX5_2X1 generic map(32) port map(regfile_data2,sign_extend_out,ALUSrs,rf_alu_mux);

alucontrol : ALU_CONTROL port map (ALUOP(0),ALUOP(1),funct,alu_control_out);


ALU_ZERO: ALU port map(regfile_data1,rf_alu_mux,alu_control_out,alu_control_out(2),alu_out,cf,zf,ov);
ALUOut<=alu_out;




data_mem:DATAMEMORY  port map(not_start,regfile_data2,DATA_MEM_OUT,MemRead,MemWrite,alu_out,CLK);
DataMemOut<=DATA_MEM_OUT;

data_mem_mux : MUX5_2X1 generic map(32) port map(alu_out,DATA_MEM_OUT,MemtoReg,write_data );





--------------------------------------------------------------------------------------
add4 <= pc_output+4;
ins_shift<=ins_memory_output(25 downto 0);
shift_out <= (ins_shift & "00");
jmp_address<= (add4(31 downto 28))&shift_out;

shift_out_2 <= sign_extend_out(29 downto 0)&"00";

alu_add_res <= shift_out_2 + add4;
and_sig <= (Branch and zf )or (BNE and (not zf));

mux_alu_1 : MUX5_2X1 generic map(32) port map(add4,alu_add_res,and_sig,mux_alu1_out);
mux_alu_2: MUX5_2X1 generic map(32) port map(mux_alu1_out,jmp_address ,JUMP,input);
PCOut<=input;
end Behavioral;


