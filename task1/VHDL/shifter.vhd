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
	shiftProcess : PROCESS (A, shiftAmount, sel, cin)
		VARIABLE tmpVector : UNSIGNED(n DOWNTO 0);
		VARIABLE totalRes : std_logic_vector(n DOWNTO 0);
	BEGIN
		CASE sel IS
			WHEN "00" => -- RLA --
				totalRes(n - 1 DOWNTO 0) := A;
				totalRes(n) := cin;
				tmpVector := unsigned(totalRes);
				FOR i IN 1 TO 7 LOOP
					tmpVector := tmpVector ROL 1;
					tmpVector(0) := '0';
					EXIT WHEN (i = shiftAmount);
				END LOOP;
				totalRes := std_logic_vector(tmpVector);
			WHEN "10" => --RRA--
				totalRes(n - 1 DOWNTO 0) := A;
				tmpVector := unsigned(totalRes);
				FOR i IN 1 TO 7 LOOP
					tmpVector (n) := tmpVector (n - 1);
					tmpVector := tmpVector ROR 1;
					EXIT WHEN (i = shiftAmount);
				END LOOP;
				totalRes := std_logic_vector(tmpVector);
			WHEN "01" => --RLC--

				totalRes(n - 1 DOWNTO 0) := A;
				totalRes(n) := cin;
				tmpVector := unsigned(totalRes) ROL shiftAmount;
				totalRes := std_logic_vector(tmpVector);

			WHEN "11" => --RRC--
				totalRes(n - 1 DOWNTO 0) := A;
				totalRes(n) := cin;
				tmpVector := unsigned(totalRes) ROR shiftAmount;
				totalRes := std_logic_vector(tmpVector);
			WHEN OTHERS => tmpVector := unsigned(totalRes);
		END CASE;

		LO <= totalRes (n - 1 DOWNTO 0);
		cout <= totalRes(n);
	END PROCESS shiftProcess;

END arc_shifter;