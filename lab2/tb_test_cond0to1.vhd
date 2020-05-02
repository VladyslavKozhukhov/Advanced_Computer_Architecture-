 LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY top_tb_cond0to1 IS
	CONSTANT m : INTEGER := 8;
END top_tb_cond0to1;

architecture top_Testbench_cond0to1 OF top_tb_cond0to1 IS
SIGNAL rst,ena,clk: STD_LOGIC;
	SIGNAL din: STD_LOGIC_VECTOR (m-1 DOWNTO 0);
	SIGNAL cond : INTEGER range 0 to 3;
	SIGNAL	detector : std_logic;

BEGIN

	L0 : top PORT MAP(rst,ena,clk,din,cond,detector);--,riseSIGG,XX,YY,counter,counterTMP);
		tb_ena : process
			begin
			ena<='0';
			wait for 20 us;

			ena<='1';
			
			wait;
        end process tb_ena;
		
	tb_cond : process
		begin
			cond<=0;				
			wait for 140 us; 
			cond<=1;				
			wait;		
	end process tb_cond;

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
			wait;
        end process tb_rst;
		
		
    tb_din : process
		begin
			din <= "00000000";--0
			wait for 10 us;
			din <= "00000001";--1
			wait for 10 us;
			din <= "00000010";--2
			wait for 10 us;
			din <= "00000011";--3
			wait for 10 us;
			din <= "00000100";--4
			wait for 10 us;
			din <= "00000101";--5
			wait for 10 us;
			din <= "00000110";--6
			wait for 10 us;
			din <= "00000111";--7
			wait for 10 us;
			din <= "00001000";--8
			wait for 10 us;
			din <= "00001001";--9
			wait for 10 us;
			din <= "00001010";--10
			wait for 10 us;
			din <= "00001011";--11
			wait for 10 us;	
			
			din <= "00001100";--12
			wait for 10 us;
			din <= "00001101";--13
			wait for 10 us;
			din <= "00001111";--15
			wait for 10 us;
			din <= "00010001";--17
			wait for 10 us;
			din <= "00010011";--19
			wait for 10 us;
			din <= "00010101";--21
			wait for 10 us;
			din <= "00010111";--23
			wait for 10 us;
			din <= "00011001";--25
			wait for 10 us;
			din <= "00011011";--27
			wait for 10 us;
			din <= "00011101";--29
			wait for 10 us;
			din <= "00011111";--31
			wait for 10 us;
			din <= "00100000";--33
			
			wait for 10 us;
			din <= "00000000";--0
			wait ;
        end process tb_din;
		

  
END top_Testbench_cond0to1;
