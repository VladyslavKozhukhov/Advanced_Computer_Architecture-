LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY AdderTwo_TB IS
	CONSTANT m : INTEGER := 3;
END AdderTwo_TB;

architecture AdderTwo_Testbench OF AdderTwo_TB IS
	SIGNAL cin : STD_LOGIC;
	SIGNAL x,y : STD_LOGIC_VECTOR (m-1 DOWNTO 0) := (OTHERS =>'0');
	SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL s : STD_LOGIC_VECTOR (m DOWNTO 0);
BEGIN
	L0 : AdderTwo GENERIC MAP (m) PORT MAP(cin,x,y,sel,s);
    
	--------- start of stimulus section ------------------
		tb_x : PROCESS
        BEGIN
			x <= "000";
			WAIT FOR 50 ns;
			x <= "001";
			WAIT FOR 50 ns;
			x <= "010";
			WAIT FOR 50 ns;
			x <= "011";
			WAIT FOR 50 ns;
			x <= "100";
			WAIT FOR 50 ns;
			x <= "101";
			WAIT FOR 50 ns;
			x <= "110";
			WAIT FOR 50 ns;
			x <= "111";
			WAIT FOR 50 ns;
        END PROCESS tb_x;
		
		tb_y : PROCESS
        BEGIN
			y <= "000";
			WAIT FOR 400 ns;
			y <= "001";
			WAIT FOR 400 ns;
			y <= "010";
			WAIT FOR 400 ns;
			y <= "011";
			WAIT FOR 400 ns;
			y <= "100";
			WAIT FOR 400 ns;
			y <= "101";
			WAIT FOR 400 ns;
			y <= "110";
			WAIT FOR 400 ns;
			y <= "111";
			WAIT FOR 400 ns;
        END PROCESS tb_y;

		tb_sel_cin : PROCESS
        BEGIN
			sel <= "00";
			cin <= '0';
			WAIT FOR 3200 ns;
			sel <= "01";
			cin <= '0';
			WAIT FOR 3200 ns;
			sel <= "01";
			cin <= '1';
			WAIT FOR 3200 ns;
			sel <= "10";
			WAIT FOR 3200 ns;
        END PROCESS tb_sel_cin;
		
  
END AdderTwo_Testbench;
