LIBRARY ieee;
USE ieee.std_logic_1164.all;


package aux_package is
-----------------------------------------------------------------
  component top is
	generic (
		n : positive := 8 ; -- A,B length
		m : positive := 5 ; -- OPC length
		k : positive := 2   -- STATUS length
	);
	port(
		rst,ena,clk,cin : in std_logic;
		A,B : in std_logic_vector(n-1 downto 0);
		OPC : in std_logic_vector(m-1 downto 0);
		----------------------------------------
		RES : out std_logic_vector(2*n-1 downto 0); -- RES(HI,LO)
		STATUS : out std_logic_vector(k-1 downto 0)
	);
  end component;
  -----------------------------------------------------------------
  component ReadLogic is
	generic (
		n : positive := 8 ; -- A,B length
		m : positive := 5   -- OPC length
	);
	port(
		OPC : out std_logic_vector(m-1 downto 0);
		A,B : out std_logic_vector(n-1 downto 0)
		cin : out std_logic
	);
  end component;  
  -----------------------------------------------------------------  
  component WriteLogic is
	generic (
		n : positive := 8 ; -- A,B length
	);
	port(
		Status : in std_logic_vector(1 downto 0);
		HI,LO : in std_logic_vector(n-1 downto 0)
	);
	end component;
-----------------------------------------------------------------
  component backRegister is
	generic (
		n : positive := 8 ; -- A,B length
		m : positive := 5   -- OPC length
	);
	port(
		rst,ena,clk : in std_logic;
		OPC_in : in std_logic_vector(m-1 downto 0);
		A_in,B_in : in std_logic_vector(n-1 downto 0);
		cin_in : in std_logic;
		----------------------------------------
		OPC_out : out std_logic_vector(m-1 downto 0);
		A_out,B_out : out std_logic_vector(n-1 downto 0);
		cin_out : out std_logic
	);
  end component;
-----------------------------------------------------------------
  component ALU is
	generic (
		n : positive := 8 ; -- A,B length
		m : positive := 5 ; -- OPC length
		k : positive := 2   -- STATUS length
	);
	port(
		OPC : in std_logic_vector(m-1 downto 0);
		A,B : in std_logic_vector(n-1 downto 0);
		cin : in std_logic;
		----------------------------------------
		HI,LO : out std_logic_vector(n-1 downto 0);
		Status : out std_logic_vector(k-1 downto 0)
	);
  end component;
-----------------------------------------------------------------
  component frontRegister is
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
  end component;
-----------------------------------------------------------------
  component shifter is
	generic (
		n : positive := 8   -- A,B length
	);
	port(
		A : in std_logic_vector(n-1 downto 0);
		B : in std_logic_vector(2 downto 0);
		sel : in std_logic_vector(1 downto 0);
		----------------------------------------
		HI,LO : out std_logic_vector(n-1 downto 0);
		cout : out std_logic
	);
  end component;
-----------------------------------------------------------------
  component FA is
	port(
		xi,yi,cin : in std_logic;
		----------------------------------------
		s,cout : out std_logic
	);
  end component;
-----------------------------------------------------------------
  component AdderSub is
	generic (
		n : INTEGER := 8   -- x,y length
	);
	port(
		cin : in std_logic;
		x,y: in std_logic_vector (n-1 DOWNTO 0);
		sel: in std_logic_vector (1 DOWNTO 0);
		----------------------------------------
		s: out std_logic_vector(n DOWNTO 0)
	);
  end component;
-----------------------------------------------------------------
  component ArithLogic is
	generic (
		n : positive := 8 ; -- A,B length
		m : positive := 5   -- OPC length
	);
	port(
		OPC : in std_logic_vector(m-1 downto 0);
		A,B : in std_logic_vector(n-1 downto 0);
		cin : in std_logic;
		----------------------------------------
		HI,LO : out std_logic_vector(n-1 downto 0);
		cout : out std_logic
	);
  end component;
-----------------------------------------------------------------
  component MaxMin is
	generic (
		n : positive := 8   -- A,B length
	);
	port(
		A,B : in std_logic_vector(n-1 downto 0);
		maxFlag : in std_logic;
		----------------------------------------
		result : out std_logic_vector(n-1 downto 0)
	);
  end component;
-----------------------------------------------------------------
  component outputSelector is
	generic (
		n : positive := 8 ; -- A,B length
		m : positive := 5 ; -- OPC length
		k : positive := 2   -- STATUS length
	);
	port(
		OPC : in std_logic_vector(m-1 downto 0);
		arith_logic_LO,arith_logic_HI : in std_logic_vector(n-1 downto 0);
		cout_arith_logic : in std_logic;
		shifter_LO,shifter_HI : in std_logic_vector(n-1 downto 0);
		cout_shifter : in std_logic;
		----------------------------------------
		HI,LO : out std_logic_vector(n-1 downto 0);
		STATUS : out std_logic_vector(k-1 downto 0)
	);
  end component;
-----------------------------------------------------------------	




  
  
  
  
end aux_package;

