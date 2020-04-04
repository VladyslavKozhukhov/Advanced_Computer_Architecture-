library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
USE work.aux_package.all;

entity Barrel_tb is
	CONSTANT m : integer := 8;
END Barrel_tb;

ARCHITECTURE Barrel_Testbench of Barrel_tb is
	SIGNAL x : STD_LOGIC_VECTOR(m-1 DOWNTO 0);
	SIGNAL y : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL output: STD_LOGIC_VECTOR(m DOWNTO 0);
begin
	L0 : Barrel generic map (m) port map(x,y,output);
--	
    
	
    tb_y : process
		begin
			y <= "000";
			wait for 5 ns;
			y <= "001";
			wait for 5 ns;
			y <= "010"; 
			wait for 5 ns;
			y <= "011"; 
			wait for 5 ns;
			y <= "100";
			wait for 5 ns;
			y <= "101"; 
			wait for 5 ns;
			y <= "110"; 
			wait for 5 ns;
			y <= "111"; 	  
			wait for 5 ns;
        end process tb_y;
		
    tb_x : process
		begin
			x <= "01110110";
			wait for 40 ns;
			x <= "00000001"; 			
			wait for 40 ns;
			x <= "00000000"; 			
			wait for 40 ns;
			x <= "11111111"; 			
			wait for 40 ns;
			x <= "10000000"; 			
			wait for 40 ns;
        end process tb_x;
		
		
		

end architecture Barrel_Testbench;
