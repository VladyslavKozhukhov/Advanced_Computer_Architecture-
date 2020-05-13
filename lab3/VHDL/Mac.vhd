LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY MACModule IS
	GENERIC (
		n : POSITIVE := 8 -- A,B length
	);
	PORT (
		rst, clk : IN std_logic;
		A, B : IN std_logic_vector(n - 1 DOWNTO 0);
		----------------------------------------
		ACC : OUT std_logic_vector(2 * n DOWNTO 0)-- 1 more bit to carry
	);
END MACModule;
------------- MACModule Architecture code --------------
ARCHITECTURE arc_MACModule OF MACModule IS
	SIGNAL ACC_tmp : std_logic_vector (2 * n DOWNTO 0);-- 1 more bit to carry
BEGIN
	PROCESS (clk, rst)
	BEGIN
		IF (rst = '1') THEN
			ACC_tmp <= (OTHERS => '0');
		ELSIF (rising_edge(clk)) THEN
			ACC_tmp <= ACC_tmp + A * B;
		END IF;
	END PROCESS;
	ACC <= ACC_tmp;

END arc_MACModule;