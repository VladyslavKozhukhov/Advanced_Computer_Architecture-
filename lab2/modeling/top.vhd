LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
--use ieee.numeric_std.all;
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
		detector: out std_logic

		--riseSIGG : out std_logic;
	--	XX: out std_logic_vector(n-1 downto 0);
		--YY: out std_logic_vector(n-1 downto 0);
		--CR :out STD_LOGIC_VECTOR(k-1 DOWNTO 0);
	--	CRT :out STD_LOGIC_VECTOR(k-1 DOWNTO 0)

	);
end top;
------------- complete the top Architecture code --------------
architecture arc_sys of top is

	SIGNAL D_next,D_prev : STD_LOGIC_VECTOR(n-1 DOWNTO 0); 
	SIGNAL adderS,adderInSIG : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL counterResult : STD_LOGIC_VECTOR(k-1 DOWNTO 0);
	SIGNAL adderC,isOne : STD_LOGIC;
	SIGNAL cinSIG,riseSig : STD_LOGIC; 
	--SIGNAL X,Y : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL cntTotal : STD_LOGIC_VECTOR(k-1 DOWNTO 0);
	SIGNAL trigger : STD_LOGIC_VECTOR(8 DOWNTO 0);	


begin

	AdderComponent : Adder generic map(n) port map(adderInSIG,D_prev,cinSIG,adderS,adderC);
	SyncDelayComponent : SynchronousDelay generic map(n) port map(rst,ena,clk,din,D_next,D_prev);
	CounterComponent : Counter generic map(k) port map(rst,ena,clk,riseSig,counterResult);
	DetectorComponent : detector_val generic map(k) port map(trigger,counterResult,isOne);

	updateCondProcess : process (cond)
		VARIABLE adderInVar : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		VARIABLE cinVar : STD_LOGIC;
		begin
			adderInVar := (others => '0');
			cinVar := '0';
			if(cond = 0) then
				cinVar := '1';
			elsif (cond = 1) then
				adderInVar(1) := '1';
			elsif (cond = 2) then
				adderInVar(1) := '1';
				cinVar := '1';
			elsif (cond= 3) then
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
				if(trigger = "100000000")then
					trigger<="100000000";
				else	
					trigger <= trigger( 7 downto 0 )&'0';				
				end if;
			else
				trigger<="000000001";
			end IF;			
			riseSig <= riseVar;
			
	END PROCESS sProcess;
	
	
	
-----validating each part of design-------------
	--XX<=D_prev;
	--YY<=D_next;
	--riseSIGG <= riseSig;
	detector<=isOne;
	--CRT<=cntTotal;
	--CR<=counterResult;
------------------------------------------------
end arc_sys;







