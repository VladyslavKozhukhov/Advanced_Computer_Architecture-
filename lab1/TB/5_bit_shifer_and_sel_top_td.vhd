 LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY top_tb IS
	CONSTANT m : INTEGER :=	5;
END top_tb;

architecture top_Testbench OF top_tb IS
	SIGNAL cin : STD_LOGIC;
	SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL X,Y : STD_LOGIC_VECTOR (m-1 DOWNTO 0);
	SIGNAL result : STD_LOGIC_VECTOR (m DOWNTO 0);
BEGIN
	L0 : top GENERIC MAP (m) PORT MAP(cin,sel,X,Y,result);

    
	--------- start of stimulus section ------------------	

	
    tb_y : process
		begin
			y <= "11000";
			wait for 5 us;
			y <= "11001";
			wait for 5 us;
			y <= "11010"; 
			wait for 5 us;
			y <= "11011"; 
			wait for 5 us;
			y <= "11100";
			wait for 5 us;
			y <= "11101"; 
			wait for 5 us;
			y <= "11110"; 
			wait for 5 us;
			y <= "11111"; 	  
			wait;
        end process tb_y;
		
    tb_x : process
		begin
		sel<="11";
			x <= "00001"; 			
			wait;
        end process tb_x;
  
END top_Testbench;
