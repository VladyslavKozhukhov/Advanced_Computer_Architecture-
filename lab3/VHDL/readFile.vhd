library ieee;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
entity ReadLogic is
	generic (
		n : positive := 8 ; -- A,B length
		m : positive := 5   -- OPC length
	);
	port(
		OPC : out std_logic_vector(m-1 downto 0);
		A,B : out std_logic_vector(n-1 downto 0);
		cin : out std_logic
	);
end ReadLogic;
------------- ReadLogic Architecture code --------------
architecture arc_ReadLogic of ReadLogic is
  file file_VECTORS : text;
begin
	readProc:process
		variable v_ILINE     : line;
		variable v_A,v_B : std_logic_vector(n-1 downto 0);
		variable v_Cin : std_logic;
		variable v_OPC : std_logic_vector(m-1 downto 0);
		variable v_SPACEOne    : character;
		variable v_SPACETwo  : character;
		variable v_SPACEThree  : character;

	begin
		file_open(file_VECTORS, "inputFile.txt",  read_mode); -- op A B cin
		while not endfile(file_VECTORS) loop
		readline(file_VECTORS, v_ILINE);
		read(v_ILINE, v_OPC);
		read(v_ILINE, v_SPACEOne);         
		read(v_ILINE, v_A);
		read(v_ILINE, v_SPACETwo);           
		read(v_ILINE, v_B);
		read(v_ILINE, v_SPACEThree);           
		read(v_ILINE, v_Cin);

		OPC<=v_OPC;
		A<=v_A;
		B<=v_B;
		cin<=v_Cin;
		file_close(file_VECTORS);

   end process readProc;


end arc_ReadLogic;
