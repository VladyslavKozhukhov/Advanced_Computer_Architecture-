LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY frontRegister IS
	GENERIC (
		n : POSITIVE := 8; -- A,B length
		k : POSITIVE := 2 -- STATUS length
	);
	PORT (
		rst, ena, clk : IN std_logic;
		HI_in, LO_in : IN std_logic_vector(n - 1 DOWNTO 0);
		Status_in : IN std_logic_vector(k - 1 DOWNTO 0);
		----------------------------------------
		HI_out, LO_out : OUT std_logic_vector(n - 1 DOWNTO 0);
		Status_out : OUT std_logic_vector(k - 1 DOWNTO 0)
	);
END frontRegister;
------------- frontRegister Architecture code --------------
ARCHITECTURE arc_frontRegister OF frontRegister IS

BEGIN

	syncProcessFRONT : PROCESS (rst,clk)
	BEGIN
		IF (rst = '1') THEN
			HI_out <= (OTHERS => '0');
			LO_out <= (OTHERS => '0');
			Status_out <= (OTHERS => '0');
		ELSIF (rising_edge(clk)) THEN
			IF (ena = '1') THEN
				HI_out <= HI_in;
				LO_out <= LO_in;
				Status_out <= Status_in;
			END IF;
		END IF;
	END PROCESS syncProcessFRONT;

END arc_frontRegister;