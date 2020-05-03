LIBRARY ieee;
USE ieee.std_logic_1164.all;


package aux_package_cond is

-----------------------------------------------------------------
component CheckCond is
	generic (
		n : positive := 8
	);
	port(
		D_prev : in std_logic_vector(n-1 downto 0);
		cond : in integer range 0 to 3;
		din  : in std_logic_vector(n-1 downto 0);
		riseSig: out std_logic
	);
end component;
  -----------------------------------------------------------------
  	component Adder IS
		GENERIC (length : INTEGER := 8);
		PORT ( a, b: IN STD_LOGIC_VECTOR (length-1 DOWNTO 0);
			cin: IN STD_LOGIC;
            s: OUT STD_LOGIC_VECTOR (length-1 DOWNTO 0);
			cout: OUT STD_LOGIC);
	END component;
-----------------------------------------------------------------

end aux_package_cond;