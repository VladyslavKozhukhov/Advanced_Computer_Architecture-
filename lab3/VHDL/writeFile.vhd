library ieee;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
entity WriteLogic is
	generic (
		n : positive := 8  -- A,B length
	);
	port(
		Status : in std_logic_vector(1 downto 0);
		HI,LO : in std_logic_vector(n-1 downto 0)
	);
end WriteLogic;
------------- WriteLogic Architecture code --------------
architecture arc_WriteLogic of WriteLogic is
 file file_RESULTS : text;
begin
	writeProc:process
		variable v_OLINE     : line;
	begin
	    file_open(file_RESULTS, "outputFile.txt", write_mode);--HI LO status		
		write(v_OLINE,HI, right, n);
		write(v_OLINE,LO, right, n);
		write(v_OLINE,Status, right, n);  
        writeline(file_RESULTS,v_OLINE);
		file_close(file_RESULTS);
	wait;
   end process writeProc;

end arc_WriteLogic;



