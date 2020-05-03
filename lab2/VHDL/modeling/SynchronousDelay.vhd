LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity SynchronousDelay is
	generic (
		n : positive := 8
	);
	port(
		rst,ena,clk : in std_logic;
		din : in std_logic_vector(n-1 downto 0);
		din_i,din_iMinus : out std_logic_vector(n-1 downto 0)
	);
end SynchronousDelay;
------------- SynchronousDelay Architecture code --------------
architecture arc_SynchronousDelay of SynchronousDelay is
SIGNAL D_prev : STD_LOGIC_VECTOR(n-1 DOWNTO 0); 
begin
		delayProc :process (clk,rst,ena,din)
		begin
			if(rst='1') then
				D_prev <= (others => '0'); -- d_i-1
			elsif (rising_edge(clk)) then	
				IF(ena = '1') THEN
						D_prev <= din;
				end IF;
			end IF;
		END PROCESS delayProc;	
		din_i <= din;  
		din_iMinus <= D_prev; 
	
end arc_SynchronousDelay;







