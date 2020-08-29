LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;
ENTITY dmemory IS
	PORT (
		read_data         : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		address           : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		write_data        : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		MemRead, Memwrite : IN STD_LOGIC;
		SpecialAddr       : IN STD_LOGIC;
		SpecialData       : IN std_logic_vector(7 DOWNTO 0);
		IsSpecialAddr     : IN std_logic;
		Seven_Seg         : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		addrOfIO          : IN STD_LOGIC_VECTOR(11 DOWNTO 0);--addr of IO
		PORT_LEDG           : OUT std_logic_vector(7 DOWNTO 0);
		PORT_LEDR          : OUT std_logic_vector(7 DOWNTO 0);
		clock, reset      : IN STD_LOGIC
	);
END dmemory;
ARCHITECTURE behavior OF dmemory IS
	SIGNAL write_clock     : STD_LOGIC;
	SIGNAL write_mem_en    : STD_LOGIC;
	SIGNAL write_seg_en    : STD_LOGIC;
	SIGNAL read_data_mem   : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL read_data_tmp   : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL read_extend_tmp : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL write_data_tmp  : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL write_data_mem  : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL SEVEN_SEG_MAP   : STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL SEVEN_SEG_MAPP  : STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL mem_read_data   : STD_LOGIC_VECTOR (31 DOWNTO 0);
BEGIN
	data_memory : altsyncram
		GENERIC MAP(
		operation_mode         => "SINGLE_PORT",
		width_a                => 32,
		widthad_a              => 10,
		lpm_type               => "altsyncram",
		outdata_reg_a          => "UNREGISTERED",
		init_file              => "dmemory.hex",
		intended_device_family => "Cyclone"
		)
		PORT MAP(
			wren_a    => write_mem_en,
			clock0    => write_clock,
			address_a => address,
			data_a    => write_data,
			q_a       => mem_read_data
		);

			write_mem_en <= Memwrite WHEN IsSpecialAddr = '0' ELSE '0';
			read_data    <= mem_read_data WHEN IsSpecialAddr = '0' ELSE
			             X"000000" & SpecialData WHEN IsSpecialAddr = '1' AND MemRead = '1' ELSE
			             X"00000000";
			write_clock <= NOT clock;





END behavior;