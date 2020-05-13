LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE STD.textio.ALL;
USE ieee.std_logic_textio.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
ENTITY WriteLogic IS
	GENERIC (
		n : POSITIVE := 8 -- A,B length
	);
	PORT (
		Status : IN std_logic_vector(1 DOWNTO 0);
		HI, LO : IN std_logic_vector(n - 1 DOWNTO 0)
	);
END WriteLogic;
------------- WriteLogic Architecture code --------------
ARCHITECTURE arc_WriteLogic OF WriteLogic IS
	FILE file_RESULTS : text;
BEGIN
	writeProc : PROCESS(HI, LO, STATUS)
		VARIABLE v_OLINE : line;
	BEGIN
		file_open(file_RESULTS, "outputFile.txt", write_mode);--HI LO status		
		write(v_OLINE, HI, right, n);
		write(v_OLINE, LO, right, n);
		write(v_OLINE, Status, right, n);
		writeline(file_RESULTS, v_OLINE);
		file_close(file_RESULTS);
		WAIT;
	END PROCESS writeProc;

END arc_WriteLogic;