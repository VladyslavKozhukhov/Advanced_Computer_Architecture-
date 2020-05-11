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
		HI,LO : out std_logic_vector(n-1 downto 0)
	);
end shifter;
------------- shifter Architecture code --------------
architecture arc_shifter of shifter is


begin
	
	--backREG : BACKregister generic map(n,m) port map(rst,ena,clk,OPC,A,B,cin,OPC_SIG,A_SIG,B_SIG,cin_SIG);
	
	
end arc_shifter;







