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
		counterResult: out std_logic_vector(k-1 downto 0)
	);
end Counter;
------------- Counter Architecture code --------------
architecture arc_Counter of Counter is
SIGNAL tmpResult: STD_LOGIC_VECTOR(k-1 DOWNTO 0); 

begin
	counterProc :process (clk,rst,ena)
		VARIABLE count : INTEGER RANGE 0 TO 8 ;		
		begin
			if(rst='1') then
				count := 0;
				tmpResult <= (others => '0');
			elsif (rising_edge(clk)) then	
				IF(ena = '1') THEN
					IF(riseSig = '1') THEN						
							count := count +1;
							if(count = 1) then							
								tmpResult <= "001";
							elsif(count = 2) then
								tmpResult <= "010";
							elsif(count = 3) then
								tmpResult <= "011";
							elsif(count = 4) then
								tmpResult <= "100";
							elsif(count = 5) then
								tmpResult <= "101";
							elsif(count = 6) then
								tmpResult <= "110";
							elsif(count = 7) then
								tmpResult <= "111";							
							elsif(count = 8) THEN
								tmpResult<="111";
								count:=7;
							end if;				
					ELSE 
						count :=0;
						tmpResult<="000";
					end IF;
				ELSE
					tmpResult<=(others => '0');
					count:=0;
				end IF;
			end IF;
		END PROCESS counterProc;			
		counterResult <= tmpResult;
	
end arc_Counter;

