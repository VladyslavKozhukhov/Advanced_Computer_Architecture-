LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY sevenSeg_out IS
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
END sevenSeg_out;

ARCHITECTURE Behavioral OF sevenSeg_out IS
	SIGNAL clk_sig : std_logic;
	SIGNAL use_one : std_logic;
	SIGNAL use_two : std_logic;
	SIGNAL use_three : std_logic;
	SIGNAL use_four : std_logic;
	SIGNAL num0 : INTEGER RANGE 0 TO 16 := 0;
	SIGNAL num1 : INTEGER RANGE 0 TO 16 := 0;
	SIGNAL num2 : INTEGER RANGE 0 TO 16 := 0;
	SIGNAL num3 : INTEGER RANGE 0 TO 16 := 0;
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
	TYPE bcd_num IS ARRAY (0 TO 15) OF std_logic_vector(6 DOWNTO 0);
	SIGNAL seg_nums : bcd_num := ("1000000", 
		"1111001", 
		"0100100", 
		"0110000", 
		"0011001", 
		"0010010", 
		"0000010", 
		"1111000", 
		"0000000", 
		"0011000", 
		"0001000", 
		"0000011", 
		"1000110", 
		"0100001", 
		"0000110", 
	"0001110"); 
BEGIN
	PROCESS (reset_n, clk, dataa)
	VARIABLE cnt : INTEGER RANGE 0 TO 25000000;

	BEGIN
		IF (reset_n = '0') THEN
			num0 <= 0;
			num1 <= 0;
			num2 <= 0;
			num3 <= 0;
			use_one <= '0';
			use_two <= '0';
			use_three <= '0';
			use_four <= '0';
		ELSIF (writeMem = '1' AND IsSpecialAddr = '1'AND (is_one = '1' OR use_one = '1') AND rising_edge(clk)) THEN 
			num0<=conv_integer(unsigned(dataa(3 DOWNTO 0)));
		ELSIF (writeMem = '1' AND IsSpecialAddr = '1'AND (is_two = '1' OR use_two = '1')AND rising_edge(clk)) THEN 
			num1<=conv_integer(unsigned(dataa(7 DOWNTO 4)));
		ELSIF (writeMem = '1' AND IsSpecialAddr = '1'AND (is_three = '1' OR use_three = '1') AND rising_edge(clk)) THEN 
			IF (use_three = '0') THEN
				use_three <= is_three;
			END IF;
			num2<=conv_integer(unsigned(dataa(11 DOWNTO 8)));
		ELSIF (writeMem = '1' AND IsSpecialAddr = '1'AND (is_four = '1' OR use_four = '1') AND rising_edge(clk)) THEN 
			IF (use_four = '0') THEN
				use_four <= is_four;
			END IF;
			num3<=conv_integer(unsigned(dataa(15 DOWNTO 12)));

		ELSE
			use_one <= use_one;
			use_two <= use_two;
			use_three <= use_three;
			use_four <= use_four;
			num0 <= num0;
			num2 <= num2;
			num1 <= num1;
			num3 <= num3;
		END IF;
	END PROCESS;

	seg_out <= seg_nums(num0);
	seg_out1 <= seg_nums(num1);
	seg_out2 <= seg_nums(num2);
	seg_out3 <= seg_nums(num3);

END Behavioral;