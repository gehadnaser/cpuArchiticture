--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package BigPackage is

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

COMPONENT registermodul IS
	GENERIC(n:NATURAL);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END COMPONENT;

COMPONENT control_circite IS

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

END COMPONENT;



COMPONENT sign_extend IS
port(
instruction:in STD_LOGIC_VECTOR (15 downto 0 );
sign_out:out STD_LOGIC_VECTOR (31 downto 0 )

);
END COMPONENT;


COMPONENT INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );

END COMPONENT;

COMPONENT MUX5_2X1 IS
GENERIC(n:NATURAL);
port (

input1: in STD_LOGIC_VECTOR (n-1 downto 0);
input2: in STD_LOGIC_VECTOR (n-1 downto 0);
selctor:in STD_LOGIC ;
output: out STD_LOGIC_VECTOR (n-1 downto 0)

);
END COMPONENT;


COMPONENT RegisterFile is
Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));

END COMPONENT;

COMPONENT ALU_CONTROL IS
port(
aluopcode0: in STD_LOGIC;
aluopcode1: in STD_LOGIC;
instructure:in STD_LOGIC_VECTOR (5 downto 0);
output:out  STD_LOGIC_VECTOR (3 downto 0)

);
END COMPONENT;

COMPONENT ALU is

PORT(
  
  data1:in std_logic_vector (31 downto 0);
  data2:in std_logic_vector (31 downto 0);
  aluop:in std_logic_vector (3 downto 0);
  cin:in std_logic;
  dataout:out std_logic_vector (31 downto 0);
  cflag:out std_logic;
  zflag:out std_logic;
  oflag:out std_logic);

END COMPONENT;

COMPONENT  DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);
			
END COMPONENT;
COMPONENT decmodul IS

	PORT(
	ENABLE:IN STD_LOGIC;
	DINPUT: IN STD_LOGIC_VECTOR (4 downto 0);

	DOUTPUT:OUT STD_LOGIC_VECTOR(31 downto 0));
END COMPONENT;


COMPONENT muxmodel IS

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
END COMPONENT;  
COMPONENT ALUonebit IS
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
end COMPONENT;


COMPONENT MUX2 IS
PORT(
      I0:IN STD_LOGIC;
		I1:IN STD_LOGIC;
		
		S0:IN STD_LOGIC;
		O:	OUT STD_LOGIC
				
);
end COMPONENT;

COMPONENT MUX4 IS
PORT(
      I0: IN STD_LOGIC;
		I1: IN STD_LOGIC;
		I2: IN STD_LOGIC;
		I3: IN STD_LOGIC;
		
		S0:IN STD_LOGIC_VECTOR (1 downto 0 );
		O:	OUT STD_LOGIC	
);
end COMPONENT;


COMPONENT fulladder is
port (
num1: in std_logic;
num2: in std_logic;
result:out std_logic;
carryin:in std_logic;
carryout:out std_logic
);
end COMPONENT;


			
end BigPackage;

package body BigPackage is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end BigPackage;

