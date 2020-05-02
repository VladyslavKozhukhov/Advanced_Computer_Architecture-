LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity Counter is
	generic (
		k : positive := 3
	);
	port(
		rst,ena,clk : in std_logic;
		riseSig :in STD_LOGIC;
		counterResult: out std_logic_vector(k downto 0)
	);
end Counter;
------------- Counter Architecture code --------------
architecture arc_Counter of Counter is
SIGNAL tmpResult: STD_LOGIC_VECTOR(k DOWNTO 0); 
begin
		counterProc :process (clk,rst)
		begin
			if(rst='1') then
				tmpResult <= (others => '0') ;
			elsif (rising_edge(clk)) then	
				IF(ena = '1') THEN
					IF(riseSig = '1') THEN							
						if (tmpResult<=m) then
						   tmpResult<=tmpResult +1 ;
						else
						   tmpResult <= tmpResult;
						end if;											
					ELSE 
						tmpResult <= (others => '0');
					end IF;
				end IF;
			end IF;
			counterResult<= tmpResult;
		END PROCESS counterProc;			
		 
	
end arc_Counter;