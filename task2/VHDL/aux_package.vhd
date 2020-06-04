LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
PACKAGE aux_package IS
	-----------------------------------------------------------------	
COMPONENT top IS
	GENERIC (
		n : POSITIVE := 8; -- A,B length
		m : POSITIVE := 5; -- OPC length
		k : POSITIVE := 2 -- STATUS length
	);
	PORT (
		key_0,key_1,key_2,key_3 : IN std_logic;
		sw_0_7 : IN std_logic_vector(n - 1 DOWNTO 0);
		----------------------------------------
		STATUS : OUT std_logic_vector(k - 1 DOWNTO 0);
		HI_OUT, LO_OUT: OUT std_logic_vector(n - 1 DOWNTO 0);
		SEG0_OUT, SEG1_OUT: OUT std_logic_vector(6 DOWNTO 0);
		SEG2_OUT, SEG3_OUT: OUT std_logic_vector(6 DOWNTO 0)

	);
END COMPONENT;
	-----------------------------------------------------------------
COMPONENT sevenSegment IS
	GENERIC (
		n : POSITIVE := 8 -- A,B length
	);
	PORT (
		HI, LO : IN std_logic_vector(n - 1 DOWNTO 0);
		----------------------------------------
		SEG0_OUT, SEG1_OUT: OUT std_logic_vector(6 DOWNTO 0);
		SEG2_OUT, SEG3_OUT: OUT std_logic_vector(6 DOWNTO 0)
	);
END COMPONENT;
	-----------------------------------------------------------------  
COMPONENT MACModule IS
	GENERIC (
		n : POSITIVE := 8 -- A,B length
	);
	PORT (
		rst, clk : IN std_logic;
		A, B : IN std_logic_vector(n - 1 DOWNTO 0);
		----------------------------------------
		ACC : OUT std_logic_vector(2 * n - 1 DOWNTO 0)
	);
END COMPONENT;
	-----------------------------------------------------------------
COMPONENT A_Register IS
	GENERIC (
		n : POSITIVE := 8 -- A,B length
	);
	PORT (
		ena : IN std_logic;
		A_in: IN std_logic_vector(n - 1 DOWNTO 0);
		----------------------------------------
		A_out: OUT std_logic_vector(n - 1 DOWNTO 0)
	);
END COMPONENT;
-----------------------------------------------------------------
COMPONENT OP_Register IS
	GENERIC (
		n : POSITIVE := 8; -- A,B length
		m : POSITIVE := 5 -- OPC length
	);
	PORT (
		ena : IN std_logic;
		OP_in: IN std_logic_vector(n - 1 DOWNTO 0);
		----------------------------------------
		OP_out: OUT std_logic_vector(m - 1 DOWNTO 0)
	);
END COMPONENT;
	-----------------------------------------------------------------
COMPONENT B_Register IS
	GENERIC (
		n : POSITIVE := 8 -- A,B length
	);
	PORT (
		ena : IN std_logic;
		B_in: IN std_logic_vector(n - 1 DOWNTO 0);
		----------------------------------------
		B_out: OUT std_logic_vector(n - 1 DOWNTO 0)
	);
END COMPONENT;

	-----------------------------------------------------------------
	COMPONENT MultSub IS
		GENERIC (n : INTEGER := 8);
		PORT (
			x, y : IN STD_LOGIC_VECTOR (n - 1 DOWNTO 0);
			s : OUT STD_LOGIC_VECTOR(2 * n - 1 DOWNTO 0)
		);
	END COMPONENT;
	-----------------------------------------------------------------
	COMPONENT ALU IS
		GENERIC (
			n : POSITIVE := 8; -- A,B length
			m : POSITIVE := 5; -- OPC length
			k : POSITIVE := 2 -- STATUS length
		);
		PORT (
			clk : IN std_logic;
			OPC : IN std_logic_vector(m - 1 DOWNTO 0);
			A, B : IN std_logic_vector(n - 1 DOWNTO 0);
			cin : IN std_logic;
			----------------------------------------
			HI, LO : OUT std_logic_vector(n - 1 DOWNTO 0);
			STATUS : OUT std_logic_vector(k - 1 DOWNTO 0)
		);
	END COMPONENT;

	-----------------------------------------------------------------
	COMPONENT shifter IS
		GENERIC (
			n : POSITIVE := 8 -- A,B length
		);
		PORT (
			cin : IN std_logic;
			A : IN std_logic_vector(n - 1 DOWNTO 0);
			B : IN std_logic_vector(2 DOWNTO 0);
			sel : IN std_logic_vector(1 DOWNTO 0);
			----------------------------------------
			HI, LO : OUT std_logic_vector(n - 1 DOWNTO 0);
			cout : OUT std_logic
		);
	END COMPONENT;
	-----------------------------------------------------------------
	COMPONENT FA IS
		PORT (
			xi, yi, cin : IN std_logic;
			----------------------------------------
			s, cout : OUT std_logic
		);
	END COMPONENT;
	-----------------------------------------------------------------
	COMPONENT AdderSub IS
		GENERIC (
			n : INTEGER := 8 -- x,y length
		);
		PORT (
			cin : IN STD_LOGIC;
			x, y : IN STD_LOGIC_VECTOR (n - 1 DOWNTO 0);
			sel : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			--------------------------------------------
			s : OUT STD_LOGIC_VECTOR(n DOWNTO 0)
		);
	END COMPONENT;
	-----------------------------------------------------------------
	COMPONENT ArithLogic IS
		GENERIC (
			n : POSITIVE := 8; -- A,B length
			m : POSITIVE := 5 -- OPC length
		);
		PORT (
			clk : IN std_logic;
			OPC : IN std_logic_vector(m - 1 DOWNTO 0);
			A, B : IN std_logic_vector(n - 1 DOWNTO 0);
			cin : IN std_logic;
			----------------------------------------
			HI, LO : OUT std_logic_vector(n - 1 DOWNTO 0);
			cout : OUT std_logic
		);
	END COMPONENT;
	-----------------------------------------------------------------
	COMPONENT MaxMin IS
		GENERIC (
			n : POSITIVE := 8 -- A,B length
		);
		PORT (
			A, B : IN std_logic_vector(n - 1 DOWNTO 0);
			maxFlag : IN std_logic;
			----------------------------------------
			result : OUT std_logic_vector(n - 1 DOWNTO 0)
		);
	END COMPONENT;
	-----------------------------------------------------------------
	COMPONENT outputSelector IS
		GENERIC (
			n : POSITIVE := 8; -- A,B length
			m : POSITIVE := 5; -- OPC length
			k : POSITIVE := 2 -- STATUS length
		);
		PORT (
			OPC : IN std_logic_vector(m - 1 DOWNTO 0);
			arith_logic_LO, arith_logic_HI : IN std_logic_vector(n - 1 DOWNTO 0);
			cout_arith_logic : IN std_logic;
			shifter_LO, shifter_HI : IN std_logic_vector(n - 1 DOWNTO 0);
			cout_shifter : IN std_logic;
			----------------------------------------
			HI, LO : BUFFER std_logic_vector(n - 1 DOWNTO 0);
			STATUS : OUT std_logic_vector(k - 1 DOWNTO 0)
		);
	END COMPONENT;
	-----------------------------------------------------------------	
END aux_package;