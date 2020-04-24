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
SIGNAL count : STD_LOGIC_VECTOR (7 DOWNTO 0)  ;	
begin
	counterProc :process (clk,rst,ena)
		begin
			if(rst='1') then
				count <= "00000001";
				tmpResult <= (others => '0');
			elsif (rising_edge(clk)) then	
				IF(ena = '1') THEN
					IF(riseSig = '1') THEN
							count <= count( 6 downto 0 )&'0';
							if(count = "00000010") then							
								tmpResult <= "001";
							elsif(count = "00000100") then
								tmpResult <= "010";
							elsif(count = "00001000") then
								tmpResult <= "011";
							elsif(count = "00001000") then
								tmpResult <= "100";
							elsif(count = "00010000") then
								tmpResult <= "101";
							elsif(count = "00100000") then
								tmpResult <= "110";
							elsif(count = "01000000") then
								tmpResult <= "111";							
							elsif(count = "10000000") THEN
								tmpResult<="111";
								count<="01000000";
							end if;				
					ELSE 
						count <= "00000001";
						tmpResult<="000";
					end IF;
				ELSE
					tmpResult<=(others => '0');
					count <= "00000001";
				end IF;
			end IF;
		END PROCESS counterProc;			
		counterResult <= tmpResult;
	
end arc_Counter;
	--output(n-1 DOWNTO 0) <= outputSig;

