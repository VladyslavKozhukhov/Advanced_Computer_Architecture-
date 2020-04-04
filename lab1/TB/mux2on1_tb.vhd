LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY mux2on1_tb IS
	CONSTANT m : INTEGER := 4;
END mux2on1_tb;

ARCHITECTURE mux2on1_Testbench OF mux2on1_tb IS
	SIGNAL in1,in2,sel,output : STD_LOGIC;
BEGIN
	L0 : mux2on1 PORT MAP(in1,in2,sel,output);
    
	--------- start of stimulus section ------------------	
       tb_in1 : PROCESS
        BEGIN
		  in1 <= '0';
		  WAIT FOR 50 ns;
		  in1 <= not in1; 
		  WAIT FOR 50 ns;
        END PROCESS tb_in1;
		
		tb_in2 : PROCESS
        BEGIN
		  in2 <= '0';
		  WAIT FOR 100 ns;
		  in2 <= not in2; 
		  WAIT FOR 100 ns;
        END PROCESS tb_in2;
		  
		tb_sel : PROCESS
        BEGIN
		  sel <='0','1' AFTER 200 ns;
		  WAIT;
        END PROCESS tb_sel; 

END mux2on1_Testbench;
