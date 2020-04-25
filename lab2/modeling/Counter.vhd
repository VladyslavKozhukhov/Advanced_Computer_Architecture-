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
		VARIABLE countVar: STD_LOGIC_VECTOR(7 DOWNTO 0);
		begin
			if(rst='1') then
				countVar := "00000001";
				tmpResult <= (others => '0');
			elsif (rising_edge(clk)) then	
				IF(ena = '1') THEN
					IF(riseSig = '1') THEN
							countVar := countVar( 6 downto 0 )&'0';
							if(countVar = "00000010") then							
								tmpResult <= "001";
							elsif(countVar = "00000100") then
								tmpResult <= "010";
							elsif(countVar = "00001000") then
								tmpResult <= "011";
							elsif(countVar = "00001000") then
								tmpResult <= "100";
							elsif(countVar = "00010000") then
								tmpResult <= "101";
							elsif(countVar = "00100000") then
								tmpResult <= "110";
							elsif(countVar = "01000000") then
								tmpResult <= "111";							
							elsif(countVar = "10000000") THEN
								tmpResult<="111";
								countVar := "01000000";
							end if;				
					ELSE 
						countVar := "00000001";
						tmpResult<="000";
					end IF;
				ELSE
					tmpResult<=(others => '0');
					countVar := "00000001";
				end IF;
			end IF;
		END PROCESS counterProc;			
		counterResult <= tmpResult;
	
end arc_Counter;
	--output(n-1 DOWNTO 0) <= outputSig;

