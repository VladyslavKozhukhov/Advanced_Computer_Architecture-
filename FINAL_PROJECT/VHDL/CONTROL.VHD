		-- control module (implements MIPS control unit)
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

ENTITY control IS
   PORT( 	
	Opcode 		: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
	RegDst 		: OUT 	STD_LOGIC;
	ALUSrc 		: OUT 	STD_LOGIC;
	MemtoReg 	: OUT 	STD_LOGIC;
	RegWrite 	: OUT 	STD_LOGIC;
	MemRead 		: OUT 	STD_LOGIC;
	MemWrite 	: OUT 	STD_LOGIC;
	Branch 		: OUT 	STD_LOGIC;
	ALUop 		: OUT 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
	Jump		: OUT 	STD_LOGIC; 
	ICommand	: OUT 	STD_LOGIC_VECTOR( 3 DOWNTO 0 );
	IsICommand  : OUT 	STD_LOGIC;
	clock, reset	: IN 	STD_LOGIC );

END control;

ARCHITECTURE behavior OF control IS

	SIGNAL  R_format, Lw, Sw, Bne,Beq,Addi,Ori,Andi,Xori,J	: STD_LOGIC;
	signal tempValue : STD_LOGIC_VECTOR( 5 DOWNTO 0 );
BEGIN           
				-- Code to generate control signals using opcode bits
	R_format 	<=  '1'  WHEN  Opcode = "000000"  ELSE '0';
	Lw          <=  '1'  WHEN  Opcode = "100011"  ELSE '0';
 	Sw          <=  '1'  WHEN  Opcode = "101011"  ELSE '0';
   	Beq         <=  '1'  WHEN  Opcode = "000100"  ELSE '0';
	Bne         <=  '1'  WHEN  Opcode = "000101"  ELSE '0';
	Addi		<=  '1'  WHEN  Opcode = "001000"  ELSE '0';
	Ori		    <=  '1'  WHEN  Opcode = "001101"  ELSE '0';
	Andi		<=  '1'  WHEN  Opcode = "001100"  ELSE '0';
	Xori		<=  '1'  WHEN  Opcode = "001110"  ELSE '0';
	J			<=  '1'  WHEN  Opcode = "000010"  ELSE '0';
  	RegDst    	<=  R_format;
 	ALUSrc  	<=  Lw OR Sw OR Addi OR Andi OR Xori OR Ori;
	MemtoReg 	<=  Lw;
  	RegWrite 	<=  R_format OR Lw OR Addi OR Andi OR Xori OR Ori;
  	MemRead 	<=  Lw;
   	MemWrite 	<=  Sw; 
 	Branch      <=  Beq OR Bne; 
	Jump		<=  J;
	ICommand   <="0010" WHEN Addi = '1' ELSE
						 "0000" WHEN Andi = '1' ELSE
						 "0001" WHEN Ori 	= '1' ELSE
						 "0100" WHEN Xori = '1' ELSE
						 "0000";
	IsICommand <= '1' WHEN Addi= '1'  OR Andi ='1' OR Xori ='1' OR Ori='1' ELSE
					'0';
	ALUOp( 1 ) 	<=  R_format OR Andi OR Xori OR Ori;
	ALUOp( 0 ) 	<=  Beq OR Bne;

   END behavior;


