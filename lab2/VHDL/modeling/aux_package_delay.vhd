 LIBRARY ieee;
USE ieee.std_logic_1164.all;


package aux_package_delay is


component SynchronousDelay is
	generic (
		n : positive := 8
	);
	port(
		rst,ena,clk : in std_logic;
		din : in std_logic_vector(n-1 downto 0);
		din_i,din_iMinus : out std_logic_vector(n-1 downto 0)
	);
end component;

  -----------------------------------------------------------------
end aux_package_delay;