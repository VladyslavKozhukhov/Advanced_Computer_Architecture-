library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity IO_Module is 
port (
		clock 		: IN 	STD_LOGIC;
		Memwrite 	: IN 	STD_LOGIC;
		addrOfIO    : IN 	STD_LOGIC_VECTOR(11 downto 0);--addr of IO
		IsspecialAddr  : IN    STD_LOGIC;
		write_data 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
		seven_seg0 	: out std_logic_vector(6 downto 0);
		seven_seg1 	: out std_logic_vector(6 downto 0);
		seven_seg2 	: out std_logic_vector(6 downto 0);
		seven_seg3 	: out std_logic_vector(6 downto 0);
		port_ledg   : OUT std_logic_vector(7 DOWNTO 0);-- for IO
		port_ledr   : OUT std_logic_vector(7 DOWNTO 0)-- for IO
	);
end IO_Register;

architecture IO_Register_arch of IO_Register is


component DFF_for_reg 
	port (
	data : in std_logic := '0';	
	clk : in std_logic;	
	en : in std_logic := '0';	
	q : out std_logic := '0'
	);
end component;

component seven_seg_disp 
port (
	data : in std_logic_vector(3 downto 0);
	clock : in std_logic;	
	data_out : out std_logic_vector(6 downto 0)
	);
end component;
---------------------------------------------------------------------------
signal en_for_dff : std_logic;
signal write_clock : std_logic;
signal dff_out : std_logic_vector(15 downto 0);
signal input_data : std_logic_vector(15 downto 0);

begin    
	
	seven_seg_disp_0: seven_seg_disp
	port map(
	data => dff_out(3 downto 0),
	clock => clock,
	data_out => seven_seg0);
	
	seven_seg_disp_1: seven_seg_disp
	port map(
	data => dff_out(7 downto 4),
	clock => clock,
	data_out => seven_seg1);
	
	seven_seg_disp_2: seven_seg_disp
	port map(
	data => dff_out(11 downto 8),
	clock => clock,
	data_out => seven_seg2);
	
	seven_seg_disp_3: seven_seg_disp
	port map(
	data => dff_out(15 downto 12),
	clock => clock,
	data_out => seven_seg3);
	

	--register for HI
	Array_Of_DFF: for i in 0 to 15 generate
		dffi: DFF_for_reg port map(data => input_data(i),clk=>write_clock, en=>en_for_dff, q=>dff_out(i));
	end generate Array_Of_DFF;

	en_for_dff <= '1' WHEN Memwrite ='1' and IsSpecialAddr ='1' ELSE '0';
	input_data <= write_data(15 downto 0) WHEN  sevseg_sel='0' ELSE write_data(31 downto 16);
	write_clock <= NOT clock;
end IO_Register_arch;





PROCESS( IsSpecialAddr,address,MemRead,Memwrite,SpecialAddr,SpecialData,read_data_mem)
		BEGIN
		if(IsSpecialAddr = '1' and MemRead = '1' ) then
			read_extend_tmp(7 DOWNTO 0)<= SpecialData;
			read_data_tmp<=read_extend_tmp;
			PORT_LEDG<="00111110";
		elsif ( IsSpecialAddr = '0' and MemRead = '1') then
			read_data_tmp<=read_data_mem;
					PORT_LEDG<="00110010";

		elsif (IsSpecialAddr ='1' and Memwrite='1' ) then
	--		if(addrOfIO = "100000000000")then --PORT_LEDG[7-0] 0x800
	--			PORT_LEDG<=write_data(7 DOWNTO 0);
	--		elsif(addrOfIO = "100000000100") then --PORT_LEDR[7-0] 0x804
	--			PORT_LEDR<=write_data(7 DOWNTO 0);
	--		elsif(addrOfIO = "100000001000") then --PORT_hex0[7-0] 0x808
	PORT_LEDG<="00110000";
				 SEG0_OUT<=digit_5;
				 SEG1_OUT<=digit_5;
				 SEG2_OUT<=digit_5;
				 SEG3_OUT<=digit_5;

	--		elsif(addrOfIO = "100000001100") then --PORT_hex1[7-0] 0x80c
		--			 SEG0_OUT<=digit_1;
		--		 SEG1_OUT<=digit_1;
		--		 SEG2_OUT<=digit_1;
		---		 SEG3_OUT<=digit_1;
		--	elsif(addrOfIO = "100000010000") then--PORT_hex2[7-0] 0x810
		--			 SEG0_OUT<=digit_6;
		--		 SEG1_OUT<=digit_6;
		----		 SEG2_OUT<=digit_6;
		--		 SEG3_OUT<=digit_6;
		--	elsif(addrOfIO = "100000010100") then --PORT_hex3[7-0] 0x814
			--			 SEG0_OUT<=digit_8;
		--		 SEG1_OUT<=digit_8;
		--		 SEG2_OUT<=digit_8;
		--		 SEG3_OUT<=digit_8;
		--		else 
		--		 SEG0_OUT<=digit_9;
		--		 SEG1_OUT<=digit_9;
		--		 SEG2_OUT<=digit_9;
		--		 SEG3_OUT<=digit_9;
		--	end if;
		elsif (IsSpecialAddr ='0' and Memwrite='1' ) then
			 SEG0_OUT<=digit_9;
			 SEG1_OUT<=digit_8;
				 SEG2_OUT<=digit_8;
				 SEG3_OUT<=digit_8;
		
		end if;
END PROCESS;

	
			