 LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity detector_val is
	generic (
		k: positive :=3
		m:positive :=8
	);
	port(
		trigger: IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		count: IN STD_LOGIC_VECTOR(k DOWNTO 0);
		--riseSig :IN STD_LOGIC; 
		detector: OUT STD_LOGIC);
	
end detector_val;
------------- SynchronousDelay Architecture code --------------
architecture arc_detector_val of detector_val is
begin
	cntProc : process (count)
		BEGIN		
		detector<='0';
				IF (count = m+1) THEN
					detector<='1';
				END IF;
	END PROCESS cntProc;
	
end arc_detector_val;



		