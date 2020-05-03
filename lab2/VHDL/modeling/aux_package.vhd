LIBRARY ieee;
USE ieee.std_logic_1164.all;


package aux_package is

-----------------------------------------------------------------
	component Adder IS
		GENERIC (length : INTEGER := 8);
		PORT ( a, b: IN STD_LOGIC_VECTOR (length-1 DOWNTO 0);
			cin: IN STD_LOGIC;
            s: OUT STD_LOGIC_VECTOR (length-1 DOWNTO 0);
			cout: OUT STD_LOGIC);
	END component;
-----------------------------------------------------------------
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


component Counter is
	generic (
		k : positive := 3
	);
	port(
		rst,ena,clk : in std_logic;
		riseSig :in STD_LOGIC;
		counterResult: out std_logic_vector(k downto 0)
	);
end component;


  -----------------------------------------------------------------
component detector_val is
	generic (
		m:positive :=8;
		k: positive :=3
	);
	port(
		trigger: IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		count: IN STD_LOGIC_VECTOR(k DOWNTO 0);
		detector: OUT STD_LOGIC);
	
end component;
  

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
end aux_package;