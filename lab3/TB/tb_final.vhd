LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;

ENTITY tb_final IS
	CONSTANT m : INTEGER := 8;
END tb_final;

ARCHITECTURE Arc_tb_final OF tb_final IS
	SIGNAL rst, ena, clk : STD_LOGIC;

BEGIN

	topEntity : top PORT MAP(rst, ena, clk, cin, A, B, OPC, RES, STATUS);
	readEntity : ReadLogic PORT MAP(clk, OPC, A, B, cin);
	writeEntity : WriteLogic PORT MAP(STATUS, HI, LO);

	tb_ena : PROCESS
	BEGIN
		ena <= '0';
		WAIT FOR 20 us;
		ena <= '1';
		WAIT FOR 180 us;
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
		WAIT FOR 310 us;
		rst <= '1';
		WAIT FOR 10 us;
		rst <= '0';
		WAIT;
	END PROCESS tb_rst;

END Arc_tb_final;