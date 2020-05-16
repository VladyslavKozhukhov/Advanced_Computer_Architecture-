    LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
ENTITY tb_shifter IS
	generic (
		n : positive := 8 ;
		m : positive := 5 ;
		k : positive := 2);
END tb_shifter;

ARCHITECTURE sgiter_arc OF tb_shifter IS
			signal cin,clk : STD_LOGIC;
			signal A,B : std_logic_vector(n-1 downto 0);
			signal OPC : std_logic_vector(m-1 downto 0);
		----------------------------------------
			signal RES : std_logic_vector(2*n-1 downto 0); -- RES(HI,LO)
			signal STATUS : std_logic_vector(k-1 downto 0);
	signal		HI, LO :  std_logic_vector(n - 1 DOWNTO 0);
			signal cout :  std_logic;

begin

shiftEntity : shifter GENERIC MAP(n) PORT MAP(cin, A, B(2 DOWNTO 0), OPC(1 DOWNTO 0), HI,LO, cout); --TO DO: *FIXES ONLY*


tb_x : PROCESS
	BEGIN		
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

	
	tb_clk : PROCESS
	BEGIN
		clk <= '0';
		WAIT FOR 5 us;
		clk <= '1';
		WAIT FOR 5 us;
	END PROCESS tb_clk;

	


END sgiter_arc;