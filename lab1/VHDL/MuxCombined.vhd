LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;

-------------------------------------
ENTITY MuxCombined IS
  GENERIC (n : INTEGER := 8);
  PORT (    x1,x2: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			sel: IN STD_LOGIC;
            output: OUT STD_LOGIC_VECTOR(n-1 downto 0));
END MuxCombined;
--------------------------------------------------------------
ARCHITECTURE MuxCombinedArchitecture OF MuxCombined IS
BEGIN
	muxChain : FOR i IN 0 TO n-1 GENERATE   -- Just a group of n muxes (n is 8 by default)
		chain : mux2on1 PORT MAP(
			in1 => x1(i),
			in2 => x2(i),
			sel => sel,
			output => output(i)
		);
	END GENERATE;
END MuxCombinedArchitecture;

