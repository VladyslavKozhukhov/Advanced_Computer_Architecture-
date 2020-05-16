LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE STD.textio.ALL;
USE ieee.std_logic_textio.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
ENTITY WriteLogic IS
	GENERIC (
		n : POSITIVE := 8; -- A,B length
		k : POSITIVE := 2  -- STATUS length
	);
	PORT (

		rst, ena, clk : STD_LOGIC;
		STATUS : IN std_logic_vector(k - 1 DOWNTO 0);
		HI, LO : IN std_logic_vector(n - 1 DOWNTO 0);
		endSig : IN std_logic
	);
END WriteLogic;
------------- WriteLogic Architecture code --------------
ARCHITECTURE arc_WriteLogic OF WriteLogic IS
	FILE file_RESULTS : text;
BEGIN

	file_open(file_RESULTS, "outputFile.txt", write_mode);--HI LO status
	
	writeProc : PROCESS (rst, ena, clk, endSig)
		VARIABLE v_OLINE : line;
	BEGIN
		IF (rising_edge(clk)) THEN
			IF (rst = '0') THEN
				IF (ena = '1') THEN
					IF (endSig = '0') THEN
						write(v_OLINE, HI, right, n);
						write(v_OLINE, LO, right, n);
						write(v_OLINE, Status, right, n);
						writeline(file_RESULTS, v_OLINE);
					ELSE
						file_close(file_RESULTS);
					END IF;
				END IF;
			END IF;
		END IF;

	END PROCESS writeProc;

END arc_WriteLogic;