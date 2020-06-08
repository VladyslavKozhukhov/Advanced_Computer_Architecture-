 LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
ENTITY MuxInput IS


	PORT (
		 cin_user: in STD_LOGIC;
		 cin_system: std_logic_vector(1 DOWNTO 0);

		cin_out : OUT std_logic
	);
END MuxInput;
------------- ReadLogic Architecture code --------------
ARCHITECTURE arc_MuxInput OF MuxInput IS
	

BEGIN

process (cin_system,cin_user)
begin
	if( cin_user'event) then
		cin_out<=cin_user;
	else
		if(cin_system ="10" or cin_system ="11") then
		cin_out<='1';
		else
		cin_out<='0';
		end if;
	end if;
end process;

END arc_MuxInput;