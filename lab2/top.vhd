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
		detector : out std_logic);
end top;
------------- complete the top Architecture code --------------
architecture arc_sys of top is

	SIGNAL D_next,D_prev: STD_LOGIC_VECTOR(n-1 DOWNTO 0); 
	SIGNAL adderS,adderInSIG : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL counterResult : STD_LOGIC_VECTOR(k-1 DOWNTO 0);
	SIGNAL adderC,isOne : STD_LOGIC;
	SIGNAL cinSIG,riseSig : STD_LOGIC; 
	--SIGNAL X,Y : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL cntTotal : STD_LOGIC_VECTOR(k-1 DOWNTO 0);
	SIGNAL trigger : STD_LOGIC_VECTOR(8 DOWNTO 0);	
	SIGNAL tmpResult: STD_LOGIC_VECTOR(k-1 DOWNTO 0); 
	SIGNAL count : STD_LOGIC_VECTOR (7 DOWNTO 0)  ;	



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

		

	counterProc :process (clk,rst,ena,riseSig)
		VARIABLE countVar: STD_LOGIC_VECTOR(7 DOWNTO 0);
		begin
			if(rst='1') then
				countVar := "00000001";

				counterResult <= (others => '0');
			elsif (rising_edge(clk)) then	
				IF(ena = '1') THEN
					IF(riseSig = '1') THEN
							countVar := countVar( 6 downto 0 )&'0';
							if(countVar = "00000010") then							
								counterResult <= "001";
							elsif(countVar = "00000100") then
								counterResult <= "010";
							elsif(countVar = "00001000") then
								counterResult <= "011";
							elsif(countVar = "00001000") then
								counterResult <= "100";
							elsif(countVar = "00010000") then
								counterResult <= "101";
							elsif(countVar = "00100000") then
								counterResult <= "110";
							elsif(countVar = "01000000") then
								counterResult <= "111";							
							elsif(countVar = "10000000") THEN
								counterResult<="111";
								countVar := "01000000";
							end if;				
					ELSE 
						countVar := "00000001";
						counterResult<="000";
					end IF;
				end IF;
			end IF;
		END PROCESS counterProc;						
		
	
	cntProc : process (trigger)
		begin
				if(counterResult = "111" and trigger ="100000000") then
					isOne <= '1';
				elsif(counterResult = "111" and trigger ="100000001") then
					isOne <= '1';
				else
					isOne<='0';
				end if;

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
				if(trigger = "100000000")then
					trigger<="100000000";
				elsif(trigger = "100000001")then
					trigger<="000000010";
				else	
					trigger <= trigger( 7 downto 0 )&'0';				
				end if;
			else
				if(trigger = "100000000")then
					trigger<="100000001";
				else	
					trigger<="000000001";
				end if;
			end IF;			
			riseSig <= riseVar;
			
	END PROCESS sProcess;
	
	
	
-----validating each part of design-------------
	--XX<=D_prev;
	--YY<=D_next;
	--riseSIGG <= riseSig;
	--outtt<=flag;
	detector<=isOne;
	--CRT<=cntTotal;
--		CR<=counterResult;
------------------------------------------------
end arc_sys;







