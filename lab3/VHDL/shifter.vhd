LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
USE work.aux_package.all;
-------------------------------------------------------------
entity shifter is
	generic (
		n : positive := 8   -- A length
	);
	port(
		cin : in std_logic;
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
SIGNAL shiftAmount : integer range 0 to 7;

begin
	
	HI <= (others=>'0');
	shiftAmount <= to_integer(unsigned(B));
	
	shiftProcess : process(A,shiftAmount,sel)
	variable shiftVar : integer range 0 to 7;
	variable coutVar : std_logic;
	variable resultVar : std_logic_vector(n-1 downto 0);
	begin
		shiftVar := shiftAmount;
		coutVar := '0';
		resultVar := A;
		if (shiftVar /= 0) then
			if (sel = "00") then     --RLA
				while (shiftVar > 0) loop
					coutVar := resultVar(n-1);
					resultVar := resultVar(n-2 downto 0) & '0';
					shiftVar := shiftVar-1;
				end loop;
				
			elsif (sel = "10") then  --RRA
				while (shiftVar > 0) loop
					coutVar := resultVar(0);
					resultVar := resultVar(n-1) & resultVar(n-1 downto 1);	--copy msb due to manual
					shiftVar := shiftVar-1;
				end loop;	
				
			elsif (sel = "01") then  --RLC
				resultVar := A(n-2 downto 0) & cin;
				coutVar := A(n-1);
				shiftVar := shiftVar-1;
				while (shiftVar > 0) loop
					coutVar := resultVar(n-1);
					resultVar := resultVar(n-2 downto 0) & coutVar;
					shiftVar := shiftVar-1;
				end loop;			
				

			elsif (sel = "11") then  --RRC
				resultVar := cin & A(n-1 downto 1);
				coutVar := A(0);
				shiftVar := shiftVar-1;
				while (shiftVar > 0) loop
					coutVar := resultVar(0);
					resultVar := coutVar & resultVar(n-1 downto 1);
					shiftVar := shiftVar-1;
				end loop;
			end if;
		end if;
		cout <= coutVar;
		LO <= resultVar;
	END PROCESS shiftProcess;
	
end arc_shifter;







