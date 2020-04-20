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
	SIGNAL adderS,adderInSIG : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL adderC : STD_LOGIC;
	SIGNAL cinSIG,riseSig : STD_LOGIC; 
	SIGNAL X,Y : STD_LOGIC_VECTOR(n-1 DOWNTO 0);

begin

	AdderComponent : Adder generic map(n) port map(adderInSIG,D_prev,cinSIG,adderS,adderC);
	SyncDelayComponent : SynchronousDelay generic map(n) port map(rst,ena,clk,din,D_next,D_prev);
	
	updateCondProcess : process (cond)
		VARIABLE adderInVar : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		VARIABLE cinVar : STD_LOGIC;
		begin
			adderInVar := (others => '0');
			cinVar := '0';
			if(cond = 1) then
				cinVar := '1';
			elsif (cond = 2) then
				adderInVar(1) := '1';
			elsif (cond = 3) then
				adderInVar(1) := '1';
				cinVar := '1';
			elsif (cond= 4) then
				adderInVar(2) := '1';
			end IF;
			cinSIG <= cinVar;
			adderInSIG <= adderInVar;
	END PROCESS updateCondProcess;
	
	sProcess : process (adderS)
		VARIABLE riseVar : STD_LOGIC;
		begin
			riseVar := '0';
			if (adderS = D_next) then
				riseVar := '1';
			end IF;
			riseSig <= riseVar;
	END PROCESS sProcess;
	

	
	
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
		--detector<='1';
end arc_sys;







