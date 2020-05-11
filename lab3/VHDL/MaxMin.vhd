LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity MaxMin is
	generic (
		n : positive := 8   -- A,B length
	);
	port(
		A,B : in std_logic_vector(n-1 downto 0);
		maxFlag : in std_logic;
		----------------------------------------
		result : out std_logic_vector(n-1 downto 0)
	);
end MaxMin;
------------- MaxMin Architecture code --------------
architecture arc_MaxMin of MaxMin is

SIGNAL arith_logic_output_LO,arith_logic_output_HI,shift_output : std_logic_vector(n-1 downto 0);

begin

	result<=A WHEN (maxFlag='0') ELSE   -- IT'S JUST FOR COMPILATION TEST
			B;
	
end arc_MaxMin;







