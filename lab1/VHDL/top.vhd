LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE work.aux_package.all;

-------------------------------------
ENTITY top IS
	GENERIC(n : INTEGER := 8);
	PORT (	cin : IN STD_LOGIC;
			sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			X,Y: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		    result: OUT STD_LOGIC_VECTOR(n DOWNTO 0));
END top;
------------- complete the top Architecture code --------------
ARCHITECTURE struct OF top IS
	SIGNAL AdderSubSig: STD_LOGIC_VECTOR(n DOWNTO 0);
	signal x_shift : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal y_shift : STD_LOGIC_VECTOR(2 DOWNTO 0);
	signal barrelSig : STD_LOGIC_VECTOR(8 DOWNTO 0);


BEGIN
	x_shift <= STD_LOGIC_VECTOR(resize(unsigned(X), 8)) WHEN n<8 ELSE
	           X(7 DOWNTO 0) WHEN n>8 ELSE
			   X;
	y_shift <= STD_LOGIC_VECTOR(resize(signed(Y), 3)) WHEN n<3 ELSE
	           Y(2 DOWNTO 0) WHEN n>3 ELSE
			   Y;
	BarrelEntity : Barrel  PORT MAP(
				   x => x_shift,
				   y => y_shift,
				   output => barrelSig
	);
	
	subAdd: AdderTwo GENERIC MAP(n) PORT MAP(
			cin => cin,
			x => X,
			y => Y,
			sel => sel,
			s => AdderSubSig
	);
	
	SelectorEntity : selector GENERIC MAP (n) PORT MAP(
				     in1 => AdderSubSig,
				     in2 => barrelSig,
					 sel => sel,
				     output => result
	);
	
END struct;

