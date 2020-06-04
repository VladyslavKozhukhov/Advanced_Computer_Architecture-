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
		OPC : IN std_logic_vector(m - 1 DOWNTO 0);
		arith_logic_LO, arith_logic_HI : IN std_logic_vector(n - 1 DOWNTO 0);
		cout_arith_logic : IN std_logic;
		shifter_LO, shifter_HI : IN std_logic_vector(n - 1 DOWNTO 0);
		cout_shifter : IN std_logic;
		----------------------------------------
		HI, LO : BUFFER std_logic_vector(n - 1 DOWNTO 0);
		STATUS : OUT std_logic_vector(k - 1 DOWNTO 0)
	);
END outputSelector;
------------- outputSelector Architecture code --------------
ARCHITECTURE arc_outputSelector OF outputSelector IS

	SIGNAL carry : std_logic;
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

	carry <= cout_arith_logic WHEN (OPC_INTEGER = OPC_ADD) ELSE
		cout_arith_logic WHEN (OPC_INTEGER = OPC_SUB) ELSE
		cout_arith_logic WHEN (OPC_INTEGER = OPC_ADDC) ELSE
		cout_arith_logic WHEN (OPC_INTEGER = OPC_MULT) ELSE
		cout_arith_logic WHEN (OPC_INTEGER = OPC_MAC) ELSE
		cout_arith_logic WHEN (OPC_INTEGER = OPC_MAC_RST) ELSE
		cout_arith_logic WHEN (OPC_INTEGER = OPC_MAX) ELSE
		cout_arith_logic WHEN (OPC_INTEGER = OPC_MIN) ELSE
		cout_arith_logic WHEN (OPC_INTEGER = OPC_AND) ELSE
		cout_arith_logic WHEN (OPC_INTEGER = OPC_OR) ELSE
		cout_arith_logic WHEN (OPC_INTEGER = OPC_XOR) ELSE
		cout_shifter WHEN (OPC_INTEGER = OPC_RLA) ELSE
		cout_shifter WHEN (OPC_INTEGER = OPC_RLC) ELSE
		cout_shifter WHEN (OPC_INTEGER = OPC_RRA) ELSE
		cout_shifter WHEN (OPC_INTEGER = OPC_RRC) ELSE
		'0';

	HI_SIG <= arith_logic_HI WHEN (OPC_INTEGER = OPC_ADD) ELSE
		arith_logic_HI WHEN (OPC_INTEGER = OPC_SUB) ELSE
		arith_logic_HI WHEN (OPC_INTEGER = OPC_ADDC) ELSE
		arith_logic_HI WHEN (OPC_INTEGER = OPC_MULT) ELSE
		arith_logic_HI WHEN (OPC_INTEGER = OPC_MAC) ELSE
		HI WHEN (OPC_INTEGER = OPC_MAC_RST) ELSE  -- MAC_RST Keeps the same HI, LO values
		arith_logic_HI WHEN (OPC_INTEGER = OPC_MAX) ELSE
		arith_logic_HI WHEN (OPC_INTEGER = OPC_MIN) ELSE
		arith_logic_HI WHEN (OPC_INTEGER = OPC_AND) ELSE
		arith_logic_HI WHEN (OPC_INTEGER = OPC_OR) ELSE
		arith_logic_HI WHEN (OPC_INTEGER = OPC_XOR) ELSE
		shifter_HI WHEN (OPC_INTEGER = OPC_RLA) ELSE
		shifter_HI WHEN (OPC_INTEGER = OPC_RLC) ELSE
		shifter_HI WHEN (OPC_INTEGER = OPC_RRA) ELSE
		shifter_HI WHEN (OPC_INTEGER = OPC_RRC) ELSE
		HI;  -- Invalid OPC Keeps the same HI, LO values

	LO_SIG <= arith_logic_LO WHEN (OPC_INTEGER = OPC_ADD) ELSE
		arith_logic_LO WHEN (OPC_INTEGER = OPC_SUB) ELSE
		arith_logic_LO WHEN (OPC_INTEGER = OPC_ADDC) ELSE
		arith_logic_LO WHEN (OPC_INTEGER = OPC_MULT) ELSE
		arith_logic_LO WHEN (OPC_INTEGER = OPC_MAC) ELSE
		LO WHEN (OPC_INTEGER = OPC_MAC_RST) ELSE  -- MAC_RST Keeps the same HI, LO values
		arith_logic_LO WHEN (OPC_INTEGER = OPC_MAX) ELSE
		arith_logic_LO WHEN (OPC_INTEGER = OPC_MIN) ELSE
		arith_logic_LO WHEN (OPC_INTEGER = OPC_AND) ELSE
		arith_logic_LO WHEN (OPC_INTEGER = OPC_OR) ELSE
		arith_logic_LO WHEN (OPC_INTEGER = OPC_XOR) ELSE
		shifter_LO WHEN (OPC_INTEGER = OPC_RLA) ELSE
		shifter_LO WHEN (OPC_INTEGER = OPC_RLC) ELSE
		shifter_LO WHEN (OPC_INTEGER = OPC_RRA) ELSE
		shifter_LO WHEN (OPC_INTEGER = OPC_RRC) ELSE
		LO;  -- Invalid OPC Keeps the same HI, LO values

	HI <= HI_SIG;
	LO <= LO_SIG;

	STATUS <= "11" WHEN carry = '1' AND ((LO_SIG = zeroSig))ELSE
		"10" WHEN ((LO_SIG = zeroSig)) ELSE --RES(HI,LO) = 0...0
		"01" WHEN (carry = '1') ELSE
		"00";

END arc_outputSelector;