LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
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
SIGNAL ACC : std_logic_vector(2*n DOWNTO 0);--1 bit more to carry 
SIGNAL multResult :  std_logic_vector(2*n DOWNTO 0);
begin
	specART<=hiART+1;
	maxMinFlag<='1' WHEN (OPC = "00111") ELSE -- MAX
				'0' WHEN (OPC = "01000") ELSE -- MIN
				'0'; 
	resetMAC<=	'1' WHEN (OPC = "00110") ELSE
				'0';
				
	maxMinEntity : MaxMin generic map(n) port map(A,B,maxMinFlag,MaxMinAB);
	macEntity : MACModule generic map(n) port map(resetMAC,clk,A,B,ACC);

	
	AdderSubSEL <=	"00" WHEN (OPC = "00001") ELSE -- ADD
					"01" WHEN (OPC = "00011") ELSE -- ADDC
					"10" WHEN (OPC = "00010") ELSE -- SUB
					"11"; --DELETE LATER OR CHANGE THIS ELSE LINE
					
	adderSubEntity : AdderSub generic map(n) port map(cin,A,B,AdderSubSEL,AdderSubResult);
	multResult<=A*B;
	
	HI<=(others => '0') WHEN (OPC(m-1 downto m-2) = "01") ELSE -- HI=0 : MIN,AND,OR,XOR
		(others => '0') WHEN (OPC = "00111") ELSE 			   -- HI=0 : MAX
		(others => '0') WHEN (OPC = "00110") ELSE 			   -- HI=0 : MAC_RST
		specART WHEN (OPC = "00001" and  AdderSubResult(n)='1' ) ELSE  -- ADD if carry 1
		specART WHEN (OPC = "00011" and  AdderSubResult(n)='1' ) ELSE  -- ADDC if carry 1
		(others => '0')  WHEN (OPC = "00010") ELSE  					-- SUB
		 ACC(2*n-1 downto n) WHEN(OPC = "00101") ELSE           	 -- HI=ACC 2n-1 to n :MAC
		 multResult((2*n-1) downto n) WHEN (OPC = "00100") ELSE  --MULT
		(others => '0');

	LO<=(A AND B) WHEN (OPC = "01001") ELSE  -- AND
		(A OR B) WHEN (OPC = "01010") ELSE   -- OR
		(A XOR B) WHEN (OPC = "01011") ELSE  -- XOR
		MaxMinAB WHEN (OPC = "00111") ELSE  -- MAX
		MaxMinAB WHEN (OPC = "01000") ELSE  -- MIN
		ACC(n-1 downto 0) WHEN (OPC = "00101") ELSE  -- MAC
		AdderSubResult(n-1 downto 0) WHEN (OPC = "00001") ELSE  -- ADD
		AdderSubResult(n-1 downto 0) WHEN (OPC = "00011") ELSE  -- ADDC
		AdderSubResult(n-1 downto 0) WHEN (OPC = "00010") ELSE  -- SUB
		multResult((n-1) downto 0) WHEN (OPC = "00100") ELSE  --MULT
		(others => '0') WHEN (OPC = "00110") ELSE  -- MAC_RST
		(others => '0'); --CONTINUE FOR
	
	cout <= '0' WHEN (OPC = "00111") ELSE -- MAX
			'0' WHEN (OPC = "01000") ELSE -- MIN
			'0' WHEN (OPC = "01001") ELSE -- AND
			'0' WHEN (OPC = "01010") ELSE -- OR
			'0' WHEN (OPC = "01011") ELSE -- XOR
			'1'	WHEN (OPC = "00101" AND ACC(2*n) = '1') ELSE -- MAC
			'1' WHEN (OPC = "00001" AND AdderSubResult(n)='1') ELSE -- ADD
			'0' WHEN (OPC = "00001" AND AdderSubResult(n)='0') ELSE -- ADD			
			'1' WHEN (OPC = "00011" AND AdderSubResult(n)='1') ELSE -- ADDC
			'0' WHEN (OPC = "00011" AND AdderSubResult(n)='0') ELSE -- ADDC			
			'1' WHEN (OPC = "00010" AND AdderSubResult(n)='1') ELSE -- SUB
			'0' WHEN (OPC = "00010" AND AdderSubResult(n)='0') ELSE -- SUB
			'1' WHEN (OPC = "00100" AND multResult(2*n)='1')   ELSE  --MULT
			'0' WHEN (OPC = "00110") ELSE -- MAC_RST			
			'0'; --CONTINUE 
			
	
end arc_ArithLogic;







