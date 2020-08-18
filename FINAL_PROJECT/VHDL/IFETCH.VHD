-- Ifetch module (provides the PC and instruction 
--memory for the MIPS computer)
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

ENTITY Ifetch IS
	PORT(	SIGNAL Instruction 		: OUT	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        	SIGNAL PC_plus_4_out 	: OUT	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
        	SIGNAL Add_result 		: IN 	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
			SIGNAL IsSpecialAddr		: IN    std_logic;
        	SIGNAL Branch 			: IN 	STD_LOGIC;
        	SIGNAL Zero 			: IN 	STD_LOGIC;
			SIGNAL Jump				: IN 	STD_LOGIC;
			SIGNAL bubble_out		: OUT	STD_LOGIC;
	SIGNAL IsSWCommand  : in 	STD_LOGIC;

			SIGNAL sw_8_run			: IN 	std_logic;
      		SIGNAL PC_out 			: OUT	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
        	SIGNAL clock, reset 	: IN 	STD_LOGIC);
END Ifetch;

ARCHITECTURE behavior OF Ifetch IS
	SIGNAL next_PC,J_PC  : STD_LOGIC_VECTOR( 7 DOWNTO 0 );
	SIGNAL Inst		: 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
		SIGNAL bubble			 : STD_LOGIC;
			SIGNAL PC, PC_plus_4, Mem_Addr : STD_LOGIC_VECTOR( 9 DOWNTO 0 );

BEGIN
						--ROM for Instruction Memory
inst_memory: altsyncram
	  
	GENERIC MAP (
		operation_mode => "ROM",
		width_a => 32,
		widthad_a => 10,
		lpm_type => "altsyncram",
		outdata_reg_a => "UNREGISTERED",
		init_file => "program.hex",
		intended_device_family => "Cyclone"
	)
	PORT MAP (
		clock0     => clock,
		address_a 	=> Mem_Addr, 
		q_a 			=> Inst );
		Instruction<=Inst;--add branch taken
					-- Instructions always start on word address - not byte
		PC(1 DOWNTO 0) <= "00";
					-- copy output signals - allows read inside module
		PC_out 			<= PC;
		PC_plus_4_out 	<= PC_plus_4;
						-- send address to inst. memory address register
		Mem_Addr <= Next_PC&"00";
						-- Adder to increment PC by 4        
      	PC_plus_4( 9 DOWNTO 2 )  <= PC( 9 DOWNTO 2 ) + 1;
       	PC_plus_4( 1 DOWNTO 0 )  <= "00";
		J_PC(5 DOWNTO 0) <=Inst(5 DOWNTO 0);
		J_PC(7 DOWNTO 6) <= PC_plus_4(9 DOWNTO 8 );
						-- Mux to select Branch Address or PC + 4        
		Next_PC  <= X"00" WHEN Reset = '1' ELSE
			--PC( 9 DOWNTO 2 )       WHEN bubble = '1'ELSE
			J_PC(7 DOWNTO 0) WHEN Jump = '1' ELSE
			Add_result  WHEN ( ( Branch = '1' ) AND ( Zero = '1' ) AND(Inst( 31 DOWNTO 26 ) = "000100") ) ELSE
			Add_result WHEN ( ( Branch = '1' ) AND ( Zero = '0' ) AND(Inst( 31 DOWNTO 26 ) = "000101") ) ELSE
			PC_plus_4( 9 DOWNTO 2 );

			bubble<=IsSpecialAddr or IsSWCommand;
			bubble_out <= bubble;
	PROCESS
		BEGIN
			WAIT UNTIL ( clock'EVENT ) AND ( clock = '1' );
			IF reset = '1' THEN
				   PC( 9 DOWNTO 2) <= "00000000" ; 
			ELSE 
				   PC( 9 DOWNTO 2 ) <= next_PC;
			END IF;
	END PROCESS;
END behavior;


