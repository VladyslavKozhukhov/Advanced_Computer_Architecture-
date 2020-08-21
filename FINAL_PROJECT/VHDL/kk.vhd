LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity led_clock2 is
  port ( clk : in STD_LOGIC;
			 reset_n : in STD_LOGIC;
			IsSpecialAddr		: IN    std_logic;
			writeMem		: IN    std_logic;
			dataa     :in std_logic_vector(3 downto 0);
			 seg_out : OUT std_logic_vector(6 downto 0);
			 seg_out1 : OUT std_logic_vector(6 downto 0)

);
end  led_clock2;

architecture Behavioral of led_clock2 is
signal clk_sig : std_logic;
signal num : integer;
signal num2 : integer;
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
type bcd_num is array (0 to 9) of std_logic_vector(6 downto 0);
signal seg_nums : bcd_num := ("1000000", --0
										"1111001", --1
										"0100100", --2
										"0110000", --3
										"0011001", --4
										"0010010", --5
										"0000011", --6
										"1111000", --7
										"0000000", --8
										"0011000"); --9

begin
process(reset_n,clk,dataa)
variable cnt : integer range 0 to 25000000;
--variable num : integer;
begin
	if (reset_n='0') then

		num<=0;
		num2<=0;
	elsif  (writeMem='1' and IsSpecialAddr = '1' and rising_edge(clk)  )then --rising_edge(clk)) and IsSpecialAddr = '1'
			if (dataa=value_0) then
				num<=0;
			elsif (dataa=value_1 )then
				num<=1;
			elsif (dataa=value_2 )then
							num<=2;
							--num2<=2;

						elsif (dataa=value_3 )then
							num<=3;
			elsif (dataa=value_4 )then
							--num<=0;
							num<=4;
							num2<=4;
						elsif (dataa=value_5 )then
							num<=5;
			elsif (dataa=value_6 )then
							num<=6;
						elsif (dataa=value_7 )then
							num<=7;
			elsif (dataa=value_8 )then
							num<=8;
			end if;
else 
num<=num;
num2<=num2;
		end if;
end process;

seg_out<=seg_nums(num);
seg_out1<=seg_nums(num2);
end Behavioral;