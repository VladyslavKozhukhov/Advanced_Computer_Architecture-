 LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY Counter_tb IS
	CONSTANT k : positive := 3;
END Counter_tb;

architecture Arc_Counter_tb OF Counter_tb IS
SIGNAL rst,ena,clk,riseSig : STD_LOGIC;
SIGNAL counterResult : STD_LOGIC_VECTOR (k-1 DOWNTO 0);

BEGIN

	L0 : Counter generic map(k) port map(rst,ena,clk,riseSig,counterResult);
		tb_ena : process
			begin
			ena<='0';
			wait for 20 us;

			ena<='1';
			wait for 180 us;
			ena<='0';
			wait for 30 us;
			ena<='1';
			wait;
        end process tb_ena;
		

        tb_clk : process
			begin 
			clk<='0';
			wait for 5 us;
			clk<='1';
			wait for 5 us;
        end process tb_clk;
		
		tb_rst : process
			begin 
			rst<='1';
			wait for 10 us;
			rst<='0';
			wait for 120 us;
			rst<='1';
			wait for 20 us;
			rst<='0';
			wait;
        end process tb_rst;
		
		
    tb_riseSig : process
		begin
			riseSig <= '0';
			wait for 10 us;
			riseSig <= '1';
			wait for 900 us;
			riseSig <= '0';
			wait for 10 us;
			riseSig <= '1';
			wait ;
        end process tb_riseSig;
		

  
END Arc_Counter_tb;
