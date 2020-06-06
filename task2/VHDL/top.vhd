LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY top IS
	GENERIC (
		n : POSITIVE := 8; -- A,B length
		m : POSITIVE := 5; -- OPC length
		k : POSITIVE := 2 -- STATUS length
	);
	PORT (
		clk : IN std_logic;
		key_0,key_1,key_2,key_3 : IN std_logic;
		sw_0_7 : IN std_logic_vector(n - 1 DOWNTO 0);
		----------------------------------------
		STATUS : OUT std_logic_vector(k - 1 DOWNTO 0);
		HI_OUT, LO_OUT: OUT std_logic_vector(n - 1 DOWNTO 0);
		SEG0_OUT, SEG1_OUT: OUT std_logic_vector(6 DOWNTO 0);
		SEG2_OUT, SEG3_OUT: OUT std_logic_vector(6 DOWNTO 0)

	);
END top;
------------- complete the top Architecture code --------------
ARCHITECTURE arc_sys OF top IS

	SIGNAL OPC_SIG : std_logic_vector(m - 1 DOWNTO 0); --FOR THE BACK REGISTER
	SIGNAL A_SIG, B_SIG : std_logic_vector(n - 1 DOWNTO 0);
	SIGNAL cin_SIG : std_logic :='0';

	SIGNAL HI, LO, HI_SIG, LO_SIG : std_logic_vector(n - 1 DOWNTO 0); --FOR THE ALU OUTPUT
	SIGNAL alu_status : std_logic_vector(k - 1 DOWNTO 0):= (OTHERS => '0');
	SIGNAL sel : std_logic;
	SIGNAL a : std_logic;

BEGIN
	
	AREG : A_Register GENERIC MAP(n) PORT MAP(key_0, sw_0_7, A_SIG);
	BREG: B_Register GENERIC MAP(n) PORT MAP(key_2, sw_0_7, B_SIG);
	OPREG: OP_Register GENERIC MAP(m) PORT MAP(key_1, sw_0_7(m-1 DOWNTO 0), OPC_SIG);

	aluEntity : ALU GENERIC MAP(n, m, k) PORT MAP(clk, key_3, OPC_SIG, A_SIG, B_SIG, cin_SIG, HI, LO, alu_status);
	cin_SIG<='1' when (alu_status = "01" or alu_status = "11") else  '0';
	STATUS<=alu_status;
	HI_OUT<=HI;
	LO_OUT<=LO;
	
	sevenSEG : sevenSegment GENERIC MAP(n) PORT MAP(HI, LO, SEG0_OUT, SEG1_OUT, SEG2_OUT, SEG3_OUT);


END arc_sys;