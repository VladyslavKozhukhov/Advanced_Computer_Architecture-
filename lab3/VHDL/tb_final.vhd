LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;

ENTITY tb_final IS
	CONSTANT n : POSITIVE := 8;
	CONSTANT m : POSITIVE := 5;
	CONSTANT k : POSITIVE := 2;
END tb_final;

ARCHITECTURE Arc_tb_final OF tb_final IS
	SIGNAL rst, ena, clk, cin, endSig : STD_LOGIC;
	SIGNAL A, B : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL RES : STD_LOGIC_VECTOR(2*n-1 DOWNTO 0);
	SIGNAL OPC : STD_LOGIC_VECTOR(m-1 DOWNTO 0);
	SIGNAL STATUS : STD_LOGIC_VECTOR(k-1 DOWNTO 0);
BEGIN

<<<<<<< HEAD
	--readEntity : ReadLogic GENERIC MAP(n, m) PORT MAP(clk, OPC, A, B, cin);
	topEntity : top GENERIC MAP(n, m, k) PORT MAP(rst, ena, clk, cin, A, B, OPC, RES, STATUS);
--	writeEntity : WriteLogic GENERIC MAP(n, k) PORT MAP(STATUS, RES(2*n-1 DOWNTO n), RES(n-1 DOWNTO 0));

tb_x : PROCESS
	BEGIN
		A<="00001000";
		B<="00000100";
		cin <= '0' ;
		OPC <= (others=>'0');
		wait for 10 us;		
		OPC<="00001";   --sum
		wait for 10 us;
		OPC<="00010";   --minus
		wait for 10 us;	
			cin<='1';
		OPC<="00011";   --addc
		wait for 10 us;
		OPC<="00100";   --mult
		--wait for 10 us;
		--OPC<="00101";
		--wait for 10 us;		
		--OPC<="00100";
		--wait for 10 us;
		--OPC<="00101";
		--wait for 10 us;
		--OPC<="00100";
		--wait for 10 us;
		--OPC<="00101";
		--wait for 10 us;
		--OPC<="00100";
	--	wait for 10 us;		
	--	OPC<="00101";
	--	wait for 10 us;
		--wait for 10 us;
	--	OPC<="00100";
--		wait for 10 us;		
--		OPC<="00101";
--		wait for 10 us;
--		wait for 10 us;
--		OPC<="00100";
--		wait for 10 us;		
--		OPC<="00101";
--		wait for 10 us;
		
		-- cin <= '1' ;
		-- OPC <= (others=>'0');
		-- wait for 100 ns;
		-- OPC<="00101";
		-- wait for 100 ns;
		-- OPC<="00101";
		-- wait for 100 ns;
		-- OPC<="00101";
		-- wait for 100 ns;
		-- OPC<="00101";
		-- wait for 100 ns;
		-- OPC<="00101";
		-- wait for 100 ns;
		-- OPC<="00101";
		-- wait for 100 ns;
		-- OPC<="00101";
		-- wait for 100 ns;		
		-- OPC<="00101";
		-- wait for 100 ns;
		
		-- FOR i IN 0 TO 10 LOOP
			-- OPC <= OPC +'1';
			-- wait for 100 ns;
		-- END LOOP;
		
		-- cin <= '1';
		
		-- OPC <= (others=>'0');
		-- FOR i IN 0 TO 10 LOOP
			-- OPC <= OPC +'1';
			-- wait for 100 ns;
		-- END LOOP;
		WAIT;
	END PROCESS tb_x;
=======
	readEntity : ReadLogic GENERIC MAP(n, m) PORT MAP(rst, ena, clk, OPC, A, B, cin, endSig);
	topEntity : top GENERIC MAP(n, m, k) PORT MAP(rst, ena, clk, cin, A, B, OPC, RES, STATUS);
	writeEntity : WriteLogic GENERIC MAP(n, k) PORT MAP(rst, ena, clk, STATUS, RES(2*n-1 DOWNTO n), RES(n-1 DOWNTO 0), endSig);
>>>>>>> d7b0494033056e3860d74083699bbb538f3f527b

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
	cin<='0';
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

END Arc_tb_final;