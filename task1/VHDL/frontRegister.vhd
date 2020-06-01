LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY frontRegister IS
	GENERIC (
		n : POSITIVE := 8; -- A,B length
				m : POSITIVE := 5; -- OPC length

		k : POSITIVE := 2 -- STATUS length
	);
	PORT (
		rst, ena, clk : IN std_logic;
		HI_in, LO_in : IN std_logic_vector(n - 1 DOWNTO 0);
		Status_in : IN std_logic_vector(k - 1 DOWNTO 0);
		OPC : IN std_logic_vector(m - 1 DOWNTO 0);

		----------------------------------------
		HI_out, LO_out : OUT std_logic_vector(n - 1 DOWNTO 0);
		Status_out : OUT std_logic_vector(k - 1 DOWNTO 0)
	);
END frontRegister;
------------- frontRegister Architecture code --------------
ARCHITECTURE arc_frontRegister OF frontRegister IS
	CONSTANT OPC_MAC : INTEGER := 5;
	SIGNAL OPC_INTEGER : INTEGER;
	SIGNAL HI_inS, LO_inS :std_logic_vector(n - 1 DOWNTO 0);


BEGIN
OPC_INTEGER <= to_integer(unsigned(OPC));
	syncProcessFRONT : PROCESS (rst,clk)
	BEGIN
		IF (rst = '1') THEN
			HI_out <= (OTHERS => '0');
			LO_out <= (OTHERS => '0');
			Status_out <= (OTHERS => '0');
		ELSIF (rising_edge(clk)) THEN
			IF (ena = '1' and (HI_in(0)='0' or HI_in(0)='1' ) )THEN
				HI_out <= HI_in;
				LO_out <= LO_in;
				Status_out <= Status_in;
				HI_inS<=HI_in;
				LO_inS<=LO_in;
			elsif(ena = '1'  and HI_in(0)='Z') then
				HI_out <= HI_ins;
				LO_out <= LO_inS;
			END IF;
		END IF;
	END PROCESS syncProcessFRONT;

END arc_frontRegister;