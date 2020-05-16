LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE STD.textio.ALL;
USE ieee.std_logic_textio.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;

ENTITY ReadLogic IS
	GENERIC (
		n : POSITIVE := 8; -- A,B length
		m : POSITIVE := 5 -- OPC length
	);
	PORT (
		rst, ena, clk : STD_LOGIC;
		OPC : OUT std_logic_vector(m - 1 DOWNTO 0);
		A, B : OUT std_logic_vector(n - 1 DOWNTO 0);
		cin, endSig : OUT std_logic
	);
END ReadLogic;
------------- ReadLogic Architecture code --------------
ARCHITECTURE arc_ReadLogic OF ReadLogic IS
	FILE file_VECTORS : text;
	CONSTANT filename : STRING := "inputFile.txt";

BEGIN

	file_open(file_VECTORS, filename, read_mode); -- op A B cin

	readProc : PROCESS (rst, ena, clk)
		VARIABLE v_ILINE : line;
		VARIABLE v_A, v_B : std_logic_vector(n - 1 DOWNTO 0);
		VARIABLE v_OPC : std_logic_vector(m - 1 DOWNTO 0);
		VARIABLE v_Cin, v_endSig : std_logic;
		VARIABLE v_SPACEOne, v_SPACETwo, v_SPACEThree : CHARACTER;
		VARIABLE filestatus : file_open_status;
	BEGIN
		v_endSig := '0';
		IF (rising_edge(clk)) THEN
			IF (rst = '0') THEN
				IF (ena = '1') THEN
					IF NOT endfile(file_VECTORS) THEN
						readline(file_VECTORS, v_ILINE);
						read(v_ILINE, v_OPC);
						read(v_ILINE, v_SPACEOne);
						read(v_ILINE, v_A);
						read(v_ILINE, v_SPACETwo);
						read(v_ILINE, v_B);
						read(v_ILINE, v_SPACEThree);
						read(v_ILINE, v_Cin);
						OPC <= v_OPC;
						A <= v_A;
						B <= v_B;
						cin <= v_Cin;
					ELSE
						file_close(file_VECTORS);
						v_endSig := '1';
					END IF;
				END IF;
			END IF;
		END IF;
		endSig <= v_endSig;
	END PROCESS readProc;

END arc_ReadLogic;