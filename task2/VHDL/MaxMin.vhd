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
	PROCESS (A, B, maxFlag)
		VARIABLE resultVar : std_logic_vector(n - 1 DOWNTO 0);
	BEGIN
		resultVar := (OTHERS => '0');
		FOR ii IN n - 1 DOWNTO 0 LOOP
			IF (A(ii) = '1' AND B(ii) = '0') THEN
				IF (maxFlag = '1') THEN
					resultVar := A;
				ELSE
					resultVar := B;
				END IF;
				EXIT;
			ELSIF (A(ii) = '0' AND B(ii) = '1') THEN
				IF (maxFlag = '1') THEN
					resultVar := B;
				ELSE
					resultVar := A;
				END IF;
				EXIT;
			ELSIF (((A(ii) = '0' AND B(ii) = '0') OR (A(ii) = '1' AND B(ii) = '1')) AND ii = 0) THEN
				resultVar := B;
			END IF;
		END LOOP;
		RESULT <= resultVar;
	END PROCESS;
END arc_MaxMin;