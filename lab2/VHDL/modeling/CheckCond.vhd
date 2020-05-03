LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package_cond.all;
-------------------------------------------------------------
entity CheckCond is
	generic (
		n : positive := 8
	);
	port(
		D_prev : in std_logic_vector(n-1 downto 0);
		cond : in integer range 0 to 3;
		din : in std_logic_vector(n-1 downto 0);
		riseSig: out std_logic
	);
end CheckCond;
architecture arc_CheckCond of CheckCond is
	SIGNAL adderS,adderInSIG : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL cinSIG : STD_LOGIC; 



begin

	L0 : Adder generic map(n) port map(adderInSIG,D_prev,cinSIG,adderS,OPEN);
		

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
			elsif (cond = 3) then
				adderInVar(2) := '1';
			end IF;
			cinSIG <= cinVar;
			adderInSIG <= adderInVar;
	END PROCESS updateCondProcess;
	riseSig<='1' WHEN (adderS = din) ELSE '0'; 
	
end arc_CheckCond;





