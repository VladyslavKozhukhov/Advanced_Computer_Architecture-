LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity outputSelector is
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
end outputSelector;
------------- outputSelector Architecture code --------------
architecture arc_outputSelector of outputSelector is

SIGNAL HI,LO : std_logic_vector(n-1 downto 0);
SIGNAL carry : std_logic_vector(k-1 downto 0);

begin
	
	carry<= cout_arith_logic WHEN (OPC = "00001") ELSE
			cout_arith_logic WHEN (OPC = "00010") ELSE
			cout_arith_logic WHEN (OPC = "00011") ELSE
			cout_arith_logic WHEN (OPC = "00100") ELSE
			cout_arith_logic WHEN (OPC = "00101") ELSE
			cout_arith_logic WHEN (OPC = "00110") ELSE
			cout_arith_logic WHEN (OPC = "00111") ELSE
			cout_arith_logic WHEN (OPC = "01000") ELSE
			cout_arith_logic WHEN (OPC = "01001") ELSE
			cout_arith_logic WHEN (OPC = "01010") ELSE
			cout_arith_logic WHEN (OPC = "01011") ELSE
			cout_shifter WHEN (OPC = "01100") ELSE
			cout_shifter WHEN (OPC = "01101") ELSE
			cout_shifter WHEN (OPC = "01110") ELSE
			cout_shifter WHEN (OPC = "01111") ELSE
			'0';
			
	HI<=arith_logic_HI WHEN (OPC = "00001") ELSE
		arith_logic_HI WHEN (OPC = "00010") ELSE
		arith_logic_HI WHEN (OPC = "00011") ELSE
		arith_logic_HI WHEN (OPC = "00100") ELSE
		arith_logic_HI WHEN (OPC = "00101") ELSE
		arith_logic_HI WHEN (OPC = "00110") ELSE
		arith_logic_HI WHEN (OPC = "00111") ELSE
		arith_logic_HI WHEN (OPC = "01000") ELSE
		arith_logic_HI WHEN (OPC = "01001") ELSE
		arith_logic_HI WHEN (OPC = "01010") ELSE
		arith_logic_HI WHEN (OPC = "01011") ELSE
		shifter_HI WHEN (OPC = "01100") ELSE
		shifter_HI WHEN (OPC = "01101") ELSE
		shifter_HI WHEN (OPC = "01110") ELSE
		shifter_HI WHEN (OPC = "01111") ELSE
		others => '0';

	LO<=arith_logic_LO WHEN (OPC = "00001") ELSE
		arith_logic_LO WHEN (OPC = "00010") ELSE
		arith_logic_LO WHEN (OPC = "00011") ELSE
		arith_logic_LO WHEN (OPC = "00100") ELSE
		arith_logic_LO WHEN (OPC = "00101") ELSE
		arith_logic_LO WHEN (OPC = "00110") ELSE
		arith_logic_LO WHEN (OPC = "00111") ELSE
		arith_logic_LO WHEN (OPC = "01000") ELSE
		arith_logic_LO WHEN (OPC = "01001") ELSE
		arith_logic_LO WHEN (OPC = "01010") ELSE
		arith_logic_LO WHEN (OPC = "01011") ELSE
		shifter_LO WHEN (OPC = "01100") ELSE
		shifter_LO WHEN (OPC = "01101") ELSE
		shifter_LO WHEN (OPC = "01110") ELSE
		shifter_LO WHEN (OPC = "01111") ELSE
		others => '0';
			
	
	STATUS<="10" WHEN ((HI = (others => '0')) and (LO = (others => '0'))) ELSE --RES(HI,LO) = 0...0
			"01" WHEN (carry = '1') ELSE 									   --RESULT PRODUCES CARRY
			"00";

end arc_outputSelector;







