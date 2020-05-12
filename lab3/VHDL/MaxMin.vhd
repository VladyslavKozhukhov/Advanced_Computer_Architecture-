LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity MaxMin is
	generic (
		n : positive := 8   -- A,B length
	);
	port(
		A,B : in std_logic_vector(n-1 downto 0);
		maxFlag : in std_logic;
		----------------------------------------
		result : out std_logic_vector(n-1 downto 0)
	);
end MaxMin;
------------- MaxMin Architecture code --------------
architecture arc_MaxMin of MaxMin is

SIGNAL arith_logic_output_LO,arith_logic_output_HI,shift_output : std_logic_vector(n-1 downto 0);
SIGNAL found: STD_LOGIC;
begin
	process is
	begin
		for ii in n-1 downto 0 loop
			if(A(ii)='1' and B(ii) = '0') then
				if(maxFlag = '1') then
					result<=A;
				else
					result<=B;
				end if;
				exit;
			elsif (A(ii)='0' and B(ii) = '1') then
				if(maxFlag = '1') then
					result<=B;
				else
					result<=A;
				end if;
				exit;
			elsif (((A(ii)='0' and B(ii)='0')or (A(ii)='1' and B(ii)='1')) and  ii=0) then
				result<=B;
			end if;
		end loop;
		wait;		
	end process;
end arc_MaxMin;







