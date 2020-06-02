LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
ENTITY MuxInput IS
	PORT (
		cin_user : IN STD_LOGIC;
		cin_system : std_logic_vector(1 DOWNTO 0);

		cin_out : OUT std_logic
	);
END MuxInput;
------------- ReadLogic Architecture code --------------
ARCHITECTURE arc_MuxInput OF MuxInput IS
BEGIN

	PROCESS (cin_system, cin_user)
	BEGIN
		IF (cin_user'event) THEN
			cin_out <= cin_user;
		ELSE
			IF (cin_system = "10" OR cin_system = "11") THEN
				cin_out <= '1';
			ELSE
				cin_out <= '0';
			END IF;
		END IF;
	END PROCESS;

END arc_MuxInput;