 LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY delay_tb IS
	CONSTANT n : INTEGER := 8;
END delay_tb;

architecture Delay_Testbench OF delay_tb IS
component SynchronousDelay is
	generic (
		n : positive := 8
	);
	port(
		rst,ena,clk : in std_logic;
		din : in std_logic_vector(n-1 downto 0);
		din_i,din_iMinus : out std_logic_vector(n-1 downto 0)
	);
end component;
SIGNAL rst,ena,clk: STD_LOGIC;
SIGNAL	din :  std_logic_vector(n-1 downto 0);
SIGNAL din_i,din_iMinus :  std_logic_vector(n-1 downto 0);
BEGIN

	L0 : SynchronousDelay generic map (n) PORT MAP(rst,ena,clk,din,din_i,din_iMinus);
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
			
  end process tb_din;

END Delay_Testbench;