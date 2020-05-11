 LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY cond_tb IS
	CONSTANT n : INTEGER := 8;
END cond_tb;
 
 
architecture cond_Testbench OF cond_tb IS

-----------------------------------------------------------------
component CheckCond is
	generic (
		n : positive := 8
	);
	port(
		D_prev : in std_logic_vector(n-1 downto 0);
		cond : in integer range 0 to 3;
		din  : in std_logic_vector(n-1 downto 0);
		riseSig: out std_logic
	);
end component;
  -----------------------------------------------------------------

	SIGNAL din: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	SIGNAL cond: INTEGER range 0 to 3;
	SIGNAL	riseSig : std_logic;
	SIGNAL	D_prev :  std_logic_vector(n-1 downto 0);
BEGIN

	L0 : CheckCond generic map (n) PORT MAP(D_prev,cond,din,riseSig);
		
	tb_cond : process
		begin
				cond<=0;		
			wait;
	end process tb_cond;

		
    tb_din : process
		begin
			D_prev <= "00000000";
			din<="00000001";
			wait for 10 us;
			D_prev <= "00000001";
			din<="00000010";

			wait for 10 us;
			D_prev <= "00000010";
			din<="00000011";

			wait for 10 us;
			din <= "00000011"; 
			D_prev<="00000011";
			wait for 10 us;
			D_prev <= "00000100";
			din<="00000101";
			
			wait ;
        end process tb_din;
		

  
  
END cond_Testbench;