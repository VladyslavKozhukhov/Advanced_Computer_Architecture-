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
		clk : IN std_logic;
		OPC : OUT std_logic_vector(m - 1 DOWNTO 0);
		A, B : OUT std_logic_vector(n - 1 DOWNTO 0);
		cin : OUT std_logic
	);
END ReadLogic;
------------- ReadLogic Architecture code --------------
ARCHITECTURE arc_ReadLogic OF ReadLogic IS
	FILE file_VECTORS : text;

BEGIN
	readProc : PROCESS(clk)
		VARIABLE v_ILINE : line;
		VARIABLE v_A, v_B : std_logic_vector(n - 1 DOWNTO 0);
		VARIABLE v_Cin : std_logic;
		VARIABLE v_OPC : std_logic_vector(m - 1 DOWNTO 0);
		VARIABLE v_SPACEOne : CHARACTER;
		VARIABLE v_SPACETwo : CHARACTER;
		VARIABLE v_SPACEThree : CHARACTER;
	BEGIN
		if (rising_edge(clk)) then
			if NOT endfile(file_VECTORS) then
				file_open(file_VECTORS, "inputFile.txt", read_mode); -- op A B cin
				readline(file_VECTORS, v_ILINE);
				read(v_ILINE, v_OPC);
				read(v_ILINE, v_SPACEOne);
				read(v_ILINE, v_A);
				read(v_ILINE, v_SPACETwo);
				read(v_ILINE, v_B);
				read(v_ILINE, v_SPACEThree);
				read(v_ILINE, v_Cin);
			end if;
			file_close(file_VECTORS);
			WAIT;
		end if;
		OPC <= v_OPC;
		A <= v_A;
		B <= v_B;
		cin <= v_Cin;
	END PROCESS readProc;
	
END arc_ReadLogic;