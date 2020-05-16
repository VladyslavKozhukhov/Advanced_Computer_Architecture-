   LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
ENTITY tb_alu IS
	generic (
		n : positive := 8 ;
		m : positive := 5 ;
		k : positive := 2);
END tb_alu;

ARCHITECTURE alu_arc OF tb_alu IS
			signal cin,clk : STD_LOGIC;
			signal A,B : std_logic_vector(n-1 downto 0);
			signal OPC : std_logic_vector(m-1 downto 0);
		----------------------------------------
			signal RES : std_logic_vector(2*n-1 downto 0); -- RES(HI,LO)
			signal STATUS : std_logic_vector(k-1 downto 0);
	signal		HI, LO :  std_logic_vector(n - 1 DOWNTO 0);
begin
	tester : ALU generic map(n, m, k) port map(clk,OPC,A,B,cin,HI,LO,STATUS);


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
		B<="00000001";
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

	
	tb_clk : PROCESS
	BEGIN
		clk <= '0';
		WAIT FOR 5 us;
		clk <= '1';
		WAIT FOR 5 us;
	END PROCESS tb_clk;

	


END alu_arc;