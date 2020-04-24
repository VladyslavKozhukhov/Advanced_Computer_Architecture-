 LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY top_tb_cond3 IS
	CONSTANT n : INTEGER := 8;
	CONSTANT m : positive := 7 ;
	CONSTANT k : positive := 3
END top_tb_cond3;

architecture top_Testbench_cond3 OF top_tb_cond3 IS
SIGNAL rst,ena,clk: STD_LOGIC;
	SIGNAL din: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	SIGNAL cond : INTEGER range 0 to 3;
	SIGNAL	detector : std_logic;
--	SIGNAL	XX:  std_logic_vector(m-1 downto 0);
--	SIGNAL	YY:  std_logic_vector(m-1 downto 0);
--	SIGNAL	counter:  std_logic_vector(2 downto 0);,riseSIGG: 
--	SIGNAL	counterTMP:  std_logic_vector(2 downto 0);

BEGIN
cond<=3;
	L0 : top generic map(n,m,k) port map(rst,ena,clk,din,cond,detector);--,riseSIGG,XX,YY,counter,counterTMP);
		tb_ena : process
			begin
			ena<='0';
			wait for 20 us;

			ena<='1';
			
			wait;
        end process tb_ena;
		
--	tb_cond : process
--		begin
--			cond<=0;				
--			wait for 120 us; 
--			cond<=1;				
--			wait;		
--	end process tb_cond;

        tb_clk : process
			begin 
			clk<='0';
			wait for 1 us;
			clk<='1';
			wait for 1 us;
        end process tb_clk;
		
		tb_rst : process
			begin 
			rst<='1';
			wait for 10 us;
			rst<='0';
--			wait for 140 us;
--			rst<='1';
--			wait for 10 us;
--			rst<='0';
			wait;
        end process tb_rst;
		
		
    tb_din : process
		begin
			din <= "00000000";--0
			wait for 10 us;
			din <= "00000001";--4
			wait for 10 us;
			din <= "00000010";--8
			wait for 10 us;
			din <= "00000011";--12
			wait for 10 us;
			din <= "00000100";--16
			wait for 10 us;
			din <= "00000101";--20
			wait for 10 us;
			din <= "00000110";--24
			wait for 10 us;
			din <= "00000111";--28
			wait for 10 us;
			din <= "00001000";--32
			wait for 10 us;
			din <= "00001001";--36
			wait for 10 us;
			din <= "00001010";--40
			wait for 10 us;
			din <= "00001011";--44
			wait for 10 us;	
			
			din <= "00001100";--48
			wait for 10 us;
			din <= "00001101";--52
			wait for 10 us;
			din <= "00001110";--56
			wait for 10 us;
			din <= "00001111";--60
			wait for 10 us;
			din <= "00010000";--64
			wait for 10 us;
			din <= "00010001";--68
			wait for 10 us;
			din <= "00010010";--72
			wait for 10 us;
			din <= "00010011";--76
			wait for 10 us;
			din <= "00010100";--80
			wait for 10 us;
			din <= "00010101";--84
			wait for 10 us;
			din <= "00010110";--88
			wait for 10 us;
			din <= "00010111";--92
			
			wait for 10 us;
			din <= "00000000";--0
			wait ;
        end process tb_din;
		

  
END top_Testbench_cond3;
