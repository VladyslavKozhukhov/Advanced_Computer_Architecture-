						--  Dmemory module (implements the data
						--  memory for the MIPS computer)
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
			SEG0_OUT, SEG1_OUT: OUT std_logic_vector(6 DOWNTO 0); -- for IO
			SEG2_OUT, SEG3_OUT: OUT std_logic_vector(6 DOWNTO 0); -- for IO
			PORT_LEDG: OUT std_logic_vector(7 DOWNTO 0);-- for IO
			PORT_LEDR: OUT std_logic_vector(7 DOWNTO 0);-- for IO
			addrOfIO    :IN STD_LOGIC_VECTOR(11 downto 0);--addr of IO

            clock,reset			: IN 	STD_LOGIC );
END dmemory;

ARCHITECTURE behavior OF dmemory IS
SIGNAL write_clock : STD_LOGIC;
SIGNAL read_data_mem		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL read_data_tmp		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL read_extend_tmp		: STD_LOGIC_VECTOR( 31 DOWNTO 0 ):= (others => '0');
SIGNAL write_data_tmp		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL write_data_mem		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );


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
PROCESS( IsSpecialAddr,address,MemRead,Memwrite,SpecialAddr,SpecialData)
		BEGIN
		if(IsSpecialAddr = '1' and MemRead = '1' ) then
			read_extend_tmp(7 DOWNTO 0)<= SpecialData;
			read_data_tmp<=read_extend_tmp;
		elsif ( IsSpecialAddr = '0' and MemRead = '1') then
			read_data_tmp<=read_data_mem;
		elsif (IsSpecialAddr ='1' and Memwrite='1') then
			if(addrOfIO = "100000000000")then --PORT_LEDG[7-0] 0x800
				PORT_LEDG<=write_data(7 DOWNTO 0);
			elsif(addrOfIO = "100000000100") then --PORT_LEDR[7-0] 0x804
				PORT_LEDR<=write_data(7 DOWNTO 0);
			elsif(addrOfIO = "100000001000") then --PORT_hex0[7-0] 0x808
				if(write_data(7 DOWNTO 0)="00000101")then
     			SEG0_OUT<="1111001";
				else
				SEG0_OUT<="0001000";
				end if;

			elsif(addrOfIO = "100000001100") then --PORT_hex1[7-0] 0x80c
			if(write_data(7 DOWNTO 0)="00000101")then
				SEG1_OUT<="0100100";
								else
				SEG1_OUT<="0000011";
				end if;
			elsif(addrOfIO = "100000010000") then--PORT_hex2[7-0] 0x810
			if(write_data(7 DOWNTO 0)="00000101")then
				SEG2_OUT<="0110000";
								else
				SEG2_OUT<="1000110";
				end if;
			elsif(addrOfIO = "100000010100") then --PORT_hex3[7-0] 0x814
			if(write_data(7 DOWNTO 0)="00000101")then
				SEG3_OUT<="0011001";
								else
				SEG3_OUT<="0100001";
				end if;
			end if;
		end if;
END PROCESS;
-- Load memory address register with write clock
		read_data<=read_data_tmp;
		write_clock <= NOT clock;
END behavior;

