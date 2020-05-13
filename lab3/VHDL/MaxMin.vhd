LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY MaxMin IS
	GENERIC (
		n : POSITIVE := 8 -- A,B length
	);
	PORT (
		A, B : IN std_logic_vector(n - 1 DOWNTO 0);
		maxFlag : IN std_logic;
		----------------------------------------
		result : OUT std_logic_vector(n - 1 DOWNTO 0)
	);
END MaxMin;
------------- MaxMin Architecture code --------------
ARCHITECTURE arc_MaxMin OF MaxMin IS

	SIGNAL arith_logic_output_LO, arith_logic_output_HI, shift_output : std_logic_vector(n - 1 DOWNTO 0);
	SIGNAL found : STD_LOGIC;
BEGIN
	PROCESS IS
	BEGIN
		FOR ii IN n - 1 DOWNTO 0 LOOP
			IF (A(ii) = '1' AND B(ii) = '0') THEN
				IF (maxFlag = '1') THEN
					result <= A;
				ELSE
					result <= B;
				END IF;
				EXIT;
			ELSIF (A(ii) = '0' AND B(ii) = '1') THEN
				IF (maxFlag = '1') THEN
					result <= B;
				ELSE
					result <= A;
				END IF;
				EXIT;
			ELSIF (((A(ii) = '0' AND B(ii) = '0') OR (A(ii) = '1' AND B(ii) = '1')) AND ii = 0) THEN
				result <= B;
			END IF;
		END LOOP;
		WAIT;
	END PROCESS;
END arc_MaxMin;