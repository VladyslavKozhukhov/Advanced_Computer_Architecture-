LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
USE work.aux_package.all;
-------------------------------------------------------------
entity ArithLogic is
	generic (
		n : positive := 8 ; -- A,B length
		m : positive := 5   -- OPC length
	);
	port(		
		clk : in std_logic;
		OPC : in std_logic_vector(m-1 downto 0);
		A,B : in std_logic_vector(n-1 downto 0);
		cin : in std_logic;
		----------------------------------------
		HI,LO : out std_logic_vector(n-1 downto 0);
		cout : out std_logic
	);
end ArithLogic;
------------- ArithLogic Architecture code --------------
architecture arc_ArithLogic of ArithLogic is
SIGNAL MaxMinAB : std_logic_vector(n-1 downto 0);
SIGNAL hiART : std_logic_vector(n-1 downto 0) := (others=>'0');
SIGNAL specART : std_logic_vector(n-1 downto 0); -- last bit 1;
SIGNAL maxMinFlag,coutSig, resetMAC : std_logic;
SIGNAL AdderSubSEL : std_logic_vector(1 downto 0);
SIGNAL AdderSubResult : std_logic_vector(n downto 0);
SIGNAL ACC : std_logic_vector(2*n-1 DOWNTO 0); 
SIGNAL multResult :  std_logic_vector(2*n-1 DOWNTO 0);
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
	specART<=hiART+1;
	maxMinFlag<='1' WHEN (to_integer(unsigned(OPC)) = OPC_MAX) ELSE -- MAX
				'0' WHEN (to_integer(unsigned(OPC)) = OPC_MIN) ELSE -- MIN
				'0'; 
	resetMAC<=	'1' WHEN (to_integer(unsigned(OPC)) = OPC_MAC_RST) ELSE
				'0';
				
	maxMinEntity : MaxMin generic map(n) port map(A,B,maxMinFlag,MaxMinAB);
	macEntity : MACModule generic map(n) port map(resetMAC,clk,A,B,ACC);

	
	AdderSubSEL <=	"00" WHEN (to_integer(unsigned(OPC)) = OPC_ADD) ELSE -- ADD
					"01" WHEN (to_integer(unsigned(OPC)) = OPC_ADDC) ELSE -- ADDC
					"10" WHEN (to_integer(unsigned(OPC)) = OPC_SUB) ELSE -- SUB
					"11"; --DELETE LATER OR CHANGE THIS ELSE LINE
					
	adderSubEntity : AdderSub generic map(n) port map(cin,A,B,AdderSubSEL,AdderSubResult);

	multEntity : MultSub generic map(n) port map(A,B,multResult);

	HI<=(OTHERS=>'Z') WHEN (to_integer(unsigned(OPC)) = OPC_MAC_RST) ELSE 			   -- HI=0 : MAC_RST
		specART WHEN (to_integer(unsigned(OPC)) = OPC_ADD and  AdderSubResult(n)='1' ) ELSE  -- ADD if carry 1
		specART WHEN (to_integer(unsigned(OPC)) = OPC_ADDC and  AdderSubResult(n)='1' ) ELSE  -- ADDC if carry 1
		 ACC(2*n-1 downto n) WHEN(to_integer(unsigned(OPC)) = OPC_MAC) ELSE           	 -- HI=ACC 2n-1 to n :MAC
		 multResult((2*n-1) downto n) WHEN (OPC = OPC_MULT) ELSE  --MULT
		(others => '0');
								--	(others => '0')  WHEN (to_integer(unsigned(OPC)) = OPC_SUB) ELSE  					-- SUB
								--(others => '0') WHEN (to_integer(unsigned(OPC))(m-1 downto m-2) = "01") ELSE -- HI=0 : MIN,AND,OR,XOR,MAX,
								--(others => '0') WHEN (to_integer(unsigned(OPC)) = OPC_MAX) ELSE 			   -- HI=0 : MAX

	LO<=(A AND B) WHEN (to_integer(unsigned(OPC)) = OPC_AND) ELSE  -- AND
		(A OR B) WHEN (to_integer(unsigned(OPC)) = OPC_OR) ELSE   -- OR
		(A XOR B) WHEN (to_integer(unsigned(OPC)) = OPC_XOR) ELSE  -- XOR
		MaxMinAB WHEN (to_integer(unsigned(OPC)) = OPC_MAX) ELSE  -- MAX
		MaxMinAB WHEN (to_integer(unsigned(OPC)) = OPC_MIN) ELSE  -- MIN
		ACC(n-1 downto 0) WHEN (to_integer(unsigned(OPC)) = OPC_MAC) ELSE  -- MAC
		AdderSubResult(n-1 downto 0) WHEN (to_integer(unsigned(OPC)) = OPC_ADD) ELSE  -- ADD
		AdderSubResult(n-1 downto 0) WHEN (to_integer(unsigned(OPC)) = OPC_ADDC) ELSE  -- ADDC
		AdderSubResult(n-1 downto 0) WHEN (to_integer(unsigned(OPC)) = OPC_SUB) ELSE  -- SUB
		multResult((n-1) downto 0) WHEN (to_integer(unsigned(OPC)) = OPC_MULT) ELSE  --MULT
		(OTHERS=>'Z') WHEN (to_integer(unsigned(OPC)) = OPC_MAC_RST) ELSE  -- MAC_RST
		(others => '0'); --CONTINUE FOR
	
	cout <= --'0' WHEN (to_integer(unsigned(OPC)) = "00111") ELSE -- MAX
			--'0' WHEN (to_integer(unsigned(OPC)) = "01000") ELSE -- MIN
			--'0' WHEN (to_integer(unsigned(OPC)) = "01001") ELSE -- AND
			--'0' WHEN (to_integer(unsigned(OPC)) = "01010") ELSE -- OR
			--'0' WHEN (to_integer(unsigned(OPC)) = "01011") ELSE -- XOR
			--'1'	WHEN (OPC = "00101" AND ACC(2*n) = '1') ELSE -- MAC
			--'0' WHEN (to_integer(unsigned(OPC)) = OPC_ADD AND AdderSubResult(n)='0') ELSE -- ADD	
			--'0' WHEN (to_integer(unsigned(OPC)) = "00011" AND AdderSubResult(n)='0') ELSE -- ADDC			
			--'0' WHEN (to_integer(unsigned(OPC)) = "00010" AND AdderSubResult(n)='0') ELSE -- SUB

			'1' WHEN (to_integer(unsigned(OPC)) = OPC_ADD AND AdderSubResult(n)='1') ELSE -- ADD					
			'1' WHEN (to_integer(unsigned(OPC)) = OPC_ADDC AND AdderSubResult(n)='1') ELSE -- ADDC
			'1' WHEN (to_integer(unsigned(OPC)) = OPC_SUB AND AdderSubResult(n)='1') ELSE -- SUB
			'1' WHEN (to_integer(unsigned(OPC)) = OPC_MULT AND multResult(n)='1')   ELSE  --MULT
			'Z' WHEN (to_integer(unsigned(OPC)) = OPC_MAC_RST) ELSE -- MAC_RST			
			'0'; --CONTINUE 
			
	
end arc_ArithLogic;







