 LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY SynchronousDelay_tb IS
	CONSTANT m : INTEGER := 8;
END SynchronousDelay_tb;

architecture Arc_SynchronousDelay_tb OF SynchronousDelay_tb IS
SIGNAL rst,ena,clk: STD_LOGIC;
SIGNAL din,din_i,din_iMinus : STD_LOGIC_VECTOR (m-1 DOWNTO 0);

BEGIN

	L0 : top PORT MAP(rst,ena,clk,din,din_i,din_iMinus);
		tb_ena : process
			begin
			ena<='0';
			wait for 20 us;

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
			wait;
        end process tb_rst;
		
		
    tb_din : process
		begin
			din <= "00000000";
			wait for 10 us;
			din <= "00000001";
			wait for 10 us;
			din <= "00000010";
			wait for 10 us;
			din <= "00000011"; 
			wait for 10 us;
			din <= "00000100";
			wait for 10 us;
			din <= "00000101";
			wait for 10 us;
			din <= "00000110";
			wait for 10 us;
			din <= "00000111";--7
			wait for 10 us;
			din <= "00001000";
			wait for 10 us;
			din <= "00001001";
			wait for 10 us;
			din <= "00001010";--10
			wait for 10 us;
			din <= "00001011";--11
			wait for 10 us;	
			
			din <= "00000000";--0
			wait for 10 us;
			din <= "00000010";--2
			wait for 10 us;
			din <= "00000100";--4
			wait for 10 us;
			din <= "00000110";--6
			wait for 10 us;
			din <= "00001000";--8
			wait for 10 us;
			din <= "00001010";--10
			wait for 10 us;
			din <= "00001100";--12
			wait for 10 us;
			din <= "00001110";--14
			wait for 10 us;
			din <= "00010000";--16
			wait for 10 us;
			din <= "00010010";--18
			wait for 10 us;
			din <= "00010100";--20
			wait for 10 us;
			din <= "00010110";--22
			
			wait for 10 us;
			din <= "00000000";--0
			wait ;
        end process tb_din;
		

  
END Arc_SynchronousDelay_tb;
