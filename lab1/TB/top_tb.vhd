LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY top_tb IS
	CONSTANT m : INTEGER := 8;
END top_tb;

architecture top_Testbench OF top_tb IS
	SIGNAL cin : STD_LOGIC;
	SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL X,Y : STD_LOGIC_VECTOR (m-1 DOWNTO 0);
	SIGNAL result : STD_LOGIC_VECTOR (m DOWNTO 0);
BEGIN
	L0 : top GENERIC MAP (m) PORT MAP(cin,sel,X,Y,result);

    
	--------- start of stimulus section ------------------	
--0 -40 test shifter
--
	
    tb_y : process
		begin
			y <= "11111000";
			wait for 5 us;
			y <= "11111001";
			wait for 5 us;
			y <= "11111010"; 
			wait for 5 us;
			y <= "11111011"; 
			wait for 5 us;
			y <= "11111100";
			wait for 5 us;
			y <= "11111101"; 
			wait for 5 us;
			y <= "11111110"; 
			wait for 5 us;
			y <= "11111111"; 	  
			wait for 5 us;
			y <= "00111111"; ---sum
			wait for 20 us;
			y <= "00000001";----sub
			wait;
        end process tb_y;
	tb_cin : process
		begin
			cin<='1';
			wait for 20 us;
			cin<='0';
			wait for  5 us;
			cin<='1';
			wait for 5 us;
			cin<='0';
			wait for  5 us;
			cin<='1';
			wait;
	end process tb_cin;	
	
    tb_x : process
		begin
		sel<="11";
		x <= "00000001"; 			
		wait for 20 us;
		sel<="11";
		x <= "11111111"; 			
		wait for 20 us;
		sel<="00";			-----sum
		x <= "00000001"; 
		--cin<='0';
		wait for 5 us;
		sel<="00";
		x <= "00000001"; 	
		--cin<='1';		
		wait for 5 us;
		sel<="01";			
		x <= "00000001"; 
		--cin<='0';
		wait for 5 us;
		sel<="01";
		x <= "00000001"; 	
		--cin<='1';		
		wait for 5 us;-------sum
		sel<="10";
		x <= "11111001";--sub
		wait for 5 us;
		sel<="10";
		x <= "01111111";--sub
		wait;
        end process tb_x;
  
END top_Testbench;
