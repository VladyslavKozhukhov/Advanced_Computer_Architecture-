LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
use IEEE.std_logic_arith.all;
-------------------------------------------------------------
entity top is
	generic (
		n : positive := 8 ;
		m : positive := 7 ;
		k : positive := 3
	); -- where k=log2(m+1)
	port(
		rst,ena,clk : in std_logic;
		din : in std_logic_vector(n-1 downto 0);
		cond : in integer range 0 to 3;
		detector : out std_logic
--		X,Y : out STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		--CR : out STD_LOGIC_VECTOR(k DOWNTO 0)
		 );
		
end top;
------------- complete the top Architecture code --------------
architecture arc_sys of top is

	SIGNAL D_prev: STD_LOGIC_VECTOR(n-1 DOWNTO 0); 
	SIGNAL adderS,adderInSIG : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL counterResult : STD_LOGIC_VECTOR(k DOWNTO 0);
	SIGNAL cinSIG,riseSig,counterMax : STD_LOGIC; 
begin

	L0 : Adder generic map(n) port map(adderInSIG,D_prev,cinSIG,adderS,OPEN);
	
	delayProc :process (clk,rst,ena,din)
		VARIABLE Zprev: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		begin
			if(rst='1') then
				D_prev <= (others => '0'); -- d_i-1
			elsif (rising_edge(clk)) then	
				IF(ena = '1') THEN
						D_prev <= din;
				end IF;
			end IF;
		END PROCESS delayProc;			

	updateCondProcess : process (cond)
		VARIABLE adderInVar : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		VARIABLE cinVar : STD_LOGIC;
		begin
			adderInVar := (others => '0');
			cinVar := '0';
			if(cond = 0) then
				cinVar := '1';
			elsif (cond = 1) then
				adderInVar(1) := '1';
			elsif (cond = 2) then
				adderInVar(1) := '1';
				cinVar := '1';
			elsif (cond= 3) then
				adderInVar(2) := '1';
			end IF;
			cinSIG <= cinVar;
			adderInSIG <= adderInVar;
	END PROCESS updateCondProcess;		
	riseSig<='1' WHEN (adderS = din) ELSE '0'; 
	counterMax<= '1' when (counterResult = m+1) else '0';	
	counterProc :process (clk,rst,riseSig,counterMax)
		begin
			if(rst='1') then
				counterResult <= (others => '0') ;
			elsif (rising_edge(clk)) then	
				IF(ena = '1') THEN
					IF(riseSig = '1') THEN							
						if (counterMax = '0') then
						   counterResult <= counterResult +1 ;
						end if;											
					ELSE 
						counterResult <= (others => '0');
					end IF;
				end IF;
			end IF;
		END PROCESS counterProc;

	detector<='1' when (counterResult = m+1) else '0';

end arc_sys;







