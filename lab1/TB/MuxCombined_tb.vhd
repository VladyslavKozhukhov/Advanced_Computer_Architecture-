LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY MuxCombined_tb IS
	CONSTANT m : INTEGER := 4;
END MuxCombined_tb;

architecture MuxCombined_Testbench OF MuxCombined_tb IS
	SIGNAL x1,x2,output : STD_LOGIC_VECTOR(m-1 DOWNTO 0);
	SIGNAL sel : STD_LOGIC;
BEGIN
	L0 : MuxCombined GENERIC MAP (m) PORT MAP(x1,x2,sel,output);
    
	--------- start of stimulus section ------------------	
       tb_x1 : PROCESS
        BEGIN
		  x1 <= "1010";
		  WAIT FOR 50 ns;
		  x1 <= not x1; 
		  WAIT FOR 50 ns;
        END PROCESS tb_x1;
		
		tb_x2 : PROCESS
        BEGIN
		  x2 <= "0110";
		  WAIT FOR 100 ns;
		  x2 <= not x2; 
		  WAIT FOR 100 ns;
        END PROCESS tb_x2;
		  
		tb_sel : PROCESS
        BEGIN
		  sel <='0','1' AFTER 200 ns;
		  WAIT;
        END PROCESS tb_sel; 

END MuxCombined_Testbench;
