LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
---finish srl
ENTITY MIPS IS
	PORT (
		reset, clock : IN STD_LOGIC;
		-----------------------------------------------------------
		IsTEST : OUT std_logic;
		sw_8_run : IN std_logic; -- for IO
		sw_0_7 : IN std_logic_vector(7 DOWNTO 0); --for IO
		HI_OUT : OUT std_logic_vector(7 DOWNTO 0); -- for IO
		LO_OUT : OUT std_logic_vector(7 DOWNTO 0); -- for IO
		addr_out : OUT std_logic_vector(9 DOWNTO 0); -- for IO
		SEG0_OUT, SEG1_OUT : OUT std_logic_vector(6 DOWNTO 0); -- for IO
		SEG2_OUT, SEG3_OUT : OUT std_logic_vector(6 DOWNTO 0); -- for IO
		PORT_LEDG : OUT std_logic_vector(7 DOWNTO 0);-- for IO
		PORT_LEDR : OUT std_logic_vector(7 DOWNTO 0);-- for IO
		PC_plus_4_oout : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		isSpecial_out : OUT STD_LOGIC;
		J_out : OUT STD_LOGIC;
		Seven_Seg_out_top : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		-----------------------------------------------------------
		-- Output important signals to pins for easy display in Simulator
		pc_oout : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		ALU_result_out, read_data_1_out, read_data_2_out, write_data_out, Instruction_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		Branch_out, Zero_out, Memwrite_out, Regwrite_out : OUT STD_LOGIC
	);
