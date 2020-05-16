
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;

ENTITY tb_final_noIO IS
	CONSTANT n : POSITIVE := 8;
	CONSTANT m : POSITIVE := 5;
	CONSTANT k : POSITIVE := 2;
END tb_final_noIO;

ARCHITECTURE Arc_tb_tb_final_noIO OF tb_final_noIO IS
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
		A<="00001000";
		B<="00000100";
		cin <= '0' ;
		OPC <= (others=>'0');
		wait for 20 us;		
		OPC<="00001";   --sum
		wait for 15 us;
		OPC<="00010";   --minus
		wait for 10 us;	
			cin<='1';
					A<="00001000";
		B<="00000100";
		OPC<="00011";   --addc
		wait for 10 us;
		OPC<="00100";   --mult
		wait for 10 us;
		OPC<="00001";   --sum
		A<="11111111";
		B<="00000100";
		wait for 10 us;
		OPC<="00111";   --MAX
		wait for 10 us;
		OPC<="01000";   --Min
		wait for 10	us;
		A<="00001100";
		B<="00000100";
		OPC<="01001";   --AND
		wait for 10 us;
		OPC<="01010";   --OR
		wait for 10 us;
		OPC<="01011";   --XOR
		wait for 10 us;
		OPC<="00110";   --MAC_RST
		wait for 10 us;
		OPC<="00101";   --MAC_acc
		wait for 10 us;
		OPC<="00101";   --MAC_acc
		wait for 10 us;
		OPC<="00101";   --MAC_acc
		---------------------------------------------
		wait for 40 us;
		A<="00000001";
		B<="00000010";
		cin <= '0' ;
		OPC <= "01100";
		wait for 10 us;
		OPC <= "01101";
		wait for 10 us;
		OPC <= "01110";-------------- update cin
		wait for 10 us;
		OPC <= "01111";-------------- update cin
		wait for 10 us;
		
		cin <= '1' ;
		OPC <= "01100";
		wait for 10 us;
		OPC <= "01101";
		wait for 10 us;
		OPC <= "01110";
		wait for 10 us;
		OPC <= "01111"; 
		wait for 10 us;	


		
		A<="10000000";
		B<="00000010";
		cin <= '0' ;
		OPC <= "01100";--cin status 
		wait for 10 us;
		OPC <= "01101";----
		wait for 10 us;
		OPC <= "01110";
		wait for 10 us;
		OPC <= "01111";
		wait for 10 us;
		cin <= '1' ;
		OPC <= "01100";
		wait for 10 us;
		OPC <= "01101";
		wait for 10 us;
		OPC <= "01110";
		wait for 10 us;
		OPC <= "01111";
		wait for 10 us;
		A<="11111111";
		B<="00000010";
		cin <= '0' ;
		OPC <= "01100";
		wait for 10 us;
		OPC <= "01101";
		wait for 10 us;
		OPC <= "01110";
		wait for 10 us;
		OPC <= "01111";
		wait for 10 us;
		cin <= '1' ;
		OPC <= "01100";
		wait for 10 us;
		OPC <= "01101";
		wait for 10 us;
		OPC <= "01110";
		wait for 10 us;
		OPC <= "01111";
		wait for 10 us;
		

		WAIT;
	END PROCESS tb_x;

	

END Arc_tb_tb_final_noIO;