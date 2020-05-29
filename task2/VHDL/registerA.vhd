LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY A_Register IS
	GENERIC (
		n : POSITIVE := 8 -- A,B length
	);
	PORT (
		ena : IN std_logic;
		A_in: IN std_logic_vector(n - 1 DOWNTO 0);
		----------------------------------------
		A_out: OUT std_logic_vector(n - 1 DOWNTO 0)
	);
END A_Register;
------------- A_Register Architecture code --------------
ARCHITECTURE arc_A_Register OF A_Register IS

BEGIN

	syncProcessBACK : PROCESS (ena)
	BEGIN
			IF (ena = '1') THEN
				A_out <= A_in;
			END IF;
	END PROCESS syncProcessBACK;

END arc_A_Register;