END MIPS;
ARCHITECTURE structure OF MIPS IS
	COMPONENT Ifetch
		PORT (
			Instruction : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			PC_plus_4_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			IsSWCommand : IN STD_LOGIC;
			IsSpecialAddr : IN std_logic;
			Add_result : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Branch : IN STD_LOGIC;
			Zero : IN STD_LOGIC;
			Jump : IN STD_LOGIC;
			sw_8_run : IN std_logic;
			PC_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			clock, reset : IN STD_LOGIC
		);
	END COMPONENT;
	COMPONENT Idecode
		PORT (
			read_data_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			read_data_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			Instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			read_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			ALU_result : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			RegWrite, MemtoReg : IN STD_LOGIC;
			RegDst : IN STD_LOGIC;
			wrReg_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			Memread : IN STD_LOGIC;
			Memwrite : IN STD_LOGIC;
			Sign_extend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			IsSpecialAddr : OUT std_logic;
			addrOfIO : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);--addr of IO
			first : OUT STD_LOGIC;
			second : OUT STD_LOGIC;
			third : OUT STD_LOGIC;
			four : OUT STD_LOGIC;
			is_ledg : OUT STD_LOGIC;
			is_ledr : OUT STD_LOGIC;
			clock, reset : IN STD_LOGIC
		);
	END COMPONENT;
	COMPONENT control
		PORT (
			Opcode : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			RegDst : OUT STD_LOGIC;
			ALUSrc : OUT STD_LOGIC;
			MemtoReg : OUT STD_LOGIC;
			RegWrite : OUT STD_LOGIC;
			MemRead : OUT STD_LOGIC;
			MemWrite : OUT STD_LOGIC;
			Branch : OUT STD_LOGIC;
			ALUop : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
			Jump : OUT STD_LOGIC;
			ICommand : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			SLWCommand : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			IsICommand : OUT STD_LOGIC;
			IsSWCommand : OUT STD_LOGIC;
			clock, reset : IN STD_LOGIC
		);
	END COMPONENT;
	COMPONENT Execute
		PORT (
			Read_data_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			Read_data_2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			Sign_Extend : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			Function_opcode : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			ALUOp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			ALUSrc : IN STD_LOGIC;
			Zero : OUT STD_LOGIC;
			ALU_Result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			Add_Result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			PC_plus_4 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			ICommand : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			SLWCommand : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			IsICommand : IN STD_LOGIC;
			IsSWCommand : IN STD_LOGIC;
			shiftValue : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			clock, reset : IN STD_LOGIC
		);
	END COMPONENT;
	COMPONENT dmemory
		PORT (
			read_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			write_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			MemRead, Memwrite : IN STD_LOGIC;
			SpecialAddr : IN STD_LOGIC;
			SpecialData : IN std_logic_vector(7 DOWNTO 0);
			IsSpecialAddr : IN std_logic;
			Seven_Seg : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			addrOfIO : IN STD_LOGIC_VECTOR(11 DOWNTO 0);--addr of IO
			PORT_LEDG : OUT std_logic_vector(7 DOWNTO 0);
			PORT_LEDR : OUT std_logic_vector(7 DOWNTO 0);
			Clock, reset : IN STD_LOGIC
		);
	END COMPONENT;
	-----------------------------------------------------------------

	COMPONENT sevenSeg_out
		PORT (
			clk : IN STD_LOGIC;
			reset_n : IN STD_LOGIC;
			is_one : IN STD_LOGIC;
			is_two : IN STD_LOGIC;
			is_three : IN STD_LOGIC;
			is_four : IN STD_LOGIC;
			IsSpecialAddr : IN std_logic;
			writeMem : IN std_logic;
			dataa : IN std_logic_vector(15 DOWNTO 0);
			seg_out : OUT std_logic_vector(6 DOWNTO 0);
			seg_out1 : OUT std_logic_vector(6 DOWNTO 0);
			seg_out2 : OUT std_logic_vector(6 DOWNTO 0);
			seg_out3 : OUT std_logic_vector(6 DOWNTO 0)
		);
	END COMPONENT;


	COMPONENT led_out
		PORT (
			clk : IN STD_LOGIC;
			reset_n : IN STD_LOGIC;
			is_ledr : IN STD_LOGIC;
			is_ledg : IN STD_LOGIC;
			IsSpecialAddr : IN std_logic;
			writeMem : IN std_logic;
			data : IN std_logic_vector(7 DOWNTO 0);
			led_R : OUT std_logic_vector(7 DOWNTO 0);
			led_G : OUT std_logic_vector(7 DOWNTO 0)
		);
	END COMPONENT;
	--------------------------------------
	-- declare signals used to connect VHDL components
	SIGNAL PC_plus_4 : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL PC : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL read_data_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL read_data_2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL Sign_Extend : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL Add_result : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL ALU_result : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL read_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL ALUSrc : STD_LOGIC;
	SIGNAL Branch : STD_LOGIC;
	SIGNAL Jump : STD_LOGIC;
	SIGNAL SpecialAddr : STD_LOGIC;
	SIGNAL IsSpecialAddr : STD_LOGIC;
	SIGNAL ICommand : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL shiftValue : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL IsICommand : STD_LOGIC;
	SIGNAL SLWCommand : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL wrReg_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL IsSWCommand : STD_LOGIC;
	SIGNAL RegDst : STD_LOGIC;
	SIGNAL Regwrite : STD_LOGIC;
	SIGNAL Zero : STD_LOGIC;
	SIGNAL MemWrite : STD_LOGIC;
	SIGNAL MemtoReg : STD_LOGIC;
	SIGNAL MemRead : STD_LOGIC;
	SIGNAL ALUop : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL Instruction : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL addrOfIO : STD_LOGIC_VECTOR(11 DOWNTO 0);--addr of IO
	SIGNAL address_tmp : STD_LOGIC_VECTOR(9 DOWNTO 0);
	--seven seg vars--------
	SIGNAL ssg0_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL ssg1_out : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL ssg2_out : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL port_f : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL port_g : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL ssg3_out : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL tt : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Seven_Seg : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL seg_signal_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL seg_signal_1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL seg_signal_2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL seg_signal_3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL the_one : STD_LOGIC;
	SIGNAL the_two : STD_LOGIC;
	SIGNAL the_three : STD_LOGIC;
	SIGNAL the_four : STD_LOGIC;
	SIGNAL is_ledr : STD_LOGIC;
	SIGNAL is_ledg : STD_LOGIC;
	SIGNAL NR : STD_LOGIC;
	SIGNAL ebf : STD_LOGIC;
	SIGNAL esbf : STD_LOGIC;
	-------------------------------------
	SIGNAL bubble_delay : STD_LOGIC_VECTOR (0 DOWNTO 0);
