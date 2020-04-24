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
		detector : out std_logic
	);
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

		
		counterProc :process (clk,rst,ena)
		begin
			if(rst='1') then
				count <= "00000001";
				counterResult <= (others => '0');
			elsif (rising_edge(clk)) then	
				IF(ena = '1') THEN
					IF(riseSig = '1') THEN
							count <= count( 6 downto 0 )&'0';
							if(count = "00000010") then							
								counterResult <= "001";
							elsif(count = "00000100") then
								counterResult <= "010";
							elsif(count = "00001000") then
								counterResult <= "011";
							elsif(count = "00001000") then
								counterResult <= "100";
							elsif(count = "00010000") then
								counterResult <= "101";
							elsif(count = "00100000") then
								counterResult <= "110";
							elsif(count = "01000000") then
								counterResult <= "111";							
							elsif(count = "10000000") THEN
								counterResult<="111";
								count<="01000000";
							end if;				
					ELSE 
						count <= "00000001";
						counterResult<="000";
					end IF;
				ELSE
					counterResult<=(others => '0');
					count <= "00000001";
				end IF;
			end IF;
		END PROCESS counterProc;			
		
	
	cntProc : process (trigger)
		begin
		--	IF (riseSig = '1') then
				if(counterResult = "111" and trigger ="100000000") then
					isOne <= '1';
				else
					isOne<='0';
				end if;
			--ELSE
				--isOne<='0';
			--end IF;
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







