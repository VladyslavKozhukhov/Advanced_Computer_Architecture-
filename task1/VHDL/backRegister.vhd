LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY backRegister IS
	GENERIC (
		n : POSITIVE := 8; -- A,B length
		m : POSITIVE := 5 -- OPC length
	);
	PORT (
		rst, ena, clk : IN std_logic;
		OPC_in : IN std_logic_vector(m - 1 DOWNTO 0);
		A_in, B_in : IN std_logic_vector(n - 1 DOWNTO 0);
		cin_in : IN std_logic;
		cin_total : IN std_logic;

		----------------------------------------
		OPC_out : OUT std_logic_vector(m - 1 DOWNTO 0);
		A_out, B_out : OUT std_logic_vector(n - 1 DOWNTO 0);
		cin_out : OUT std_logic

	);
END backRegister;
------------- backRegister Architecture code --------------
ARCHITECTURE arc_backRegister OF backRegister IS

BEGIN

	syncProcessBACK : PROCESS (rst, clk)
	BEGIN
		IF (rst = '1') THEN
			OPC_out <= (OTHERS => '0');
			A_out <= (OTHERS => '0');
			B_out <= (OTHERS => '0');
			cin_out <= '0';
		ELSIF (clk'event AND clk = '1') THEN
			IF (ena = '1') THEN
				OPC_out <= OPC_in;
				A_out <= A_in;
				B_out <= B_in;
				IF (cin_in = 'X') THEN
					cin_out <= cin_total;
				ELSE
					cin_out <= cin_in;
				END IF;
			END IF;
		END IF;
	END PROCESS syncProcessBACK;

END arc_backRegister;