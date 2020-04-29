LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
use IEEE.std_logic_arith.all;
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
		X,Y : out STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		riseSIGG: out std_logic;
		CR : out STD_LOGIC_VECTOR(k-1 DOWNTO 0);
		trig : out STD_LOGIC_VECTOR(1 DOWNTO 0)	
		 );
		
end top;
------------- complete the top Architecture code --------------
architecture arc_sys of top is

	SIGNAL D_next,D_prev: STD_LOGIC_VECTOR(n-1 DOWNTO 0); 
	SIGNAL adderS,adderInSIG : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL counterResult : STD_LOGIC_VECTOR(k-1 DOWNTO 0);
	SIGNAL adderC,isOne: STD_LOGIC;
	SIGNAL cinSIG,riseSig : STD_LOGIC; 
	SIGNAL isUp,isUpTwo:STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL cntTotal : STD_LOGIC_VECTOR(k-1 DOWNTO 0);
	SIGNAL trigger : STD_LOGIC_VECTOR(m DOWNTO 0);	
	SIGNAL tmpResult: STD_LOGIC_VECTOR(k-1 DOWNTO 0); 
	SIGNAL count : STD_LOGIC_VECTOR (7 DOWNTO 0)  ;	
	SIGNAL countMax : STD_LOGIC;


begin

	L0 : Adder generic map(n) port map(adderInSIG,D_prev,cinSIG,adderS,adderC);
	
	
	delayProc :process (clk,rst,ena,din)
		VARIABLE Zprev: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		begin
			if(rst='1') then
				D_next <= (others => '0'); -- d_i
				D_prev <= (others => '0'); -- d_i-1
				Zprev :=(others => '0');-- <= (others => '0');
			elsif (rising_edge(clk)) then	
				IF(ena = '1') THEN
						Zprev := D_next;
						D_next <= din;
						D_prev <= Zprev;
				end IF;
			end IF;
		END PROCESS delayProc;			

		

	counterProc :process (clk,rst,ena,riseSig,countMax)
		begin
			if(rst='1') then
				counterResult <= (others => '0') ;
			elsif (rising_edge(clk)) then	
				IF(ena = '1') THEN
					IF(riseSig = '1') THEN							
						if (countMax='1') then
						   counterResult<=counterResult;
						else
						   counterResult <= counterResult + 1;
						end if;											
					ELSE 
						counterResult <= (others => '0');
					end IF;
				end IF;
			end IF;
		END PROCESS counterProc;						
		
	countMax <= '1' when (counterResult = m) else
				'0';						
		

	--isOne<='1' when counterResult = m and riseSig = '1' else '0';
	cntProc : process (counterResult,isUp)
		BEGIN		
		isOne<='0';
		if(counterResult  = m  AND isUp = "11") THEN
			isOne<='1';					
		elsif(counterResult  = m  AND isUp = "10") THEN
			isOne<='1';
		END IF;
	END PROCESS cntProc;

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
				if(counterResult = m AND isUp="01") then -- m+1  times AND rise = 1 => 8 times
					isUp <= "11";
				elsif(counterResult = m AND isUp="11") then -- m+1 ++ times +
					isUp <= "11";
				elsif(isUp = "10") then -- back to be 1
					isUp <="11";
				elsif(counterResult +1 = m)then  -- 6 times
					isUp<="01";		
				end if;
			else
				if( isUp="11")then 
					isUp<="10";
				else			
					isUp<="00";	
				end if;
			end IF;			
			riseSig <= riseVar;
			
	END PROCESS sProcess;
	
	
	
-----validating each part of design-------------
	X<=D_prev;
	Y<=D_next;
	riseSIGG <= riseSig;
	trig<=isUp;
	detector<=isOne;
	CR<=counterResult;
------------------------------------------------
end arc_sys;







