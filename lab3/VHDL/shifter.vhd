LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity shifter is
	generic (
		n : positive := 8   -- A length
	);
	port(
		A : in std_logic_vector(n-1 downto 0);
		B : in std_logic_vector(2 downto 0);
		sel : in std_logic_vector(1 downto 0);
		----------------------------------------
		HI,LO : out std_logic_vector(n-1 downto 0);
		cout : out std_logic
	);
end shifter;
------------- shifter Architecture code --------------
architecture arc_shifter of shifter is


begin
	
	HI <= (others=>'0');
	shiftProcess : process(A,B,sel)
	begin
		if (B = "000") then
			LO <= A;
			cout <= '0';
		else
			if (sel = "00") then     --RLA
				
			elsif (sel = "01") then  --RLC
				
			elsif (sel = "10") then  --RRA
				
			elsif (sel = "11") then  --RRC
				
			end if;
		end if;
	END PROCESS shiftProcess;
	
end arc_shifter;







