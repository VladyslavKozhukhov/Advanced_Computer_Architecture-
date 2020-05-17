
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;

ENTITY tb_check_cin IS
	CONSTANT n : POSITIVE := 8;
	CONSTANT m : POSITIVE := 5;
	CONSTANT k : POSITIVE := 2;
END tb_check_cin;

ARCHITECTURE Arc_tb_check_cin OF tb_check_cin IS
	SIGNAL rst, ena, clk, cin : STD_LOGIC;
	SIGNAL A, B, HI, LO : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL RES : STD_LOGIC_VECTOR(2*n-1 DOWNTO 0);
	SIGNAL OPC : STD_LOGIC_VECTOR(m-1 DOWNTO 0);
	SIGNAL STATUS : STD_LOGIC_VECTOR(k-1 DOWNTO 0);
			SIGNAL			 cin_SIGG :  std_logic;

BEGIN

	--readEntity : ReadLogic GENERIC MAP(n, m) PORT MAP(clk, OPC, A, B, cin);
	topEntity : top GENERIC MAP(n, m, k) PORT MAP(rst, ena, clk, cin, A, B, OPC, RES, STATUS,HI,LO,cin_SIGG);
--	writeEntity : WriteLogic GENERIC MAP(n, k) PORT MAP(STATUS, RES(2*n-1 DOWNTO n), RES(n-1 DOWNTO 0));
tb_ena : PROCESS
	BEGIN
		ena <= '0';
		WAIT FOR 20 us;
		ena <= '1';
		WAIT FOR 300 us;
		ena <= '0';
		WAIT FOR 20 us;
		ena <= '1';
		WAIT;
	END PROCESS tb_ena;
	tb_clk : PROCESS
	BEGIN
		clk <= '0';
		WAIT FOR 5 us;
		clk <= '1';
		WAIT FOR 5 us;
	END PROCESS tb_clk;

	tb_rst : PROCESS
	BEGIN
		rst <= '1';
		WAIT FOR 10 us;
		rst <= '0';
		WAIT;
	END PROCESS tb_rst;
	
tb_x : PROCESS
	BEGIN
		A<="11111111";
		B<="00000100";
		cin <= '1' ;
		OPC <= (others=>'0');
		wait for 20 us;		
		OPC<="00001";   --sum
		wait for 15 us;
		OPC<="00011";   --addc
		wait for 10 us;	
				cin <= '0' ;

		A<="00001000";
		B<="00000100";

		OPC<="00011";   --addc
		wait for 10 us;


		WAIT;
	END PROCESS tb_x;

	

END Arc_tb_check_cin;