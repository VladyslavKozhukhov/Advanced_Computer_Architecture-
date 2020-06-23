LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY ALU IS
	GENERIC (
		n : POSITIVE := 8; -- A,B length
		m : POSITIVE := 5; -- OPC length
		k : POSITIVE := 2 -- STATUS length
	);
	PORT (
		clkMAC : IN std_logic;
		OPC : IN std_logic_vector(m - 1 DOWNTO 0);
		A, B : IN std_logic_vector(n - 1 DOWNTO 0);
		cin : IN std_logic;
		----------------------------------------
		HI, LO : OUT std_logic_vector(n - 1 DOWNTO 0);
		STATUS : OUT std_logic_vector(k - 1 DOWNTO 0)
	);
END ALU;
------------- ALU Architecture code --------------
ARCHITECTURE arc_ALU OF ALU IS

	SIGNAL alu_status : std_logic_vector(k - 1 DOWNTO 0);

	SIGNAL arith_logic_LO, arith_logic_HI, shifter_LO, shifter_HI : std_logic_vector(n - 1 DOWNTO 0);
	SIGNAL cout_arith_logic, cout_shifter : std_logic;

BEGIN

	arithAndLogicEntity : ArithLogic GENERIC MAP(n, m) PORT MAP(clkMAC, OPC, A, B, cin, arith_logic_HI, arith_logic_LO, cout_arith_logic); --test
	shiftEntity : shifter GENERIC MAP(n) PORT MAP(cin, A, B(2 DOWNTO 0), OPC(1 DOWNTO 0), shifter_HI, shifter_LO, cout_shifter); --TO DO: *FIXES ONLY*
	selectorEntity : outputSelector GENERIC MAP(n, m, k) PORT MAP(OPC, arith_logic_LO, arith_logic_HI, cout_arith_logic, shifter_LO, shifter_HI, cout_shifter, HI, LO, STATUS); --DONE
	
END arc_ALU;