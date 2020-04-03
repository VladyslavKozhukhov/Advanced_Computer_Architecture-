-- Test Bench for Counter.
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY FA_tb IS
END FA_tb;

ARCHITECTURE FA_Testbench OF FA_tb IS  

SIGNAL  xi, yi, cin, s, cout : STD_LOGIC;
BEGIN
        tester : FA PORT MAP(xi,yi,cin,s,cout);
        --------- start of stimulus section - ver3 ------------------	
        tb_yi : PROCESS
        BEGIN
		  yi <= '0';
		  WAIT FOR 50 ns;
		  yi <= not yi; 
		  WAIT FOR 50 ns;
        end PROCESS tb_yi;
		
		tb_xi : PROCESS
        BEGIN
		  xi <= '0';
		  WAIT FOR 100 ns;
		  xi <= not xi; 
		  WAIT FOR 100 ns;
        end PROCESS tb_xi;
		  
		tb_cin : PROCESS
        BEGIN
		  cin <='0','1' AFTER 200 ns;
		  WAIT;
        end PROCESS tb_cin; 
        
end FA_Testbench;
