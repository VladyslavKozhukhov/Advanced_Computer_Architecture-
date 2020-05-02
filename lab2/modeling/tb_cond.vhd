 LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package_counter.all;

ENTITY top_tb IS
	CONSTANT m : INTEGER := 8;
END top_tb;

architecture top_Testbench OF top_tb IS
SIGNAL rst,ena,clk: STD_LOGIC;
	SIGNAL din: STD_LOGIC_VECTOR (m-1 DOWNTO 0);
	SIGNAL cond : INTEGER range 0 to 3;
	SIGNAL	detector : std_logic;
--	SIGNAL	X,Y : STD_LOGIC_VECTOR(8-1 DOWNTO 0);
	--SIGNAL	riseSIGG:  std_logic;
--	SIGNAL	CR :  STD_LOGIC_VECTOR(3 DOWNTO 0);
		 

BEGIN

	L0 : top PORT MAP(rst,ena,clk,din,cond,detector);
			tb_ena : process
			begin
			ena<='0';
			wait for 20 us;

			ena<='1';
			
			wait;
        end process tb_ena;
		

  
END top_Testbench;