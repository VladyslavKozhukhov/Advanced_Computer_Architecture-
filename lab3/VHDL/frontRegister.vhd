LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity frontRegister is
	generic (
		n : positive := 8 ; -- A,B length
		k : positive := 2   -- STATUS length
	);
	port(
		rst,ena,clk : in std_logic;
		HI_in,LO_in : in std_logic_vector(n-1 downto 0);
		Status_in : in std_logic_vector(k-1 downto 0);
		----------------------------------------
		HI_out,LO_out : out std_logic_vector(n-1 downto 0);
		Status_out : out std_logic_vector(k-1 downto 0)
	);
end frontRegister;
------------- frontRegister Architecture code --------------
architecture arc_frontRegister of frontRegister is

begin
	
	syncProcessFRONT : process (rst,ena,clk,HI_in,LO_in,Status_in)
	begin
		if(rst='1') then
			HI_out <= (others => '0');
			LO_out <= (others => '0');
			Status_out <= (others => '0');
		elsif (rising_edge(clk)) then	
			IF(ena = '1') THEN
				HI_out <= HI_in;
				LO_out <= LO_in;
				Status_out <= Status_in;
			end IF;
		end IF;
	END PROCESS syncProcessFRONT;	
	
end arc_frontRegister;







