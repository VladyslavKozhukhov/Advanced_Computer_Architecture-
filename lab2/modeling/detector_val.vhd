 LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity detector_val is
	generic (
		k: positive :=3
	);
	port(
		trigger: IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			counterResult: IN STD_LOGIC_VECTOR(k-1 DOWNTO 0);
			--riseSig :IN STD_LOGIC; 
			isOne: OUT STD_LOGIC);
	
end detector_val;
------------- SynchronousDelay Architecture code --------------
architecture arc_detector_val of detector_val is
begin
	cntProc : process (trigger)
		begin
		--	IF (riseSig = '1') then
				if(counterResult = "111" and trigger ="100000000") then
					isOne <= '1';
				else
					isOne<='0';
				end if;
			--ELSE
				--isOne<='0';
			--end IF;
	END PROCESS cntProc;
	
end arc_detector_val;



		