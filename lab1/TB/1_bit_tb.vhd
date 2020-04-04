LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY top_tb IS
	CONSTANT m : INTEGER := 1;
END top_tb;

architecture top_Testbench OF top_tb IS
	SIGNAL cin : STD_LOGIC;
	SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL X,Y : STD_LOGIC_VECTOR (m-1 DOWNTO 0);
	SIGNAL result : STD_LOGIC_VECTOR (m DOWNTO 0);
BEGIN
	L0 : top GENERIC MAP (m) PORT MAP(cin,sel,X,Y,result);

    
	--------- start of stimulus section ------------------	
--1 y = 0  x = 0  cin = 0  
--2 y = 0  x = 0  cin = 1  
--3 y = 0  x = 1  cin = 0
--4 y = 1  x = 0  cin = 0
--5 y = 0  x = 1  cin = 1
--6 y = 1  x = 1  cin = 0
--7 y = 1  x = 0  cin = 0
--8 y = 1  x = 1  cin = 1


	tb_sel : process
		begin
			sel<="00";
			wait for 40 us;
			sel<="01";
			wait for 40 us;
			sel<="10";
			wait for 40 us;
			sel<="11";
			wait;
     end process tb_sel;



	tb_cin : process
		begin
			cin <= '0'; 			
			wait for 5 us;
			cin <= '1';
			wait for 5 us;
			cin <= '0';
			wait for 5 us;
			cin <= '0'; 			
			wait for 5 us;
			cin <= '1';
			wait for 5 us;
			cin <= '0';
			wait for 5 us;
			cin <= '0';
			wait for 5 us;
			cin <= '1';
			wait for 5 us;
      end process tb_cin;
	  
    tb_y : process
		begin
			y <= "0"; 			
			wait for 5 us;
			y <= "0";
			wait for 5 us;
			y <= "0";
			wait for 5 us;
			y <= "1"; 			
			wait for 5 us;
			y <= "0";
			wait for 5 us;
			y <= "1";
			wait for 5 us;
			y <= "1";
			wait for 5 us;
			y <= "1";
			wait for 5 us;
        end process tb_y;
		
    tb_x : process
		begin
			x <= "0"; 			
			wait for 5 us;
			x <= "0";
			wait for 5 us;
			x <= "1";
			wait for 5 us;
			x <= "0"; 			
			wait for 5 us;
			x <= "1";
			wait for 5 us;
			x <= "1";
			wait for 5 us;
			x <= "0";
			wait for 5 us;
			x <= "1";
			wait for 5 us;
        end process tb_x;
		
	  



END top_Testbench;
