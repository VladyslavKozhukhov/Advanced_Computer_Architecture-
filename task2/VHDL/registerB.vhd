LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY B_Register IS
	GENERIC (
		n : POSITIVE := 8 -- A,B length
	);
	PORT (
		ena : IN std_logic;
		B_in: IN std_logic_vector(n - 1 DOWNTO 0);
		----------------------------------------
		B_out: OUT std_logic_vector(n - 1 DOWNTO 0)
	);
END B_Register;
------------- B_Register Architecture code --------------
ARCHITECTURE arc_B_Register OF B_Register IS

BEGIN

	syncProcessBACK : PROCESS (ena)
	BEGIN
			IF (ena = '1') THEN
				B_out <= B_in;
			END IF;
	END PROCESS syncProcessBACK;

END arc_B_Register;