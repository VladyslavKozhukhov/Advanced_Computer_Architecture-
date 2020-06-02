LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY sevenSegment IS
	GENERIC (
		n : POSITIVE := 8  -- A,B length
	);
	PORT (
		HI, LO: IN std_logic_vector(n - 1 DOWNTO 0);
		----------------------------------------
		SEG0_OUT, SEG1_OUT: OUT std_logic_vector(6 DOWNTO 0);
		SEG2_OUT, SEG3_OUT: OUT std_logic_vector(6 DOWNTO 0)

	);
END sevenSegment;
------------- complete the top Architecture code --------------
ARCHITECTURE arc_sevenSegment OF sevenSegment IS

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
	
	CONSTANT value_0 : std_logic_vector(3 DOWNTO 0) := "0000";
	CONSTANT value_1 : std_logic_vector(3 DOWNTO 0) := "0001";
	CONSTANT value_2 : std_logic_vector(3 DOWNTO 0) := "0010";
	CONSTANT value_3 : std_logic_vector(3 DOWNTO 0) := "0011";
	CONSTANT value_4 : std_logic_vector(3 DOWNTO 0) := "0100";
	CONSTANT value_5 : std_logic_vector(3 DOWNTO 0) := "0101";
	CONSTANT value_6 : std_logic_vector(3 DOWNTO 0) := "0110";
	CONSTANT value_7 : std_logic_vector(3 DOWNTO 0) := "0111";
	CONSTANT value_8 : std_logic_vector(3 DOWNTO 0) := "1000";
	CONSTANT value_9 : std_logic_vector(3 DOWNTO 0) := "1001";
	CONSTANT value_A : std_logic_vector(3 DOWNTO 0) := "1010";
	CONSTANT value_b : std_logic_vector(3 DOWNTO 0) := "1011";
	CONSTANT value_c : std_logic_vector(3 DOWNTO 0) := "1100";
	CONSTANT value_d : std_logic_vector(3 DOWNTO 0) := "1101";
	CONSTANT value_E : std_logic_vector(3 DOWNTO 0) := "1110";
	CONSTANT value_F : std_logic_vector(3 DOWNTO 0) := "1111";

