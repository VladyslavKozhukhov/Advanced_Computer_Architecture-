LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;
USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY ArithLogic IS
	GENERIC (
		n : POSITIVE := 8; -- A,B length
		m : POSITIVE := 5 -- OPC length
	);
	PORT (
		clk : IN std_logic;
		OPC : IN std_logic_vector(m - 1 DOWNTO 0);
		A, B : IN std_logic_vector(n - 1 DOWNTO 0);
		cin : IN std_logic;
		----------------------------------------
		HI, LO : OUT std_logic_vector(n - 1 DOWNTO 0);
		cout : OUT std_logic
	);
END ArithLogic;
------------- ArithLogic Architecture code --------------
ARCHITECTURE arc_ArithLogic OF ArithLogic IS
	SIGNAL MaxMinAB : std_logic_vector(n - 1 DOWNTO 0);
	SIGNAL hiART : std_logic_vector(n - 1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL specART : std_logic_vector(n - 1 DOWNTO 0); -- last bit 1;
	SIGNAL maxMinFlag, coutSig, resetMAC : std_logic;
	SIGNAL AdderSubSEL : std_logic_vector(1 DOWNTO 0);
	SIGNAL AdderSubResult : std_logic_vector(n DOWNTO 0);
	SIGNAL ACC : std_logic_vector(2 * n - 1 DOWNTO 0);
	SIGNAL multResult : std_logic_vector(2 * n - 1 DOWNTO 0);
	SIGNAL OPC_INTEGER : INTEGER;

	-----------------------------------
BEGIN

	OPC_INTEGER <= to_integer(unsigned(OPC));

	specART <= hiART + 1;
	maxMinFlag <= '1' WHEN (OPC_INTEGER = OPC_MAX) ELSE -- MAX
		'0' WHEN (OPC_INTEGER = OPC_MIN) ELSE -- MIN
		'0';
	resetMAC <= '1' WHEN (OPC_INTEGER = OPC_MAC_RST) ELSE
		'0';

	maxMinEntity : MaxMin GENERIC MAP(n) PORT MAP(A, B, maxMinFlag, MaxMinAB);
	macEntity : MACModule GENERIC MAP(n) PORT MAP(resetMAC, clk, A, B, ACC);
	AdderSubSEL <= "00" WHEN (OPC_INTEGER = OPC_ADD) ELSE -- ADD
		"01" WHEN (OPC_INTEGER = OPC_ADDC) ELSE -- ADDC
		"10" WHEN (OPC_INTEGER = OPC_SUB) ELSE -- SUB
		"11"; --DELETE LATER OR CHANGE THIS ELSE LINE

	adderSubEntity : AdderSub GENERIC MAP(n) PORT MAP(cin, A, B, AdderSubSEL, AdderSubResult);

	multEntity : MultSub GENERIC MAP(n) PORT MAP(A, B, multResult);

	HI <= (OTHERS => 'Z') WHEN (OPC_INTEGER = OPC_MAC_RST) ELSE -- HI=0 : MAC_RST
		specART WHEN (OPC_INTEGER = OPC_ADD AND AdderSubResult(n) = '1') ELSE -- ADD if carry 1
		specART WHEN (OPC_INTEGER = OPC_ADDC AND AdderSubResult(n) = '1') ELSE -- ADDC if carry 1
		ACC(2 * n - 1 DOWNTO n) WHEN(OPC_INTEGER = OPC_MAC) ELSE -- HI=ACC 2n-1 to n :MAC
		multResult((2 * n - 1) DOWNTO n) WHEN (OPC = OPC_MULT) ELSE --MULT
		(OTHERS => '0');
	--	(others => '0')  WHEN (OPC_INTEGER = OPC_SUB) ELSE  					-- SUB
	--(others => '0') WHEN (OPC_INTEGER(m-1 downto m-2) = "01") ELSE -- HI=0 : MIN,AND,OR,XOR,MAX,
	--(others => '0') WHEN (OPC_INTEGER = OPC_MAX) ELSE 			   -- HI=0 : MAX

	LO <= (A AND B) WHEN (OPC_INTEGER = OPC_AND) ELSE -- AND
		(A OR B) WHEN (OPC_INTEGER = OPC_OR) ELSE -- OR
		(A XOR B) WHEN (OPC_INTEGER = OPC_XOR) ELSE -- XOR
		MaxMinAB WHEN (OPC_INTEGER = OPC_MAX) ELSE -- MAX
		MaxMinAB WHEN (OPC_INTEGER = OPC_MIN) ELSE -- MIN
		ACC(n - 1 DOWNTO 0) WHEN (OPC_INTEGER = OPC_MAC) ELSE -- MAC
		AdderSubResult(n - 1 DOWNTO 0) WHEN (OPC_INTEGER = OPC_ADD) ELSE -- ADD
		AdderSubResult(n - 1 DOWNTO 0) WHEN (OPC_INTEGER = OPC_ADDC) ELSE -- ADDC
		AdderSubResult(n - 1 DOWNTO 0) WHEN (OPC_INTEGER = OPC_SUB) ELSE -- SUB
		multResult((n - 1) DOWNTO 0) WHEN (OPC_INTEGER = OPC_MULT) ELSE --MULT
		(OTHERS => 'Z') WHEN (OPC_INTEGER = OPC_MAC_RST) ELSE -- MAC_RST
		(OTHERS => '0'); --CONTINUE FOR

	cout <= --'0' WHEN (OPC_INTEGER = "00111") ELSE -- MAX
		--'0' WHEN (OPC_INTEGER = "01000") ELSE -- MIN
		--'0' WHEN (OPC_INTEGER = "01001") ELSE -- AND
		--'0' WHEN (OPC_INTEGER = "01010") ELSE -- OR
		--'0' WHEN (OPC_INTEGER = "01011") ELSE -- XOR
		--'1'	WHEN (OPC = "00101" AND ACC(2*n) = '1') ELSE -- MAC
		--'0' WHEN (OPC_INTEGER = OPC_ADD AND AdderSubResult(n)='0') ELSE -- ADD	
		--'0' WHEN (OPC_INTEGER = "00011" AND AdderSubResult(n)='0') ELSE -- ADDC			
		--'0' WHEN (OPC_INTEGER = "00010" AND AdderSubResult(n)='0') ELSE -- SUB

		'1' WHEN (OPC_INTEGER = OPC_ADD AND AdderSubResult(n) = '1') ELSE -- ADD					
		'1' WHEN (OPC_INTEGER = OPC_ADDC AND AdderSubResult(n) = '1') ELSE -- ADDC
		'1' WHEN (OPC_INTEGER = OPC_SUB AND AdderSubResult(n) = '1') ELSE -- SUB
		'1' WHEN (OPC_INTEGER = OPC_MULT AND multResult(n) = '1') ELSE --MULT
		'Z' WHEN (OPC_INTEGER = OPC_MAC_RST) ELSE -- MAC_RST			
		'0'; --CONTINUE 
END arc_ArithLogic;