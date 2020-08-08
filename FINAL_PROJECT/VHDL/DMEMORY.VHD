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
	CONSTANT digit_0 : std_logic_vector(6 DOWNTO 0) := "1000000";
	CONSTANT digit_1 : std_logic_vector(6 DOWNTO 0) := "1111001";
	CONSTANT digit_2 : std_logic_vector(6 DOWNTO 0) := "0100100";
	CONSTANT digit_3 : std_logic_vector(6 DOWNTO 0) := "0110000";
	CONSTANT digit_4 : std_logic_vector(6 DOWNTO 0) := "0011001";
	CONSTANT digit_5 : std_logic_vector(6 DOWNTO 0) := "0010010";
	CONSTANT digit_6 : std_logic_vector(6 DOWNTO 0) := "0000010";
	CONSTANT digit_7 : std_logic_vector(6 DOWNTO 0) := "1111000";
	CONSTANT digit_8 : std_logic_vector(6 DOWNTO 0) := "0000000";
	CONSTANT digit_9 : std_logic_vector(6 DOWNTO 0) := "0010000";
	CONSTANT letter_A : std_logic_vector(6 DOWNTO 0) := "0001000";
	CONSTANT letter_b : std_logic_vector(6 DOWNTO 0) := "0000011";
	CONSTANT letter_c : std_logic_vector(6 DOWNTO 0) := "1000110";
	CONSTANT letter_d : std_logic_vector(6 DOWNTO 0) := "0100001";
	CONSTANT letter_E : std_logic_vector(6 DOWNTO 0) := "0000110";
	CONSTANT letter_F : std_logic_vector(6 DOWNTO 0) := "0001110";
	CONSTANT letter_U : std_logic_vector(6 DOWNTO 0) := "1000001";

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
PROCESS( IsSpecialAddr,address,MemRead,Memwrite,SpecialAddr,SpecialData,read_data_mem)
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
				 SEG0_OUT<=digit_5;
				 SEG1_OUT<=digit_5;
				 SEG2_OUT<=digit_5;
				 SEG3_OUT<=digit_5;

			elsif(addrOfIO = "100000001100") then --PORT_hex1[7-0] 0x80c
					 SEG0_OUT<=digit_1;
				 SEG1_OUT<=digit_1;
				 SEG2_OUT<=digit_1;
				 SEG3_OUT<=digit_1;
			elsif(addrOfIO = "100000010000") then--PORT_hex2[7-0] 0x810
					 SEG0_OUT<=digit_6;
				 SEG1_OUT<=digit_6;
				 SEG2_OUT<=digit_6;
				 SEG3_OUT<=digit_6;
			elsif(addrOfIO = "100000010100") then --PORT_hex3[7-0] 0x814
						 SEG0_OUT<=digit_8;
				 SEG1_OUT<=digit_8;
				 SEG2_OUT<=digit_8;
				 SEG3_OUT<=digit_8;
				else 
				 SEG0_OUT<=digit_9;
				 SEG1_OUT<=digit_9;
				 SEG2_OUT<=digit_9;
				 SEG3_OUT<=digit_9;
			end if;
		end if;
END PROCESS;
-- Load memory address register with write clock
		read_data<=read_data_tmp;
		write_clock <= NOT clock;
END behavior;

