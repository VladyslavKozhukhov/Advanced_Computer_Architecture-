LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------------------------------
entity top is
	generic (
		n : positive := 8 ;
		m : positive := 7 ;
		k : positive := 3
	); -- where k=log2(m+1)
	port(
		rst,ena,clk : in std_logic;
		din : in std_logic_vector(n-1 downto 0);
		cond : in integer range 0 to 3;
		detector : out std_logic;
		XX: out std_logic_vector(n-1 downto 0);
		YY: out std_logic_vector(n-1 downto 0)
	);
end top;
------------- complete the top Architecture code --------------
architecture arc_sys of top is

	SIGNAL D_next,D_prev,Diff : STD_LOGIC_VECTOR(n-1 DOWNTO 0); 
	SIGNAL X,Y : STD_LOGIC_VECTOR(n-1 DOWNTO 0);

begin
	delayProc :process (clk,rst,ena)
		VARIABLE Z: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		--SIGNAL yXored : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		--SIGNAL cout : STD_LOGIC;
		variable count1 : INTEGER RANGE 0 TO 3 ;--delay for rst stage
		begin
			if(rst='1') then
				X <= (others => '0'); -- d_i
				Y <= (others => '0'); -- d_i-1
				Z :=(others => '0');-- <= (others => '0');
				count1:=0;
			elsif (rising_edge(clk)) then	
				IF(ena = '1') THEN
					count1:= count1 + 1;
					IF(count1=1)THEN
						X<=din;
					end IF;
					IF(count1 = 2) THEN
						Z:=X;
						Y<=Z;
						X<=din;
					    count1:=1;
					end IF;
					
				end IF;
			end IF;
		END PROCESS delayProc;			
		XX<=X;
		YY<=Y;
	--	initY : FOR a IN 0 TO n-1 GENERATE -- This is how we initiate the input y
		--	yXored(a) <= Y(a) XOR '1';						
		--END GENERATE;
		--L0 : Adder generic map(n) port map(
		--a => X,
		--b => yXored,
		--cin => '1',
		--s => Diff,
		--cout=>cout);
		--IF(Diff = cond) then
			--detector<='1';
		--elsif
			--detector<='0';
		--end if;
		detector<='1';
end arc_sys;