BEGIN
	NR <= NOT reset;
	-- copy important signals to output pins for easy
	-- display in Simulator
	Instruction_out <= Instruction;
	ALU_result_out <= ALU_result;
	read_data_1_out <= read_data_1;
	read_data_2_out <= read_data_2;
	write_data_out <= read_data WHEN MemtoReg = '1' ELSE
	                  ALU_result;
	Branch_out <= Branch;
	J_out <= Jump;
	Zero_out <= Zero;
	RegWrite_out <= RegWrite;
	MemWrite_out <= MemWrite;
	isSpecial_out <= IsSpecialAddr;
	pc_oout <= PC;
	PC_plus_4_oout <= PC_plus_4;
	addr_out <= ALU_Result (9 DOWNTO 2) & "00";
	Seven_Seg_out_top <= Seven_Seg;
	-------------------------------------
	ebf <= '1';
 
	address_tmp <= ALU_Result (9 DOWNTO 2) & "00";

	---------------------------------------
	IFE : Ifetch
	PORT MAP(
		Instruction => Instruction, 
		PC_plus_4_out => PC_plus_4, 
		IsSpecialAddr => IsSpecialAddr, ---
		Add_result => Add_result, 
		Branch => Branch, 
		Zero => Zero, 
		Jump => Jump, 
		sw_8_run => sw_8_run, 
		PC_out => PC, 
		clock => clock, 
		IsSWCommand => IsSWCommand, 

		reset => NR
	);
	ID : Idecode
	PORT MAP(
		read_data_1 => read_data_1, 
		read_data_2 => read_data_2, 
		Instruction => Instruction, 
		read_data => read_data, 
		ALU_result => ALU_result, 
		RegWrite => RegWrite, 
		MemtoReg => MemtoReg, 
		RegDst => RegDst, 
		Sign_extend => Sign_extend, 
		IsSpecialAddr => IsSpecialAddr, 
		is_ledg => is_ledg, 
		is_ledr => is_ledr, 
		first => the_one, 
		second => the_two, 
		third => the_three, 
		four => the_four, 
		Memread => MemRead, 
		Memwrite => MemWrite, 
		addrOfIO => addrOfIO, 
		wrReg_out => wrReg_out, 
		clock => clock, 
		reset => NR
	);
	CTL : control
	PORT MAP(
		Opcode => Instruction(31 DOWNTO 26), 
		RegDst => RegDst, 
		ALUSrc => ALUSrc, 
		MemtoReg => MemtoReg, 
		RegWrite => RegWrite, 
		MemRead => MemRead, 
		MemWrite => MemWrite, 
		Branch => Branch, 
		ALUop => ALUop, 
		Jump => Jump, 
		ICommand => ICommand, 
		SLWCommand => SLWCommand, 
		IsSWCommand => IsSWCommand, 
		IsICommand => IsICommand, 
		clock => clock, 
		reset => NR
	);
	EXE : Execute
	PORT MAP(
		Read_data_1 => read_data_1, 
		Read_data_2 => read_data_2, 
		Sign_extend => Sign_extend, 
		Function_opcode => Instruction(5 DOWNTO 0), 
		ALUOp => ALUop, 
		ALUSrc => ALUSrc, 
		Zero => Zero, 
		ALU_Result => ALU_Result, 
		Add_Result => Add_Result, 
		PC_plus_4 => PC_plus_4, 
		ICommand => ICommand, 
		SLWCommand => SLWCommand, 
		IsSWCommand => IsSWCommand, 
		IsICommand => IsICommand, 
		shiftValue => Instruction(10 DOWNTO 6), 
		Clock => clock, 
		Reset => NR
	);
	MEM : dmemory
	PORT MAP(
		read_data => read_data, 
		address => address_tmp, -- ALU_Result (9 DOWNTO 2)&"00",--jump memory address by 4
		write_data => read_data_2, 
		MemRead => MemRead, 
		Memwrite => MemWrite, 
		SpecialAddr => SpecialAddr, 
		SpecialData => sw_0_7, 
		IsSpecialAddr => IsSpecialAddr, 
		Seven_Seg => Seven_Seg, 
		addrOfIO => addrOfIO, 
		clock => clock, 
		PORT_LEDG => port_g, 
		PORT_LEDR => port_f, 
		reset => NR
	);
 
	sve : sevenSeg_out
	PORT MAP(clock, reset, the_one, the_two, the_three, the_four, IsSpecialAddr, Memwrite, read_data_2(15 DOWNTO 0), SEG0_OUT, SEG1_OUT, SEG2_OUT, SEG3_OUT);
	ledd : led_out
	PORT MAP(clock, reset, is_ledr, is_ledg, IsSpecialAddr, Memwrite, read_data_2(7 DOWNTO 0), PORT_LEDR, PORT_LEDG);

END structure;