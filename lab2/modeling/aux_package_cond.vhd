LIBRARY ieee;
USE ieee.std_logic_1164.all;


package aux_package_cond is

-----------------------------------------------------------------
component Cond is
	generic (
		n : positive := 8
	);
	port(
		rst,ena,clk : in std_logic;
		D_prev : in std_logic_vector(n-1 downto 0);
		condition : in integer range 0 to 3;
		riseSig: out std_logic;
	);
end component;
  -----------------------------------------------------------------
end aux_package_cond;