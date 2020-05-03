LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

-------------------------------------------------------------
entity Counter is
	generic (
		m : positive :=8;
		k : positive := 3);
	port(
		rst,ena,clk : in std_logic;
		riseSig :in STD_LOGIC;
		counterResult: out std_logic_vector(k downto 0)
	);
end Counter;
------------- Counter Architecture code --------------
architecture arc_Counter of Counter is

SIGNAL counterMax : STD_LOGIC; 
SIGNAL cnt :STD_LOGIC_VECTOR(k downto 0);
BEGIN 
counterMax<= '1' when (cnt = m + 1) else '0';
	
	counterProc :process (clk,rst,riseSig,counterMax)
		begin
			if(rst='1') then
				cnt <= (others => '0') ;
			elsif (rising_edge(clk)) then	
				IF(ena = '1') THEN
					IF(riseSig = '1') THEN							
						if (counterMax = '0') then
						   cnt <= cnt + 1 ;
						end if;											
					ELSE 
						cnt <= (others => '0');
					end IF;
				end IF;
			end IF;
		END PROCESS counterProc;		
		 
	counterResult<=cnt;
end arc_Counter;