 LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY tb_final IS
	CONSTANT m : INTEGER := 8;
END tb_final;

architecture Arc_tb_final OF tb_final IS
SIGNAL rst,ena,clk: STD_LOGIC;
	SIGNAL din: STD_LOGIC_VECTOR (m-1 DOWNTO 0);
	SIGNAL cond : INTEGER range 0 to 3;
	SIGNAL detector : std_logic;

BEGIN

	L0 : top PORT MAP(rst,ena,clk,din,cond,detector);--,riseSIGG,XX,YY,counter,counterTMP);
	
		tb_ena : process
			begin
			ena<='0';
			wait for 20 us;
			ena<='1';
			wait for 180 us;
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
			wait for 20 us; 
			cond<=2;		
			wait for 25 us; 
			cond<=3;
			wait for 215 us;
			cond<=0;
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
			wait for 310 us;
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
			din <= "00010100";--20
			wait for 10 us;
			din <= "00010111";--23
			wait for 10 us;
			din <= "00011010";--26
			wait for 10 us;
			din <= "00011110";--30
			wait for 10 us;
			din <= "00100010";--34
			wait for 10 us;
			din <= "00100110";--38
			wait for 10 us;
			din <= "00101010";--42
			wait for 10 us;
			din <= "00101110";--46
			wait for 10 us;
			din <= "00110010";--50
			wait for 10 us;
			din <= "00110110";--54
			wait for 10 us;
			din <= "00111010";--58
			wait for 10 us;
			din <= "00111110";--62
			wait for 10 us;
			din <= "01000010";--66
			wait for 10 us;
			din <= "01000110";--70
			wait for 10 us;
			din <= "01001010";--74
			wait for 10 us;
			din <= "01001110";--78
			wait for 10 us;
			din <= "01010010";--82
			wait for 10 us;
			din <= "01010110";--86
			wait for 10 us;
			din <= "01011010";--90
			wait for 10 us;
			din <= "01011110";--94
			wait for 10 us;
			din <= "01100010";--98
			wait for 10 us;
			din <= "01100110";--102
			wait for 10 us;
			din <= "01101010";--106
			wait for 10 us;
			din <= "01101110";--110
			wait for 10 us;
			din <= "01101111";--111
			wait for 10 us;
			din <= "01110000";--112
			wait for 10 us;
			din <= "01110001";--113
			wait ;
        end process tb_din;
		

  
END Arc_tb_final;
