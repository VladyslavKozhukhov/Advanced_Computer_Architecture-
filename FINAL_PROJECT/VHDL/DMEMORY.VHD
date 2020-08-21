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
			 seg_out : out std_logic_vector(6 downto 0);
			 seg_out1 : out std_logic_vector(6 downto 0);
            clock,reset			: IN 	STD_LOGIC );
END dmemory;

ARCHITECTURE behavior OF dmemory IS
SIGNAL write_clock 			: STD_LOGIC;
SIGNAL write_mem_en 		: STD_LOGIC;
SIGNAL write_seg_en  		: STD_LOGIC;
SIGNAL read_data_mem		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL read_data_tmp		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL read_extend_tmp		: STD_LOGIC_VECTOR( 31 DOWNTO 0 ):= (others => '0');
SIGNAL write_data_tmp		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL write_data_mem		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL SEVEN_SEG_MAP	    : STD_LOGIC_VECTOR ( 15 downto 0 );
SIGNAL SEVEN_SEG_MAPP	    : STD_LOGIC_VECTOR ( 15 downto 0 );
SIGNAL mem_read_data		: STD_LOGIC_VECTOR ( 31 downto 0 );

COMPONENT led_clock2 
  port ( clk : in STD_LOGIC;
			 reset_n : in STD_LOGIC;
				IsSpecialAddr		: IN    std_logic;

			data :in std_logic_vector(3 downto 0);
			 seg_out : OUT std_logic_vector(6 downto 0);
			 seg_out1 : OUT std_logic_vector(6 downto 0)
			);
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
		



--sve: led_clock2 port MAP( clock,not reset,IsSpecialAddr,write_data(3 downto 0),seg_out,seg_out1);

	--Seven_Seg<=SEVEN_SEG_MAP;
--SEVEN_SEG_MAP <=  write_data( 15 downto 0 ) when IsSpecialAddr = '1' and Memwrite  ='1' else SEVEN_SEG_MAP ;
		--write_seg_en<='1' when IsSpecialAddr = '1' and Memwrite ='1' else '0';
	
--SSG_REG: Ndff_en
	--		generic map ( 16 )
	--		port map(	d 	 => write_data( 15 downto 0 ),
		--				clk	 => write_clock,
			--			en	 => write_seg_en,
				--		rst  => reset,
					--	q 	 => SEVEN_SEG_MAP );

		write_mem_en <=Memwrite when IsSpecialAddr = '0' else '0';
		read_data<=mem_read_data when IsSpecialAddr ='0' else 
					X"000000"&SpecialData when IsSpecialAddr = '1' and MemRead ='1' else 
					X"00000000";


		write_clock <= NOT clock;
END behavior;
