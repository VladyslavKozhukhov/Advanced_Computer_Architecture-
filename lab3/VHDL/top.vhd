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
		rst, ena, clk, cin : IN std_logic;
		A, B : IN std_logic_vector(n - 1 DOWNTO 0);
		OPC : IN std_logic_vector(m - 1 DOWNTO 0);
		----------------------------------------
		RES : OUT std_logic_vector(2 * n - 1 DOWNTO 0); -- RES(HI,LO)
		STATUS : OUT std_logic_vector(k - 1 DOWNTO 0)
	);
END top;
------------- complete the top Architecture code --------------
ARCHITECTURE arc_sys OF top IS

	SIGNAL OPC_SIG : std_logic_vector(m - 1 DOWNTO 0); --FOR THE BACK REGISTER
	SIGNAL A_SIG, B_SIG : std_logic_vector(n - 1 DOWNTO 0);
	SIGNAL cin_SIG : std_logic;

	SIGNAL HI, LO, HI_SIG, LO_SIG : std_logic_vector(n - 1 DOWNTO 0); --FOR THE ALU OUTPUT
	SIGNAL alu_status : std_logic_vector(k - 1 DOWNTO 0);

	SIGNAL cin_total : std_logic;

BEGIN


	
	backREG : BACKregister GENERIC MAP(n, m) PORT MAP(rst, ena, clk, OPC, A, B, cin_total, OPC_SIG, A_SIG, B_SIG, cin_SIG);
	aluEntity : ALU GENERIC MAP(n, m, k) PORT MAP(clk, OPC_SIG, A_SIG, B_SIG, cin_SIG, HI, LO, alu_status);
	frontREG : FRONTregister GENERIC MAP(n, k) PORT MAP(rst, ena, clk, HI, LO, alu_status, HI_SIG, LO_SIG, STATUS);

	RES(2 * n - 1 DOWNTO n) <= HI_SIG;
	RES(n - 1 DOWNTO 0) <= LO_SIG;
	PROCESS (cin)--user input
	BEGIN
		cin_total <= cin;
	END PROCESS;

	PROCESS (cin_SIG)--- total C
	BEGIN
		cin_total <= cin_SIG;
	END PROCESS;
END arc_sys;