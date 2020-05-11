LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity ArithLogic is
	generic (
		n : positive := 8 ; -- A,B length
		m : positive := 5 ; -- OPC length
		k : positive := 2   -- STATUS length
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

begin
	
	maxMinFlag<='1' WHEN (OPC = "00111") ELSE -- MAX
				'0' WHEN (OPC = "01000") ELSE -- MIN
	maxMinEntity : MaxMin generic map(n) port map(A,B,maxMinFlag,MaxMinAB);
	
	
	HI<=(others => '0') WHEN (OPC(m-1 downto m-2) = "01") ELSE -- HI=0 : MIN,AND,OR,XOR
		(others => '0') WHEN (OPC = "00111") ELSE 			   -- HI=0 : MAX
		HI;
		
	LO<=(A AND B) WHEN (OPC = "01001") ELSE  -- AND
		(A OR B) WHEN (OPC = "01010") ELSE   -- OR
		(A XOR B) WHEN (OPC = "01011") ELSE  -- XOR
		MaxMinAB WHEN (OPC = "00111") ELSE  -- MAX
		MaxMinAB WHEN (OPC = "01000") ELSE  -- MIN
		LO;
	
	cout <= '0' WHEN (OPC = "00111") ELSE -- MAX
			'0' WHEN (OPC = "01000") ELSE -- MIN
			'0' WHEN (OPC = "01001") ELSE -- AND
			'0' WHEN (OPC = "01010") ELSE -- OR
			'0' WHEN (OPC = "01011") ELSE -- XOR
			coutSig;
			
	
end arc_ArithLogic;







