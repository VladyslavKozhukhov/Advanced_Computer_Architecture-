LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
USE work.aux_package.all;
-------------------------------------------------------------
entity outputSelector is
	generic (
		n : positive := 8 ; -- A,B length
		m : positive := 5 ; -- OPC length
		k : positive := 2   -- STATUS length
	);
	port(
		OPC : in std_logic_vector(m-1 downto 0);
		arith_logic_LO,arith_logic_HI : in std_logic_vector(n-1 downto 0);
		cout_arith_logic : in std_logic;
		shifter_LO,shifter_HI : in std_logic_vector(n-1 downto 0);
		cout_shifter : in std_logic;
		----------------------------------------
		HI,LO : out std_logic_vector(n-1 downto 0);
		STATUS : out std_logic_vector(k-1 downto 0)
	);
end outputSelector;
------------- outputSelector Architecture code --------------
architecture arc_outputSelector of outputSelector is

SIGNAL carry : std_logic;
SIGNAL HI_SIG,LO_SIG : std_logic_vector(n-1 downto 0);
SIGNAL zeroSig : std_logic_vector(n-1 downto 0);
---OPCODES--------
SIGNAL OPC_ADD     : integer := 1;
SIGNAL OPC_SUB     : integer := 2;
SIGNAL OPC_ADDC    : integer := 3;
SIGNAL OPC_MULT    : integer := 4;
SIGNAL OPC_MAC     : integer := 5;
SIGNAL OPC_MAC_RST : integer := 6;
SIGNAL OPC_MAX	   : integer := 7;
SIGNAL OPC_MIN	   : integer := 8;
SIGNAL OPC_AND     : integer := 9;
SIGNAL OPC_OR      : integer := 10;
SIGNAL OPC_XOR     : integer := 11;
SIGNAL OPC_RLA     : integer :=	12;
SIGNAL OPC_RLC     : integer := 13;
SIGNAL OPC_RRA     : integer := 14;
SIGNAL OPC_RRC     : integer := 15;
-----------------------------------
begin
	
	zeroSig <= (others => '0');
	
	carry<= cout_arith_logic WHEN (to_integer(unsigned(OPC)) = OPC_ADD) ELSE
			cout_arith_logic WHEN (to_integer(unsigned(OPC)) = OPC_SUB) ELSE
			cout_arith_logic WHEN (to_integer(unsigned(OPC)) = OPC_ADDC) ELSE
			cout_arith_logic WHEN (to_integer(unsigned(OPC)) = OPC_MULT) ELSE
			cout_arith_logic WHEN (to_integer(unsigned(OPC)) = OPC_MAC) ELSE
			cout_arith_logic WHEN (to_integer(unsigned(OPC)) = OPC_MAC_RST) ELSE
			cout_arith_logic WHEN (to_integer(unsigned(OPC)) = OPC_MAX) ELSE
			cout_arith_logic WHEN (to_integer(unsigned(OPC)) = OPC_MIN) ELSE
			cout_arith_logic WHEN (to_integer(unsigned(OPC)) = OPC_AND) ELSE
			cout_arith_logic WHEN (to_integer(unsigned(OPC)) = OPC_OR) ELSE
			cout_arith_logic WHEN (to_integer(unsigned(OPC)) = OPC_XOR) ELSE
			cout_shifter WHEN (to_integer(unsigned(OPC)) = OPC_RLA) ELSE
			cout_shifter WHEN (to_integer(unsigned(OPC)) = OPC_RLC) ELSE
			cout_shifter WHEN (to_integer(unsigned(OPC)) = OPC_RRA) ELSE
			cout_shifter WHEN (to_integer(unsigned(OPC)) = OPC_RRC) ELSE
			'0';
			
	HI_SIG<=arith_logic_HI WHEN (to_integer(unsigned(OPC)) = OPC_ADD) ELSE
			arith_logic_HI WHEN (to_integer(unsigned(OPC)) = OPC_SUB) ELSE
			arith_logic_HI WHEN (to_integer(unsigned(OPC)) = OPC_ADDC) ELSE
			arith_logic_HI WHEN (to_integer(unsigned(OPC)) = OPC_MULT) ELSE
			arith_logic_HI WHEN (to_integer(unsigned(OPC)) = OPC_MAC) ELSE
			arith_logic_HI WHEN (to_integer(unsigned(OPC)) = OPC_MAC_RST) ELSE
			arith_logic_HI WHEN (to_integer(unsigned(OPC)) = OPC_MAX) ELSE
			arith_logic_HI WHEN (to_integer(unsigned(OPC)) = OPC_MIN) ELSE
			arith_logic_HI WHEN (to_integer(unsigned(OPC)) = OPC_AND) ELSE
			arith_logic_HI WHEN (to_integer(unsigned(OPC)) = OPC_OR) ELSE
			arith_logic_HI WHEN (to_integer(unsigned(OPC)) = OPC_XOR) ELSE
			shifter_HI WHEN (to_integer(unsigned(OPC)) = OPC_RLA) ELSE
			shifter_HI WHEN (to_integer(unsigned(OPC)) = OPC_RLC) ELSE
			shifter_HI WHEN (to_integer(unsigned(OPC)) = OPC_RRA) ELSE
			shifter_HI WHEN (to_integer(unsigned(OPC)) = OPC_RRC) ELSE
			(others => '0');

	LO_SIG<=arith_logic_LO WHEN (to_integer(unsigned(OPC)) = OPC_ADD) ELSE
			arith_logic_LO WHEN (to_integer(unsigned(OPC)) = OPC_SUB) ELSE
			arith_logic_LO WHEN (to_integer(unsigned(OPC)) = OPC_ADDC) ELSE
			arith_logic_LO WHEN (to_integer(unsigned(OPC)) = OPC_MULT) ELSE
			arith_logic_LO WHEN (to_integer(unsigned(OPC)) = OPC_MAC) ELSE
			arith_logic_LO WHEN (to_integer(unsigned(OPC)) = OPC_MAC_RST) ELSE
			arith_logic_LO WHEN (to_integer(unsigned(OPC)) = OPC_MAX) ELSE
			arith_logic_LO WHEN (to_integer(unsigned(OPC)) = OPC_MIN) ELSE
			arith_logic_LO WHEN (to_integer(unsigned(OPC)) = OPC_AND) ELSE
			arith_logic_LO WHEN (to_integer(unsigned(OPC)) = OPC_OR) ELSE
			arith_logic_LO WHEN (to_integer(unsigned(OPC)) = OPC_XOR) ELSE
			shifter_LO WHEN (to_integer(unsigned(OPC)) = OPC_RLA) ELSE
			shifter_LO WHEN (to_integer(unsigned(OPC)) = OPC_RLC) ELSE
			shifter_LO WHEN (to_integer(unsigned(OPC)) = OPC_RRA) ELSE
			shifter_LO WHEN (to_integer(unsigned(OPC)) = OPC_RRC) ELSE
			(others => '0');
			
	HI <= HI_SIG;
	LO <= LO_SIG;
	
	STATUS<="10" WHEN ((HI_SIG = zeroSig) and (LO_SIG = zeroSig)) ELSE --RES(HI,LO) = 0...0
			"01" WHEN (carry = '1') ELSE 	
			"11" WHEN carry = '1' and ((HI_SIG = zeroSig) and (LO_SIG = zeroSig))ELSE
			"00";

end arc_outputSelector;







