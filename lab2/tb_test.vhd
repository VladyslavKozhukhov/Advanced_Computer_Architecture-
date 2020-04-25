 LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY top_tb IS
	CONSTANT m : INTEGER := 8;
END top_tb;

architecture top_Testbench OF top_tb IS
SIGNAL rst,ena,clk: STD_LOGIC;
	SIGNAL din: STD_LOGIC_VECTOR (m-1 DOWNTO 0);
	SIGNAL cond : INTEGER range 0 to 3;
	SIGNAL	detector : std_logic;
--	SIGNAL	XX:  std_logic_vector(m-1 downto 0);
--	SIGNAL	YY:  std_logic_vector(m-1 downto 0);
--	SIGNAL	counter:  std_logic_vector(2 downto 0);,riseSIGG: 
--	SIGNAL	counterTMP:  std_logic_vector(2 downto 0);

		BEGIN

	L0 : top PORT MAP(rst,ena,clk,din,cond,detector);--,outtt,CR);--,riseSIGG,XX,YY,counter,counterTMP);
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
				wait for 120 us; 
				cond<=1;
				wait for 120 us; 
				cond<=2;				

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
			wait for 10 us;
			din <= "00000011";--3
			wait for 10 us;
			din <= "00000110";--6
			wait for 10 us;
			din <= "00001001";--9
			wait for 10 us;
			din <= "00001100";--12
			wait for 10 us;
			din <= "00001111";--15
			wait for 10 us;
			din <= "00010010";--18
			wait for 10 us;
			din <= "00010101";--21
			wait for 10 us;
			din <= "00011000";--24
			wait for 10 us;
			din <= "00011011";--27
			wait for 10 us;
			din <= "00011110";--30
			wait ;
        end process tb_din;
		

  
END top_Testbench;
