LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;
USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY shifter IS
	GENERIC (
		n : POSITIVE := 8 -- A length
	);
	PORT (
		cin : IN std_logic;
		A : IN std_logic_vector(n - 1 DOWNTO 0);
		B : IN std_logic_vector(2 DOWNTO 0);
		sel : IN std_logic_vector(1 DOWNTO 0);
		----------------------------------------
		HI, LO : OUT std_logic_vector(n - 1 DOWNTO 0);
		cout : OUT std_logic
	);
END shifter;
------------- shifter Architecture code --------------
ARCHITECTURE arc_shifter OF shifter IS
	SIGNAL shiftAmount : INTEGER RANGE 0 TO 7;

BEGIN

	HI <= (OTHERS => '0');
	shiftAmount <= to_integer(unsigned(B));

	shiftProcess : PROCESS (A, shiftAmount, sel)
		VARIABLE shiftVar : INTEGER RANGE 0 TO 7;
		VARIABLE coutVar : std_logic;
		VARIABLE coutVarVar : std_logic;
		VARIABLE resultVar : std_logic_vector(n - 1 DOWNTO 0);
	BEGIN
		shiftVar := shiftAmount;
		coutVar := '0';
		coutVarVar := '0';
		resultVar := A;
		IF (shiftVar /= 0) THEN
			IF (sel = "00") THEN --RLA-------------------------
				WHILE (shiftVar > 0) LOOP
					coutVar := resultVar(n - 1);
					resultVar := resultVar(n - 2 DOWNTO 0) & '0';
					shiftVar := shiftVar - 1;
				END LOOP;
			ELSIF (sel = "10") THEN --RRA------------
				WHILE (shiftVar > 0) LOOP
					coutVar := resultVar(0);
					coutVarVar := resultVar(n - 1);
					resultVar := coutVarVar & resultVar(n - 1 DOWNTO 1); --copy msb due to manual
					shiftVar := shiftVar - 1;
				END LOOP;
			ELSIF (sel = "01") THEN --RLC+++++++++++++++++++++++
				coutVar := A(n - 1);
				resultVar := A(n - 2 DOWNTO 0) & cin;
				shiftVar := shiftVar - 1;
				WHILE (shiftVar > 0) LOOP
					coutVarVar := coutVar;
					coutVar := resultVar(n - 1);
					resultVar := resultVar(n - 2 DOWNTO 0) & coutVarVar;
					shiftVar := shiftVar - 1;
				END LOOP;
			ELSIF (sel = "11") THEN --RRC+++++
				coutVar := A(0);
				resultVar := cin & A(n - 1 DOWNTO 1);
				shiftVar := shiftVar - 1;
				WHILE (shiftVar > 0) LOOP
					coutVarVar := coutVar;
					coutVar := resultVar(0);
					resultVar := coutVarVar & resultVar(n - 1 DOWNTO 1);
					shiftVar := shiftVar - 1;
				END LOOP;
			END IF;
		END IF;
		cout <= coutVar;
		LO <= resultVar;
	END PROCESS shiftProcess;

END arc_shifter;