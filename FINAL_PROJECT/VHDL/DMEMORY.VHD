LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

ENTITY dmemory IS
	PORT(	read_data 			: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        	address 			: IN 	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
        	write_data 			: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
	   		MemRead, Memwrite 	: IN 	STD_LOGIC;
			SpecialAddr         : IN 	STD_LOGIC;
			SpecialData         : IN    std_logic_vector(7 DOWNTO 0);
			IsSpecialAddr		: IN    std_logic;
			Seven_Seg			: OUT 	STD_LOGIC_VECTOR( 15 downto 0 );
			PORT_LEDG           : OUT std_logic_vector(7 DOWNTO 0);-- for IO
			PORT_LEDR       	: OUT std_logic_vector(7 DOWNTO 0);-- for IO
			addrOfIO    		: IN STD_LOGIC_VECTOR(11 downto 0);--addr of IO

            clock,reset			: IN 	STD_LOGIC );
END dmemory;

ARCHITECTURE behavior OF dmemory IS
SIGNAL write_clock 			: STD_LOGIC;
SIGNAL write_mem_en 		: STD_LOGIC;
SIGNAL read_data_mem		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL read_data_tmp		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL read_extend_tmp		: STD_LOGIC_VECTOR( 31 DOWNTO 0 ):= (others => '0');
SIGNAL write_data_tmp		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL write_data_mem		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL SEVEN_SEG_MAP	    : STD_LOGIC_VECTOR ( 15 downto 0 );
SIGNAL mem_read_data		: STD_LOGIC_VECTOR ( 31 downto 0 );

COMPONENT Ndff_en 
	generic ( N: integer := 8);
	port (	
			d: 	  		in std_logic_vector(N-1 downto 0);
			clk:		in std_logic;
			en:			in std_logic;
			rst:		in std_logic;
			q: 			out std_logic_vector(N-1 downto 0));
end COMPONENT;

BEGIN
data_memory : altsyncram
	GENERIC MAP  (
		operation_mode => "SINGLE_PORT",
		width_a => 32,
		widthad_a => 10,
		lpm_type => "altsyncram",
		outdata_reg_a => "UNREGISTERED",
		init_file => "dmemory.hex",
		intended_device_family => "Cyclone"
	)
	PORT MAP (
		wren_a => write_mem_en,
		clock0 => write_clock,
		address_a => address,
		data_a => write_data,
		q_a => mem_read_data);
		
	Seven_Seg <= SEVEN_SEG_MAP;
	
		


SSG_REG: Ndff_en
			generic map ( 16 )
			port map(	d 	 => write_data( 15 downto 0 ),
						clk	 => write_clock,
						en	 => IsSpecialAddr,
						rst  => reset,
						q 	 => SEVEN_SEG_MAP );

		write_mem_en <=Memwrite when IsSpecialAddr = '0' else '0';
		read_data<=mem_read_data when IsSpecialAddr ='0' else  X"00000000" ;
--		when MemRead='1'and IsSpecialAddr = '0' else
	--		X"0000"&SEVEN_SEG_MAP when MemRead='1' and IsSpecialAddr='1'else
		--	X"00000000";
	--Seven_Seg<= read_data_tmp(15 downto 0) when IsSpecialAddr ='1' and MemRead='1';
	--read_data<=read_data_tmp;
	--	PROCESS( IsSpecialAddr,address,MemRead,Memwrite,SpecialAddr,SpecialData)
	--	BEGIN
	---	if(IsSpecialAddr ='1' and Memwrite='1') then
	--Seven_Seg<=write_data(15 downto 0);
	--end if;
	--end process;
	-- Load memory address register with write clock

		write_clock <= NOT clock;
END behavior;
