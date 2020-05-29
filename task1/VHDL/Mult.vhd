LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;

ENTITY MultSub IS
	GENERIC (n : INTEGER := 8);
	PORT (
		x, y : IN STD_LOGIC_VECTOR (n - 1 DOWNTO 0);
		s : OUT STD_LOGIC_VECTOR(2 * n - 1 DOWNTO 0)
	);
END MultSub;
------------- MultSub Architecture code --------------
ARCHITECTURE arc_MultSub OF MultSub IS
BEGIN
	s <= x * y;

END arc_MultSub;