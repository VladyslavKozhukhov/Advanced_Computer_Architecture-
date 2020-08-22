LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY led_out IS
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
END led_out;

ARCHITECTURE Behavioral OF led_out IS
	SIGNAL clk_sig : std_logic;
	SIGNAL led_R_tmp :  std_logic_vector(7 DOWNTO 0);
	SIGNAL led_G_tmp : std_logic_vector(7 DOWNTO 0);

BEGIN
	PROCESS (reset_n, clk, data)
	BEGIN
IF (reset_n = '0') THEN

	led_R_tmp <= x"00";
	led_G_tmp <= x"00";
ELSIF (writeMem = '1' AND IsSpecialAddr = '1'AND is_ledr = '1' AND rising_edge(clk)) THEN 
	led_R_tmp<= data;
ELSIF (writeMem = '1' AND IsSpecialAddr = '1'AND is_ledg = '1' AND rising_edge(clk)) THEN 
	led_G_tmp<=data;
ELSE
	led_R_tmp <= led_R_tmp;
	led_G_tmp <= led_G_tmp;
END IF;
	END PROCESS;

	led_R <=led_R_tmp;
	led_G <=led_G_tmp;

END Behavioral;