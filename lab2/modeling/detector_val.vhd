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
		detector: OUT STD_LOGIC);
	
end detector_val;
------------- SynchronousDelay Architecture code --------------
architecture arc_detector_val of detector_val is
begin
		detector<='1' when (count = m+1) else '0';
end arc_detector_val;



		