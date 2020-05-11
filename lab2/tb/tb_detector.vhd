 LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY detector_tb IS
	CONSTANT m : positive :=8;
	CONSTANT k : positive :=3;
END detector_tb;

architecture detector_Testbench OF detector_tb IS
component detector_val is
	generic (
		m:positive :=8;
		k: positive :=3
	);
	port(
		count: IN STD_LOGIC_VECTOR(k DOWNTO 0);
		detector: OUT STD_LOGIC);
	
end component;

SIGNAL count: STD_LOGIC_VECTOR (k DOWNTO 0);
SIGNAL detector : STD_LOGIC;
		 

BEGIN

	L0 : detector_val generic map (m,k) PORT MAP(count,detector);
		tb_din : process
		begin
			count <= "0000";
			wait for 10 us;
			count <= "0001";
			wait for 10 us;
			count <= "0010";
			wait for 10 us;
			count <= "0011"; 
			wait for 10 us;
			count <= "0100";
			wait for 10 us;
			count <= "0101";
			wait for 10 us;
			count <= "0110";
			wait for 10 us;
			count <= "0111";--7
			wait for 10 us;
			count <= "1000";
			wait for 10 us;
			count <= "1001";
			wait for 10 us;
			count <= "1010";
			wait for 10 us;
			count <= "1011";--10
	wait;	
			
  end process tb_din;
		

  
END detector_Testbench;