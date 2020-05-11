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
SIGNAL maxMinFlag,coutSig : std_logic;
SIGNAL AdderSubSEL : std_logic_vector(1 downto 0);
SIGNAL AdderSubResult : std_logic_vector(n downto 0);
begin
	
	maxMinFlag<='1' WHEN (OPC = "00111") ELSE -- MAX
				'0' WHEN (OPC = "01000") ELSE -- MIN
				'0';  --DELETE LATER OR CHANGE THIS ELSE LINE
				
	maxMinEntity : MaxMin generic map(n) port map(A,B,maxMinFlag,MaxMinAB);
	
	AdderSubSEL <=	"00" WHEN (OPC = "00001") ELSE -- ADD
					"01" WHEN (OPC = "00011") ELSE -- ADDC
					"10" WHEN (OPC = "00010") ELSE -- SUB
					"11"; --DELETE LATER OR CHANGE THIS ELSE LINE
					
	adderSubEntity : AdderSub generic map(n) port map(cin,A,B,AdderSubSEL,AdderSubResult);
	
	
	HI<=(others => '0') WHEN (OPC(m-1 downto m-2) = "01") ELSE -- HI=0 : MIN,AND,OR,XOR
		(others => '0') WHEN (OPC = "00111") ELSE 			   -- HI=0 : MAX
		(others => '0') WHEN (OPC = "00110") ELSE 			   -- HI=0 : MAC_RST
		(others => '0'); --CONTINUE FOR ADD,ADDC,SUB,MULT,MAC
		
	LO<=(A AND B) WHEN (OPC = "01001") ELSE  -- AND
		(A OR B) WHEN (OPC = "01010") ELSE   -- OR
		(A XOR B) WHEN (OPC = "01011") ELSE  -- XOR
		MaxMinAB WHEN (OPC = "00111") ELSE  -- MAX
		MaxMinAB WHEN (OPC = "01000") ELSE  -- MIN
		AdderSubResult(n-1 downto 0) WHEN (OPC = "00001") ELSE  -- ADD
		AdderSubResult(n-1 downto 0) WHEN (OPC = "00011") ELSE  -- ADDC
		AdderSubResult(n-1 downto 0) WHEN (OPC = "00010") ELSE  -- SUB
		(others => '0') WHEN (OPC = "00110") ELSE  -- MAC_RST
		(others => '0'); --CONTINUE FOR MULT,MAC
	
	cout <= '0' WHEN (OPC = "00111") ELSE -- MAX
			'0' WHEN (OPC = "01000") ELSE -- MIN
			'0' WHEN (OPC = "01001") ELSE -- AND
			'0' WHEN (OPC = "01010") ELSE -- OR
			'0' WHEN (OPC = "01011") ELSE -- XOR
			
			'1' WHEN (OPC = "00001" AND AdderSubResult(n)='1') ELSE -- ADD
			'0' WHEN (OPC = "00001" AND AdderSubResult(n)='0') ELSE -- ADD
			
			'1' WHEN (OPC = "00011" AND AdderSubResult(n)='1') ELSE -- ADDC
			'0' WHEN (OPC = "00011" AND AdderSubResult(n)='0') ELSE -- ADDC
			
			'1' WHEN (OPC = "00010" AND AdderSubResult(n)='1') ELSE -- SUB
			'0' WHEN (OPC = "00010" AND AdderSubResult(n)='0') ELSE -- SUB
			
			'0' WHEN (OPC = "00110") ELSE -- MAC_RST
			
			'0'; --CONTINUE FOR MULT,MAC
			
	
end arc_ArithLogic;







