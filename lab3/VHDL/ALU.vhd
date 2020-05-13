LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity ALU is
	generic (
		n : positive := 8 ; -- A,B length
		m : positive := 5 ; -- OPC length
		k : positive := 2   -- STATUS length
	);
	port(
		clk : in std_logic;
		A,B : in std_logic_vector(n-1 downto 0);
		OPC : in std_logic_vector(m-1 downto 0);
		cin : in std_logic;
		----------------------------------------
		HI,LO : out std_logic_vector(n-1 downto 0);
		STATUS : out std_logic_vector(k-1 downto 0)
	);
end ALU;
------------- ALU Architecture code --------------
architecture arc_ALU of ALU is

SIGNAL alu_status : std_logic_vector(k-1 downto 0);

SIGNAL arith_logic_LO,arith_logic_HI,shifter_LO,shifter_HI : std_logic_vector(n-1 downto 0);
SIGNAL cout_arith_logic,cout_shifter : std_logic;

begin
	
	arithAndLogicEntity : ArithLogic generic map(n,m) port map(clk,OPC,A,B,cin,arith_logic_HI,arith_logic_LO,cout_arith_logic); --test
	shiftEntity : shifter generic map(n) port map(A,B(2 downto 0),OPC(1 downto 0),shifter_HI,shifter_LO,cout_shifter); --TO DO: *FIXES ONLY*
	selectorEntity : outputSelector generic map(n,m,k) port map(OPC,arith_logic_LO,arith_logic_HI,cout_arith_logic,shifter_LO,shifter_HI,cout_shifter,HI,LO,STATUS); --DONE
	
	
end arc_ALU;