BEGIN
	
	SEG0_OUT <= digit_0 WHEN (LO(3 DOWNTO 0) = value_0) ELSE
				digit_1 WHEN (LO(3 DOWNTO 0) = value_1) ELSE
				digit_2 WHEN (LO(3 DOWNTO 0) = value_2) ELSE
				digit_3 WHEN (LO(3 DOWNTO 0) = value_3) ELSE
				digit_4 WHEN (LO(3 DOWNTO 0) = value_4) ELSE
				digit_5 WHEN (LO(3 DOWNTO 0) = value_5) ELSE
				digit_6 WHEN (LO(3 DOWNTO 0) = value_6) ELSE
				digit_7 WHEN (LO(3 DOWNTO 0) = value_7) ELSE
				digit_8 WHEN (LO(3 DOWNTO 0) = value_8) ELSE
				digit_9 WHEN (LO(3 DOWNTO 0) = value_9) ELSE
				letter_A WHEN (LO(3 DOWNTO 0) = value_A) ELSE
				letter_b WHEN (LO(3 DOWNTO 0) = value_b) ELSE
				letter_c WHEN (LO(3 DOWNTO 0) = value_c) ELSE
				letter_d WHEN (LO(3 DOWNTO 0) = value_d) ELSE
				letter_E WHEN (LO(3 DOWNTO 0) = value_E) ELSE
				letter_F WHEN (LO(3 DOWNTO 0) = value_F) ELSE
				letter_U;
				
	SEG1_OUT <= digit_0 WHEN (LO(7 DOWNTO 4) = value_0) ELSE
				digit_1 WHEN (LO(7 DOWNTO 4) = value_1) ELSE
				digit_2 WHEN (LO(7 DOWNTO 4) = value_2) ELSE
				digit_3 WHEN (LO(7 DOWNTO 4) = value_3) ELSE
				digit_4 WHEN (LO(7 DOWNTO 4) = value_4) ELSE
				digit_5 WHEN (LO(7 DOWNTO 4) = value_5) ELSE
				digit_6 WHEN (LO(7 DOWNTO 4) = value_6) ELSE
				digit_7 WHEN (LO(7 DOWNTO 4) = value_7) ELSE
				digit_8 WHEN (LO(7 DOWNTO 4) = value_8) ELSE
				digit_9 WHEN (LO(7 DOWNTO 4) = value_9) ELSE
				letter_A WHEN (LO(7 DOWNTO 4) = value_A) ELSE
				letter_b WHEN (LO(7 DOWNTO 4) = value_b) ELSE
				letter_c WHEN (LO(7 DOWNTO 4) = value_c) ELSE
				letter_d WHEN (LO(7 DOWNTO 4) = value_d) ELSE
				letter_E WHEN (LO(7 DOWNTO 4) = value_E) ELSE
				letter_F WHEN (LO(7 DOWNTO 4) = value_F) ELSE
				letter_U;
				
	SEG2_OUT <= digit_0 WHEN (HI(3 DOWNTO 0) = value_0) ELSE
				digit_1 WHEN (HI(3 DOWNTO 0) = value_1) ELSE
				digit_2 WHEN (HI(3 DOWNTO 0) = value_2) ELSE
				digit_3 WHEN (HI(3 DOWNTO 0) = value_3) ELSE
				digit_4 WHEN (HI(3 DOWNTO 0) = value_4) ELSE
				digit_5 WHEN (HI(3 DOWNTO 0) = value_5) ELSE
				digit_6 WHEN (HI(3 DOWNTO 0) = value_6) ELSE
				digit_7 WHEN (HI(3 DOWNTO 0) = value_7) ELSE
				digit_8 WHEN (HI(3 DOWNTO 0) = value_8) ELSE
				digit_9 WHEN (HI(3 DOWNTO 0) = value_9) ELSE
				letter_A WHEN (HI(3 DOWNTO 0) = value_A) ELSE
				letter_b WHEN (HI(3 DOWNTO 0) = value_b) ELSE
				letter_c WHEN (HI(3 DOWNTO 0) = value_c) ELSE
				letter_d WHEN (HI(3 DOWNTO 0) = value_d) ELSE
				letter_E WHEN (HI(3 DOWNTO 0) = value_E) ELSE
				letter_F WHEN (HI(3 DOWNTO 0) = value_F) ELSE
				letter_U;
				
	SEG3_OUT <= digit_0 WHEN (HI(7 DOWNTO 4) = value_0) ELSE
				digit_1 WHEN (HI(7 DOWNTO 4) = value_1) ELSE
				digit_2 WHEN (HI(7 DOWNTO 4) = value_2) ELSE
				digit_3 WHEN (HI(7 DOWNTO 4) = value_3) ELSE
				digit_4 WHEN (HI(7 DOWNTO 4) = value_4) ELSE
				digit_5 WHEN (HI(7 DOWNTO 4) = value_5) ELSE
				digit_6 WHEN (HI(7 DOWNTO 4) = value_6) ELSE
				digit_7 WHEN (HI(7 DOWNTO 4) = value_7) ELSE
				digit_8 WHEN (HI(7 DOWNTO 4) = value_8) ELSE
				digit_9 WHEN (HI(7 DOWNTO 4) = value_9) ELSE
				letter_A WHEN (HI(7 DOWNTO 4) = value_A) ELSE
				letter_b WHEN (HI(7 DOWNTO 4) = value_b) ELSE
				letter_c WHEN (HI(7 DOWNTO 4) = value_c) ELSE
				letter_d WHEN (HI(7 DOWNTO 4) = value_d) ELSE
				letter_E WHEN (HI(7 DOWNTO 4) = value_E) ELSE
				letter_F WHEN (HI(7 DOWNTO 4) = value_F) ELSE
				letter_U;


END arc_sevenSegment;