LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity top is
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
end top;
------------- complete the top Architecture code --------------
architecture arc_sys of top is

SIGNAL OPC_SIG : std_logic_vector(m-1 downto 0); --FOR THE BACK REGISTER
SIGNAL A_SIG,B_SIG : std_logic_vector(n-1 downto 0);
SIGNAL cin_SIG : std_logic;

SIGNAL HI,LO : std_logic_vector(n-1 downto 0); --FOR THE ALU OUTPUT
SIGNAL alu_status : std_logic_vector(k-1 downto 0);

SIGNAL HI_SIG,LO_SIG : std_logic_vector(n-1 downto 0); --FOR THE FRONT REGISTER

begin
	
	backREG : BACKregister generic map(n,m) port map(rst,ena,clk,OPC,A,B,cin,OPC_SIG,A_SIG,B_SIG,cin_SIG);
	aluEntity : ALU generic map(n,m,k) port map(OPC_SIG,A_SIG,B_SIG,cin_SIG,HI,LO,alu_status);
	frontREG : FRONTregister generic map(n,k) port map(rst,ena,clk,HI,LO,alu_status,HI_SIG,LO_SIG,STATUS);
	
	RES(2*n-1 downto n) <= HI_SIG;
	RES(n-1 downto 0) <= LO_SIG;
	--TO DO:
	--add/sub
	--acc register + global clk
	--multiply
	-- **FIX** shift left and right
	
end arc_sys;







