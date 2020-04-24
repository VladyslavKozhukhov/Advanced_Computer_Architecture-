 LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY top_tb_cond2 IS
	CONSTANT n : INTEGER := 8;
	CONSTANT m : positive := 7 ;
	CONSTANT k : positive := 3
END top_tb_cond2;

architecture top_Testbench_cond2 OF top_tb_cond2 IS
SIGNAL rst,ena,clk: STD_LOGIC;
	SIGNAL din: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	SIGNAL cond : INTEGER range 0 to 3;
	SIGNAL	detector : std_logic;
--	SIGNAL	XX:  std_logic_vector(m-1 downto 0);
--	SIGNAL	YY:  std_logic_vector(m-1 downto 0);
--	SIGNAL	counter:  std_logic_vector(2 downto 0);,riseSIGG: 
--	SIGNAL	counterTMP:  std_logic_vector(2 downto 0);

BEGIN
cond<=2;
	L0 : top generic map(n,m,k) PORT MAP(rst,ena,clk,din,cond,detector);--,riseSIGG,XX,YY,counter,counterTMP);
		tb_ena : process
			begin
			ena<='0';
			wait for 20 us;

			ena<='1';
			wait for 140 us;
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
			din <= "00000011";--3
			wait for 10 us;
			din <= "00000010";--6
			wait for 10 us;
			din <= "00000011";--9
			wait for 10 us;
			din <= "00000100";--12
			wait for 10 us;
			din <= "00000101";--15
			wait for 10 us;
			din <= "00000110";--18
			wait for 10 us;
			din <= "00000111";--21
			wait for 10 us;
			din <= "00001000";--24
			wait for 10 us;
			din <= "00001001";--27
			wait for 10 us;
			din <= "00001010";--30
			wait for 10 us;
			din <= "00001011";--33
			wait for 10 us;	
			
			din <= "00001100";--36
			wait for 10 us;
			din <= "00001101";--39
			wait for 10 us;
			din <= "00001110";--42
			wait for 10 us;
			din <= "00001111";--45
			wait for 10 us;
			din <= "00010000";--48
			wait for 10 us;
			din <= "00010001";--51
			wait for 10 us;
			din <= "00010010";--54
			wait for 10 us;
			din <= "00010011";--57
			wait for 10 us;
			din <= "00010100";--60
			wait for 10 us;
			din <= "00010101";--63
			wait for 10 us;
			din <= "00010110";--66
			wait for 10 us;
			din <= "00010111";--69
			
			wait for 10 us;
			din <= "00000000";--0
			wait ;
        end process tb_din;
		

  
END top_Testbench_cond2;
