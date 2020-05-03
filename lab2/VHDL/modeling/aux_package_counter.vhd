 LIBRARY ieee;
USE ieee.std_logic_1164.all;


package aux_package_counter is

----------------------------------------------------------------

component Counter is
	generic (
		m : positive := 8;
		k : positive := 3
		);
	port(
		rst,ena,clk : in std_logic;
		riseSig :in STD_LOGIC;
		counterResult: out std_logic_vector(k downto 0)
	);
end component;

  

  -----------------------------------------------------------------
end aux_package_counter;