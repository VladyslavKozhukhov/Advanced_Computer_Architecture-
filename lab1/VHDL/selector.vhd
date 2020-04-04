LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE work.aux_package.all;

-------------------------------------
ENTITY selector IS
  GENERIC (n : INTEGER := 8);
  PORT (     in1:  IN STD_LOGIC_VECTOR(n DOWNTO 0);
			  in2: IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		     sel: IN STD_LOGIC_VECTOR(1 downto 0);
             output: OUT STD_LOGIC_VECTOR(n DOWNTO 0));
END selector;
--------------------------------------------------------------
ARCHITECTURE OutputSelector OF selector IS
	signal out_shift : STD_LOGIC_VECTOR(n DOWNTO 0);

BEGIN
	out_shift<=std_logic_vector(resize(signed(in2), in1'length));

	output <= out_shift  WHEN sel="11" ELSE
	          in1;
END OutputSelector;

