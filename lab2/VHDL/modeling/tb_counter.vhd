LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package_counter.all;

ENTITY top_tb IS
	CONSTANT m : INTEGER := 8;
		CONSTANT k: INTEGER := 3;

END top_tb;

architecture Counter_Testbench OF top_tb IS
SIGNAL rst,ena,clk: STD_LOGIC;
SIGNAL		riseSig : STD_LOGIC;
SIGNAL counterResult: std_logic_vector(k downto 0);	 
BEGIN

	L0 : Counter PORT MAP(rst,ena,clk,riseSig,counterResult);
		tb_ena : process
			begin
			ena<='0';
			wait for 20 us;

			ena<='1';
			
			wait;
        end process tb_ena;
	tb_rst : process
			begin
			rst<='1';
			wait for 10 us;
			rst<='0';			
			wait;
        end process tb_rst	;
		
        tb_clk : process
			begin 
			clk<='0';
			wait for 5 us;
			clk<='1';
			wait for 5 us;
        end process tb_clk;
          tb_rise : process
			begin 
			riseSig<='1';
			wait for 90 us;
			riseSig<='0';
			wait for 10 us;
			riseSig<='1';
			wait;
        end process tb_rise;
END Counter_Testbench;