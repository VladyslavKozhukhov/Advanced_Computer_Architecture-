LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;

 ENTITY AdderTwo IS
  GENERIC (n : INTEGER := 8);
  PORT (     cin: IN STD_LOGIC;
			 x,y: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			 sel : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
             s: OUT STD_LOGIC_VECTOR(n DOWNTO 0));
END AdderTwo;
--------------------------------------------------------------
ARCHITECTURE AdderTwo_Architecture OF AdderTwo IS
	SIGNAL reg,yXored : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL outSig : STD_LOGIC_VECTOR(n DOWNTO 0);
	SIGNAL cin_0,subMSBit:  STD_LOGIC;

BEGIN

	initY : FOR a IN 0 TO n-1 GENERATE
		yXored(a) <= y(a) XOR sel(1);
	END GENERATE;
	
	cin_0 <= (cin AND sel(0)) OR sel(1);
	first : FA PORT MAP(
			xi => x(0),
			yi => yXored(0),
			cin =>cin_0,
			s => outSig(0),
			cout => reg(0)
	);
	
	rest : FOR i IN 1 TO n-1 GENERATE
		chain : FA PORT MAP(
			xi => x(i),
			yi => yXored(i),
			cin => reg(i-1),
			s => outSig(i),
			cout => reg(i)
		);
	END GENERATE;

	last : FA PORT MAP(
			xi => x(n-1),
			yi => yXored(n-1),
			cin =>reg(n-1),
			s => subMSBit,
			cout => OPEN
	);
	
	outSig(n) <= subMSBit WHEN sel="10" ELSE
				 reg(n-1);
				 
	s <= outSig;
	
END AdderTwo_Architecture;