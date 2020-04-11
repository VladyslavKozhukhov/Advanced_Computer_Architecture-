LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;

--------------------------------------------------------
ENTITY mux2on1 IS
	PORT (in1, in2, sel: IN STD_LOGIC;
			  output: OUT STD_LOGIC);
END mux2on1;
--------------------------------------------------------
ARCHITECTURE MuxArchitecture OF mux2on1 IS
	SIGNAL outSig : STD_LOGIC;
BEGIN
	outSig <= in1 WHEN sel='0' ELSE -- The basic 1 bit mux
	          in2 WHEN sel='1' ELSE
		      'Z';
	output <= outSig;
END MuxArchitecture;

