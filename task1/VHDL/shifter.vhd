LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;
USE work.aux_package.ALL;
-------------------------------------------------------------
ENTITY shifter IS
	GENERIC (
		n : POSITIVE := 8 -- A length
	);
	PORT (
		cin : IN std_logic;
		A : IN std_logic_vector(n - 1 DOWNTO 0);
		B : IN std_logic_vector(2 DOWNTO 0);
		sel : IN std_logic_vector(1 DOWNTO 0);
		----------------------------------------
		HI, LO : OUT std_logic_vector(n - 1 DOWNTO 0);
		cout : OUT std_logic
	);
END shifter;
------------- shifter Architecture code --------------
ARCHITECTURE arc_shifter OF shifter IS
	SIGNAL shiftAmount : INTEGER RANGE 0 TO 7;

BEGIN
	HI <= (OTHERS => '0');
	shiftAmount <= to_integer(unsigned(B));
shiftProcess : PROCESS (A, shiftAmount, sel,cin)
	variable tmpVector: UNSIGNED(n DOWNTO 0);
	variable totalRes: std_logic_vector(n DOWNTO 0);
	BEGIN


		case sel is
		  when "00" =>			-- RLA --
						totalRes(n-1 downto 0) := A; 
						totalRes(n) := cin;
						tmpVector := unsigned(totalRes);
						for i in 1 to 7 loop														 
							tmpVector := tmpVector rol 1; 
							tmpVector(0) := '0';
							EXIT WHEN (i = shiftAmount);
						end loop;						
						totalRes := std_logic_vector(tmpVector);			
		  when "10" => 			--RRA--
						totalRes(n-1 downto 0) := A;
						tmpVector := unsigned(totalRes);
						for i in 1 to 7 loop
							tmpVector (n) := tmpVector (n-1); 
							tmpVector := tmpVector ror 1;
							EXIT WHEN (i = shiftAmount);
						end loop;						
						totalRes := std_logic_vector(tmpVector); 
  		  when "01" =>			--RLC--

						totalRes(n-1 downto 0) := A;
						totalRes(n) := cin;
						tmpVector := unsigned(totalRes) rol shiftAmount;
						totalRes := std_logic_vector(tmpVector); 
						
		  when "11" =>  		--RRC--
						totalRes(n-1 downto 0) :=   A;
						totalRes(n) := cin;
						tmpVector := unsigned(totalRes) ror shiftAmount;
						totalRes := std_logic_vector(tmpVector);
		  when others => tmpVector := unsigned(totalRes);
		  end case;

		

		LO <= totalRes (n-1 downto 0);
		cout <= totalRes(n);
	END PROCESS shiftProcess;

END arc_shifter;