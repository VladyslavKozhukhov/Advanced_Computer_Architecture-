LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity ConditionCheck is
	generic (
		n : positive := 8 ;
	);
	port(
		D_next,D_prev : in std_logic_vector(n-1 downto 0);
		cond : in integer range 0 to 3;
		rise : out std_logic
	);
end ConditionCheck;
------------- SynchronousDelay Architecture code --------------
architecture arc_ConditionCheck of ConditionCheck is
--SIGNAL a,bNOT : std_logic;
begin
	L0 : Adder generic map(n) port map(a,b,1); -- Adder single instantiation
	PROCESS (D_next, D_prev, cond)
--		VARIABLE carry : STD_LOGIC_VECTOR (length DOWNTO 0);
	BEGIN
--		FOR i IN 0 TO length-1 LOOP
--			s(i) <= a(i) XOR b(i) XOR carry(i);
--			carry(i+1) := (a(i) AND b(i)) OR (a(i) AND carry(i)) OR (b(i) AND carry(i));
--		END LOOP;
--		cout <= carry(length);
	END PROCESS;
				
	
	
	
end arc_ConditionCheck;







