LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;
USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY outputSelector IS
	GENERIC (
		n : POSITIVE := 8; -- A,B length
		m : POSITIVE := 5; -- OPC length
		k : POSITIVE := 2 -- STATUS length
	);
	PORT (
		clk : IN std_logic;
		OPC : IN std_logic_vector(m - 1 DOWNTO 0);
		arith_logic_LO, arith_logic_HI : IN std_logic_vector(n - 1 DOWNTO 0);
		cout_arith_logic : IN std_logic;
		shifter_LO, shifter_HI : IN std_logic_vector(n - 1 DOWNTO 0);
		cout_shifter : IN std_logic;
		----------------------------------------
		HI, LO : OUT std_logic_vector(n - 1 DOWNTO 0);
		STATUS : OUT std_logic_vector(k - 1 DOWNTO 0)
	);
END outputSelector;
------------- outputSelector Architecture code --------------
ARCHITECTURE arc_outputSelector OF outputSelector IS

	SIGNAL carry, validOP, shiftFlag : std_logic;
	SIGNAL HI_SIG, LO_SIG : std_logic_vector(n - 1 DOWNTO 0);
	SIGNAL zeroSig : std_logic_vector(n - 1 DOWNTO 0);
	SIGNAL OPC_INTEGER : INTEGER;
	---OPCODES--------
	CONSTANT OPC_ADD : INTEGER := 1;
	CONSTANT OPC_SUB : INTEGER := 2;
	CONSTANT OPC_ADDC : INTEGER := 3;
	CONSTANT OPC_MULT : INTEGER := 4;
	CONSTANT OPC_MAC : INTEGER := 5;
	CONSTANT OPC_MAC_RST : INTEGER := 6;
	CONSTANT OPC_MAX : INTEGER := 7;
	CONSTANT OPC_MIN : INTEGER := 8;
	CONSTANT OPC_AND : INTEGER := 9;
	CONSTANT OPC_OR : INTEGER := 10;
	CONSTANT OPC_XOR : INTEGER := 11;
	CONSTANT OPC_RLA : INTEGER := 12;
	CONSTANT OPC_RLC : INTEGER := 13;
	CONSTANT OPC_RRA : INTEGER := 14;
	CONSTANT OPC_RRC : INTEGER := 15;
	-----------------------------------
BEGIN

	zeroSig <= (OTHERS => '0');

	OPC_INTEGER <= to_integer(unsigned(OPC));
	
	validOP<= '1' WHEN ((OPC_INTEGER = OPC_ADD) OR (OPC_INTEGER = OPC_SUB) OR (OPC_INTEGER = OPC_ADDC) OR (OPC_INTEGER = OPC_MULT) OR (OPC_INTEGER = OPC_MAC) OR (OPC_INTEGER = OPC_MAX) OR (OPC_INTEGER = OPC_MIN) OR (OPC_INTEGER = OPC_AND) OR (OPC_INTEGER = OPC_OR) OR (OPC_INTEGER = OPC_XOR)) ELSE
			'1' WHEN ((OPC_INTEGER = OPC_RLA) OR (OPC_INTEGER = OPC_RLC) OR (OPC_INTEGER = OPC_RRA) OR (OPC_INTEGER = OPC_RRC)) ELSE
			'0';
			
	shiftFlag<= '1' WHEN ((OPC_INTEGER = OPC_RLA) OR (OPC_INTEGER = OPC_RLC) OR (OPC_INTEGER = OPC_RRA) OR (OPC_INTEGER = OPC_RRC)) ELSE
			'0';
	
	carryProc : Process (clk, validOP,OPC_INTEGER, cout_arith_logic, cout_shifter)
	BEGIN
		if (validOP = '1') THEN
			if (clk'event and clk='1') THEN
				if (shiftFlag='1') THEN
					carry <= cout_shifter;
				ELSE
					carry <= cout_arith_logic;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	HIProc : Process (clk, validOP, OPC_INTEGER, arith_logic_HI, shifter_HI)
	BEGIN
		if (validOP = '1') THEN
			if (clk'event and clk='1') THEN
				if (shiftFlag='1') THEN
					HI_SIG <= shifter_HI;
				ELSE
					HI_SIG <= arith_logic_HI;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	
	LOProc : Process (clk, validOP, OPC_INTEGER, arith_logic_LO, shifter_LO)
	BEGIN
		if (validOP = '1') THEN
			if (clk'event and clk='1') THEN
				if (shiftFlag='1') THEN
					LO_SIG <= shifter_LO;
				ELSE
					LO_SIG <= arith_logic_LO;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	HI <= HI_SIG;
	LO <= LO_SIG;

	STATUS <= "11" WHEN carry = '1' AND ((LO_SIG = zeroSig))ELSE
		"10" WHEN ((LO_SIG = zeroSig)) ELSE --RES(HI,LO) = 0...0
		"01" WHEN (carry = '1') ELSE
		"00";

END arc_outputSelector;