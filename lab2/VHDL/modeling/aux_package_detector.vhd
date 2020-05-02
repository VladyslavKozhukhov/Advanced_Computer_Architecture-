 LIBRARY ieee;
USE ieee.std_logic_1164.all;


package aux_package_detector is
  -----------------------------------------------------------------
component detector_val is
	generic (
		k: positive :=3;
		m:positive :=8
	);
	port(
		count: IN STD_LOGIC_VECTOR(k DOWNTO 0);
		detector: OUT STD_LOGIC);
	
end component;
  

  -----------------------------------------------------------------
end aux_package_detector;