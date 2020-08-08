LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

ENTITY dmemory IS
	PORT(	read_data 			: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        	address 			: IN 	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
        	write_data 			: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
	   		MemRead, Memwrite 	: IN 	STD_LOGIC;
			SpecialAddr         : IN 	STD_LOGIC;
			SpecialData         : IN    std_logic_vector(7 DOWNTO 0);
			IsSpecialAddr		: IN    std_logic;
			addrOfIO    :IN STD_LOGIC_VECTOR(11 downto 0);--addr of IO
            clock,reset			: IN 	STD_LOGIC );
END dmemory;

ARCHITECTURE behavior OF dmemory IS
SIGNAL write_clock : STD_LOGIC;
SIGNAL read_data_mem		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL read_data_tmp		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL read_extend_tmp		: STD_LOGIC_VECTOR( 31 DOWNTO 0 ):= (others => '0');

BEGIN
data_memory : altsyncram
	GENERIC MAP  (
		operation_mode => "SINGLE_PORT",
		width_a => 32,
		widthad_a => 8,
		lpm_type => "altsyncram",
		outdata_reg_a => "UNREGISTERED",
		init_file => "dmemory.hex",
		intended_device_family => "Cyclone"
	)
	PORT MAP (
		wren_a => memwrite,
		clock0 => write_clock,
		address_a => address,
		data_a => write_data,
		q_a => read_data_mem);
------------------------


PROCESS( IsSpecialAddr,MemRead,SpecialData)
		BEGIN
		if(IsSpecialAddr = '1' and MemRead = '1' ) then
			read_extend_tmp(7 DOWNTO 0)<= SpecialData;
			read_data_tmp<=read_extend_tmp;
		elsif ( IsSpecialAddr = '0' and MemRead = '1') then
			read_data_tmp<=read_data_mem;
		end if;
end process;
-- Load memory address register with write clock
		read_data<=read_data_tmp;
		write_clock <= NOT clock;
END behavior;