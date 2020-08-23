LIBRARY IEEE; -- the MIPS computer)
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE ieee.numeric_std.ALL;

ENTITY Idecode IS
	PORT (
		read_data_1   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		read_data_2   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		wrReg_out     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		Instruction   : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		read_data     : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		ALU_result    : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		RegWrite      : IN STD_LOGIC;
		MemtoReg      : IN STD_LOGIC;
		RegDst        : IN STD_LOGIC;
		Memwrite      : IN STD_LOGIC;
		Memread       : IN STD_LOGIC;
		Sign_extend   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		IsSpecialAddr : OUT std_logic;
		first         : OUT STD_LOGIC;
		second        : OUT STD_LOGIC;
		third         : OUT STD_LOGIC;
		four          : OUT STD_LOGIC;
		is_ledr       : OUT STD_LOGIC;
		is_ledg       : OUT STD_LOGIC;
		addrOfIO      : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);--addr of IO
		clock, reset  : IN STD_LOGIC
	);
END Idecode;
ARCHITECTURE behavior OF Idecode IS
	TYPE register_file IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL register_array              : register_file;
	SIGNAL write_register_address      : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL write_data                  : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL switch_input                           : STD_LOGIC;
	SIGNAL Ashifted                    : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL read_register_1_address     : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL read_register_2_address     : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL write_register_address_1    : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL write_register_address_0    : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL Instruction_immediate_value : STD_LOGIC_VECTOR(15 DOWNTO 0);


SIGNAL first_t        :  STD_LOGIC;
SIGNAL 		second_t       :  STD_LOGIC;
	SIGNAL	third_t      :  STD_LOGIC;
	SIGNAL	third_tt      :  STD_LOGIC;
	SIGNAL	four_t          :  STD_LOGIC;
	SIGNAL	is_ledr_t       :  STD_LOGIC;
	SIGNAL	is_ledg_t       :  STD_LOGIC;
BEGIN
	read_register_1_address     <= Instruction(25 DOWNTO 21);
	read_register_2_address     <= Instruction(20 DOWNTO 16);
	write_register_address_1    <= Instruction(15 DOWNTO 11);
	write_register_address_0    <= Instruction(20 DOWNTO 16);
	Instruction_immediate_value <= Instruction(15 DOWNTO 0);
	read_data_1                 <= register_array(CONV_INTEGER(read_register_1_address));
	-- Read Register 2 Operation
	read_data_2 <= register_array(CONV_INTEGER(read_register_2_address));
	-- Mux for Register Write Address
	write_register_address <= write_register_address_1
		WHEN RegDst = '1' ELSE
		write_register_address_0;
		-- Mux to bypass data memory for Rformat instructions
		write_data <= ALU_result(31 DOWNTO 0)
			WHEN (MemtoReg = '0') ELSE
			read_data;
			-- Sign Extend 16-bits to 32-bits
			Sign_extend <= X"0000" & Instruction_immediate_value
				WHEN Instruction_immediate_value(15) = '0'
				ELSE X"FFFF" & Instruction_immediate_value;
				--register _array(CONV_INTEGER(read_register_1_address ) ) When Instruction(31 DOWNTO 26 ) ="100011" and Instruction_immediate_value=x"0000" else
				third_tt <= '1' WHEN Instruction(11 DOWNTO 0) = "100000000000" AND Memwrite = '1' ELSE --PORT_LEDG[7-0] 0x800
				                 '1' WHEN Instruction(11 DOWNTO 0) = "100000000100"AND Memwrite = '1' ELSE --PORT_LEDR[7-0] 0x804
				                '1' WHEN Instruction(11 DOWNTO 0) = "100000001000"AND Memwrite = '1'  ELSE --PORT_HEX0[7-0] 0x808
				                '1' WHEN Instruction(11 DOWNTO 0) = "100000001100" AND Memwrite = '1' ELSE--PORT_HEX1[7-0] 0x80c
								
				                 '1' WHEN Instruction(11 DOWNTO 0) = "100000010000" AND Memwrite = '1' ELSE --PORT_HEX2[7-0] 0x810
'0';
				                 --'1' WHEN Instruction(11 DOWNTO 0) = "100000010100" AND Memwrite = '1' ELSE --PORT_HEX3[7-0] 0x814
				               
				addrOfIO  <= Instruction(11 DOWNTO 0);
				wrReg_out <= register_array(CONV_INTEGER(write_register_address));
				first_t     <= '1' WHEN Instruction(11 DOWNTO 0) = "100000001000" AND Memwrite = '1' ELSE '0'; --PORT_HEX0[7-0] 0x808
				second_t    <= '1' WHEN Instruction(11 DOWNTO 0) = "100000001100" AND Memwrite = '1'  ELSE '0'; --PORT_HEX1[7-0] 0x80c
				third_t     <= '1' WHEN Instruction(11 DOWNTO 0) = "100000010000" AND Memwrite = '1' ELSE '0';--PORT_HEX2[7-0] 0x810
				four_t      <= '1' WHEN Instruction(11 DOWNTO 0) = "100000010100" AND Memwrite = '1' ELSE '0';--PORT_HEX3[7-0] 0x814
				is_ledg_t   <= '1' WHEN Instruction(11 DOWNTO 0) = "100000000000" AND Memwrite = '1' ELSE '0';--PORT_ledg 0x800 
				is_ledr_t   <= '1' WHEN Instruction(11 DOWNTO 0) = "100000000100" AND Memwrite = '1'ELSE '0';--PORT_ledr 0x804
				switch_input<= '1' WHEN Instruction(11 DOWNTO 0) = "100000011000" AND  Memread = '1'ELSE  '0';--PORT_SW[7-0] 0x818     

		IsSpecialAddr<= third_tt or  is_ledr_t or third_t or four_t   or switch_input;
	first<=first_t;
	second<=second_t;
	third<=third_t;
	four<=four_t;
	is_ledg<=is_ledg_t;
	is_ledr<=is_ledr_t;
PROCESS

	BEGIN
		WAIT UNTIL clock'EVENT AND clock = '1';
		IF reset = '1' THEN
			-- Initial register values on reset are register = reg#
			-- use loop to automatically generate reset logic
			-- for all registers
			FOR i IN 0 TO 31 LOOP
				register_array(i) <= CONV_STD_LOGIC_VECTOR(i, 32);
			END LOOP;
			-- Write back to register - don't write to register 0
		ELSIF RegWrite = '1' AND write_register_address /= 0 THEN
			register_array(CONV_INTEGER(write_register_address)) <= write_data;
		END IF;
	END PROCESS;
END behavior;