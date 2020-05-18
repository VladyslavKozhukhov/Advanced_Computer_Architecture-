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
		ACC : OUT std_logic_vector(2 * n - 1 DOWNTO 0)
	);
END MACModule;
------------- MACModule Architecture code --------------
ARCHITECTURE arc_MACModule OF MACModule IS
	SIGNAL ACC_tmp : std_logic_vector (2 * n - 1 DOWNTO 0);
	SIGNAL mult_tmp : std_logic_vector (2 * n - 1 DOWNTO 0);
	SIGNAL AdderSubResult : std_logic_vector (2 * n DOWNTO 0);
BEGIN
	multEntity : MultSub GENERIC MAP(n) PORT MAP(A, B, mult_tmp);
	adderSubEntity : AdderSub GENERIC MAP(2 * n) PORT MAP('0', mult_tmp, ACC_tmp, "00", AdderSubResult);
	--	adderSubEntity : AdderSub generic map(n) port map('0',A,AdderSubResultZERO,"00",AdderSubResult);--check

	PROCESS (clk, rst)
	BEGIN
		IF (rst = '1') THEN
			ACC_tmp <= (OTHERS => '0');
		END IF;
		IF (rising_edge(clk)) THEN
			ACC_tmp <= AdderSubResult(2 * n - 1 DOWNTO 0); -- adder
		END IF;
	END PROCESS;
	ACC <= ACC_tmp;

END arc_MACModule;