--  Execute module (implements the data ALU and Branch Address Adder  
--  for the MIPS computer)
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.numeric_std.all;


ENTITY  Execute IS
	PORT(	Read_data_1 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Read_data_2 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Sign_extend 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Function_opcode : IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
			ALUOp 			: IN 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
			ALUSrc 			: IN 	STD_LOGIC;
			Zero 			: OUT	STD_LOGIC;
			ALU_Result 		: OUT	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Add_Result 		: OUT	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
			PC_plus_4 		: IN 	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
						ICommand	: IN 	STD_LOGIC_VECTOR( 3 DOWNTO 0 );
	SLWCommand	: IN 	STD_LOGIC_VECTOR( 3 DOWNTO 0 );
	IsICommand  : IN 	STD_LOGIC;
	IsSWCommand  : IN 	STD_LOGIC;
			shiftValue		: IN    STD_LOGIC_VECTOR( 4 DOWNTO 0 );
			clock, reset	: IN 	STD_LOGIC );
END Execute;

ARCHITECTURE behavior OF Execute IS
SIGNAL Ainput, Binput 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL ALU_output_mux		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL Branch_Add 			: STD_LOGIC_VECTOR( 7 DOWNTO 0 );
signal r_Unsigned_L : STD_LOGIC_VECTOR (31 downto 0) := x"00000000";
signal r_Unsigned_R :STD_LOGIC_VECTOR (31 downto 0) := x"00000000";

SIGNAL ALU_ctl				: STD_LOGIC_VECTOR( 2 DOWNTO 0 );
BEGIN
	Ainput <= Read_data_1;
						-- ALU input mux
	Binput <= Read_data_2 
		WHEN ( ALUSrc = '0' ) 
  		ELSE  Sign_extend( 31 DOWNTO 0 );
						-- Generate ALU control bits
	ALU_ctl( 0 ) <= (( Function_opcode( 0 ) OR Function_opcode( 3 ) ) AND ALUOp(1 )) WHEN IsICommand = '0' ELSE ICommand(0) WHEN IsICommand ='1';
	ALU_ctl( 1 ) <= ( NOT Function_opcode( 2 ) ) OR (NOT ALUOp( 1 ) )WHEN IsICommand = '0' ELSE ICommand(1) WHEN IsICommand ='1';
	ALU_ctl( 2 ) <= ( Function_opcode( 1 ) AND ALUOp( 1 )) OR ALUOp( 0 )WHEN IsICommand = '0' ELSE
					ICommand(2) WHEN IsICommand ='1';
						-- Generate Zero Flag
	Zero <= '1' 
		WHEN ( ALU_output_mux( 31 DOWNTO 0 ) = X"00000000"  )
		ELSE '0';    
						-- Select ALU output        
	ALU_result <= X"0000000" & B"000"  & ALU_output_mux( 31 ) 
		WHEN  ALU_ctl = "111"
	Else r_Unsigned_L  when Function_opcode ="000000" and ALUOp(1) ='1'
	--	else       r_Unsigned_R  when Function_opcode ="000010" and ALUOp(1) ='1'   --std_logic_vector(shift_right(ieee.numeric_std.unsigned(Binput), to_integer(ieee.numeric_std.unsigned(shiftValue)))) when Function_opcode = "000010" and ALUOp(1) ='1'
		ELSE  	ALU_output_mux( 31 DOWNTO 0 );

       r_Unsigned_L <= Binput(28 downto 0)&"000" when shiftValue = "00011" else--3
					   Binput(29 downto 0)&"00" when shiftValue = "00010" else --2
					   Binput(30 downto 0)&"0" when shiftValue = "00001" else --1
						Binput(15 downto 0)& x"0000" when shiftValue = "01000" else--16
					   x"00000000" when shiftValue = "10000" else --32
					Binput;

   --  r_Unsigned_R <= "0"&Binput(31 downto 1) when shiftValue = "00001";-- else --1
--"000"&Binput(31 downto 3) when shiftValue = "00011" else--3
					--  "00"&Binput(31 downto 2) when shiftValue = "00010" else --2
					
				--x"0000"&Binput(31 downto 16) when shiftValue = "01000" else--16
				--	   x"00000000" when shiftValue = "10000" else --32
				--	Binput;
						-- Adder to compute Branch Address
	Branch_Add	<= PC_plus_4( 9 DOWNTO 2 ) +  Sign_extend( 7 DOWNTO 0 ) ;
		Add_result 	<= Branch_Add( 7 DOWNTO 0 );

PROCESS ( ALU_ctl, Ainput, Binput )
	BEGIN
					-- Select ALU operation
 	CASE ALU_ctl IS
						-- ALU performs ALUresult = A_input AND B_input
		WHEN "000" 	=>	ALU_output_mux 	<= Ainput AND Binput; 
						-- ALU performs ALUresult = A_input OR B_input
     	WHEN "001" 	=>	ALU_output_mux 	<= Ainput OR Binput;
						-- ALU performs ALUresult = A_input + B_input +addi
	 	WHEN "010" 	=>	ALU_output_mux 	<= Ainput + Binput;
						-- ALU performs addu
 	 	WHEN "011" 	=>	ALU_output_mux <=  Ainput + Binput;
						-- ALU performs A XOR B
 	 	WHEN "100" 	=>	ALU_output_mux 	<=  Ainput XOR Binput;
						-- ALU performs ?
 	 	WHEN "101" 	=>	ALU_output_mux 	<= X"00000000";
						-- ALU performs ALUresult = A_input -B_input
 	 	WHEN "110" 	=>	ALU_output_mux 	<= Ainput - Binput;
						-- ALU performs SLT
  	 	WHEN "111" 	=>	ALU_output_mux 	<= Ainput - Binput ;
 	 	WHEN OTHERS	=>	ALU_output_mux 	<= X"00000000" ;
  	END CASE;
  END PROCESS;
END behavior;

