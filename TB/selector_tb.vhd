library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY selector_tb IS
	CONSTANT m : integer := 4;
END selector_tb;

ARCHITECTURE selector_Testbench OF selector_tb IS
	SIGNAL in1,in2,output : STD_LOGIC_VECTOR(m DOWNTO 0);
	SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
	L0 : selector GENERIC MAP (m) PORT MAP(in1,in2,sel,output);
    
	--------- start of stimulus section ------------------	
        tb_in1 : PROCESS
        BEGIN
		  in1 <= "1010";
		  WAIT FOR 50 ns;
		  in1 <= not in1; 
		  WAIT FOR 50 ns;
        END PROCESS tb_in1;
		
		tb_in2 : PROCESS
        BEGIN
		  in2 <= "0110";
		  WAIT FOR 100 ns;
		  in2 <= not in2; 
		  WAIT FOR 100 ns;
        END PROCESS tb_in2;
		  
		tb_sel : PROCESS
        BEGIN
		  sel <="00";
		  WAIT FOR 200 ns;
		  sel <="01";
		  WAIT FOR 200 ns;
		  sel <="10";
		  WAIT FOR 200 ns;
		  sel <="11";
		  WAIT FOR 200 ns;
        END PROCESS tb_sel; 

END selector_Testbench;
