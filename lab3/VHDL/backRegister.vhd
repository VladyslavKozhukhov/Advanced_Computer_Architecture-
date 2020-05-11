LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity backRegister is
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
end backRegister;
------------- backRegister Architecture code --------------
architecture arc_backRegister of backRegister is

begin
	
	syncProcessBACK : process (rst,ena,clk,OPC_in,A_in,B_in,cin_in)
	begin
		if(rst='1') then
			OPC_out <= (others => '0');
			A_out <= (others => '0');
			B_out <= (others => '0');
			cin_out <= '0';
		elsif (rising_edge(clk)) then	
			IF(ena = '1') THEN
				OPC_out <= OPC_in;
				A_out <= A_in;
				B_out <= B_in;
				cin_out <= cin_in;
			end IF;
		end IF;
	END PROCESS syncProcessBACK;	
	
end arc_backRegister;







