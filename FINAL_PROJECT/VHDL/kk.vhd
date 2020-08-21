LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY led_clock2 IS
	PORT (
		clk : IN STD_LOGIC;
		reset_n : IN STD_LOGIC;
		is_one : IN STD_LOGIC;
		is_two : IN STD_LOGIC;
		is_three : IN STD_LOGIC;
		is_four : IN STD_LOGIC;

		IsSpecialAddr : IN std_logic;
		writeMem : IN std_logic;
		dataa : IN std_logic_vector(3 DOWNTO 0);
		seg_out : OUT std_logic_vector(6 DOWNTO 0);
		seg_out1 : OUT std_logic_vector(6 DOWNTO 0);
		seg_out2 : OUT std_logic_vector(6 DOWNTO 0);
		seg_out3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END led_clock2;

ARCHITECTURE Behavioral OF led_clock2 IS
	SIGNAL clk_sig : std_logic;
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
	SIGNAL seg_nums : bcd_num := ("1000000", --0
		"1111001", --1
		"0100100", --2
		"0110000", --3
		"0011001", --4
		"0010010", --5
		"0000010", --6
		"1111000", --7
		"0000000", --8
		"0011000", --9
		"0001000", --A
		"0000011", --B
		"1000110", --C
		"0100001", --D
		"0000110", --E
	"0001110"); --F
BEGIN
	PROCESS (reset_n, clk, dataa)
	VARIABLE cnt : INTEGER RANGE 0 TO 25000000;
	--variable num : integer;
	BEGIN
		IF (reset_n = '0') THEN

			num0 <= 0;
			num1 <= 0;
			num2 <= 0;
			num3 <= 0;
		ELSIF (writeMem = '1' AND IsSpecialAddr = '1'AND is_one = '1' AND rising_edge(clk)) THEN --rising_edge(clk)) and IsSpecialAddr = '1'
			IF (dataa = value_0) THEN
				num0 <= 0;
			ELSIF (dataa = value_1) THEN
				num0 <= 1;
			ELSIF (dataa = value_2) THEN
				num0 <= 2;
			ELSIF (dataa = value_3) THEN
				num0 <= 3;
			ELSIF (dataa = value_4) THEN
				num0 <= 4;
			ELSIF (dataa = value_5) THEN
				num0 <= 5;
			ELSIF (dataa = value_6) THEN
				num0 <= 6;
			ELSIF (dataa = value_7) THEN
				num0 <= 7;
			ELSIF (dataa = value_8) THEN
				num0 <= 8;
			ELSIF (dataa = value_9) THEN
				num0 <= 9;
			ELSIF (dataa = value_A) THEN
				num0 <= 10;
			ELSIF (dataa = value_b) THEN
				num0 <= 11;
			ELSIF (dataa = value_c) THEN
				num0 <= 12;
			ELSIF (dataa = value_d) THEN
				num0 <= 13;
			ELSIF (dataa = value_E) THEN
				num0 <= 14;
			ELSIF (dataa = value_F) THEN
				num0 <= 15;
			END IF;
ELSIF (writeMem = '1' AND IsSpecialAddr = '1'AND is_two = '1' AND rising_edge(clk)) THEN --rising_edge(clk)) and IsSpecialAddr = '1'
			IF (dataa = value_0) THEN
				num1 <= 0;
			ELSIF (dataa = value_1) THEN
				num1 <= 1;
			ELSIF (dataa = value_2) THEN
				num1 <= 2;
			ELSIF (dataa = value_3) THEN
				num1 <= 3;
			ELSIF (dataa = value_4) THEN
				num1 <= 4;
			ELSIF (dataa = value_5) THEN
				num1 <= 5;
			ELSIF (dataa = value_6) THEN
				num1 <= 6;
			ELSIF (dataa = value_7) THEN
				num1 <= 7;
			ELSIF (dataa = value_8) THEN
				num1 <= 8;
			ELSIF (dataa = value_9) THEN
				num1 <= 9;
			ELSIF (dataa = value_A) THEN
				num1 <= 10;
			ELSIF (dataa = value_b) THEN
				num1 <= 11;
			ELSIF (dataa = value_c) THEN
				num1 <= 12;
			ELSIF (dataa = value_d) THEN
				num1 <= 13;
			ELSIF (dataa = value_E) THEN
				num1 <= 14;
			ELSIF (dataa = value_F) THEN
				num1 <= 15;
			END IF;
ELSIF (writeMem = '1' AND IsSpecialAddr = '1'AND is_three = '1' AND rising_edge(clk)) THEN --rising_edge(clk)) and IsSpecialAddr = '1'
			IF (dataa = value_0) THEN
				num2 <= 0;
			ELSIF (dataa = value_1) THEN
				num2 <= 1;
			ELSIF (dataa = value_2) THEN
				num2 <= 2;
			ELSIF (dataa = value_3) THEN
				num2 <= 3;
			ELSIF (dataa = value_4) THEN
				num2 <= 4;
			ELSIF (dataa = value_5) THEN
				num2 <= 5;
			ELSIF (dataa = value_6) THEN
				num2 <= 6;
			ELSIF (dataa = value_7) THEN
				num2 <= 7;
			ELSIF (dataa = value_8) THEN
				num2 <= 8;
			ELSIF (dataa = value_9) THEN
				num2 <= 9;
			ELSIF (dataa = value_A) THEN
				num2 <= 10;
			ELSIF (dataa = value_b) THEN
				num2 <= 11;
			ELSIF (dataa = value_c) THEN
				num2 <= 12;
			ELSIF (dataa = value_d) THEN
				num2 <= 13;
			ELSIF (dataa = value_E) THEN
				num2 <= 14;
			ELSIF (dataa = value_F) THEN
				num2 <= 15;
			END IF;
ELSIF (writeMem = '1' AND IsSpecialAddr = '1'AND is_four = '1' AND rising_edge(clk)) THEN --rising_edge(clk)) and IsSpecialAddr = '1'
			IF (dataa = value_0) THEN
				num3 <= 0;
			ELSIF (dataa = value_1) THEN
				num3 <= 1;
			ELSIF (dataa = value_2) THEN
				num3 <= 2;
			ELSIF (dataa = value_3) THEN
				num3 <= 3;
			ELSIF (dataa = value_4) THEN
				num3 <= 4;
			ELSIF (dataa = value_5) THEN
				num3 <= 5;
			ELSIF (dataa = value_6) THEN
				num3 <= 6;
			ELSIF (dataa = value_7) THEN
				num3 <= 7;
			ELSIF (dataa = value_8) THEN
				num3 <= 8;
			ELSIF (dataa = value_9) THEN
				num3 <= 9;
			ELSIF (dataa = value_A) THEN
				num3 <= 10;
			ELSIF (dataa = value_b) THEN
				num3 <= 11;
			ELSIF (dataa = value_c) THEN
				num3 <= 12;
			ELSIF (dataa = value_d) THEN
				num3 <= 13;
			ELSIF (dataa = value_E) THEN
				num3 <= 14;
			ELSIF (dataa = value_F) THEN
				num3 <= 15;
			END IF;

		ELSE
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