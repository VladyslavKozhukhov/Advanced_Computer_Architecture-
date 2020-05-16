LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.aux_package.ALL;

ENTITY AdderSub IS
	GENERIC (n : INTEGER := 8);
	PORT (
		cin : IN STD_LOGIC;
		x, y : IN STD_LOGIC_VECTOR (n - 1 DOWNTO 0);
		sel : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		s : OUT STD_LOGIC_VECTOR(n DOWNTO 0));
END AdderSub;
--------------------------------------------------------------
ARCHITECTURE AdderSub_Architecture OF AdderSub IS
	SIGNAL reg, yXored : STD_LOGIC_VECTOR(n - 1 DOWNTO 0); -- We use them to only store temporary signals
	SIGNAL cin_0, subMSBit : STD_LOGIC;
BEGIN

	initY : FOR a IN 0 TO n - 1 GENERATE -- This is how we initiate the input y
		yXored(a) <= y(a) XOR sel(1); -- Because y xor the sel(1) means xor with the sub control bit
	END GENERATE;

	cin_0 <= (cin AND sel(0)) OR sel(1); -- cin is '1' when we use sub
	first : FA PORT MAP(-- else, cin is '1' when we use the 2nd option and we have cin in the input
		xi => x(0), -- This is the chain of FA
		yi => yXored(0),
		cin => cin_0,
		s => s(0),
		cout => reg(0)
	);

	rest : FOR i IN 1 TO n - 1 GENERATE
		chain : FA PORT MAP(
			xi => x(i),
			yi => yXored(i),
			cin => reg(i - 1),
			s => s(i),
			cout => reg(i)
		);
	END GENERATE;

	subMSBit <= x(n - 1) XOR yXored(n - 1) XOR reg(n - 2) WHEN sel = "10" ELSE
		reg(n - 1);

	last : FA PORT MAP(
		xi => '0',
		yi => '0',
		cin => subMSBit,
		s => s(n),
		cout => OPEN
	);
END AdderSub_Architecture;