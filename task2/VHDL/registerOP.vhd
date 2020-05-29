LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY OP_Register IS
	GENERIC (
		n : POSITIVE := 8; -- A,B length
		m : POSITIVE := 5 -- OPC length
	);
	PORT (
		ena: IN std_logic;
		OP_in: IN std_logic_vector(n - 1 DOWNTO 0);
		----------------------------------------
		OP_out: OUT std_logic_vector(m - 1 DOWNTO 0)
	);
END OP_Register;
------------- OP_Register Architecture code --------------
ARCHITECTURE arc_OP_Register OF OP_Register IS

BEGIN

	syncProcessBACK : PROCESS (ena)
	BEGIN
			IF (ena = '1') THEN
				OP_out <= OP_in(m-1 DOWNTO 0);
			END IF;
	END PROCESS syncProcessBACK;

END arc_OP_Register;