LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;

-------------------------------------
ENTITY Barrel IS
	PORT (  x: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			y: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            output: OUT STD_LOGIC_VECTOR(8 DOWNTO 0));
END Barrel;
--------------------------------------------------------------
ARCHITECTURE Barrel_Architecture OF Barrel IS
	constant n : INTEGER := 8;
	SIGNAL mux1OutSig,mux2OutSig: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL firstReg,secondReg,thirdReg: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL outputSig: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL coutSig: STD_LOGIC;
BEGIN
	
	first : MuxCombined GENERIC MAP (n) PORT MAP(x1 => x, x2 => firstReg, sel => y(0), output => mux1OutSig);
	second : MuxCombined GENERIC MAP (n) PORT MAP(x1 => mux1OutSig, x2 => secondReg, sel => y(1), output => mux2OutSig);
	third : MuxCombined GENERIC MAP (n) PORT MAP(x1 => mux2OutSig, x2 => thirdReg, sel => y(2), output => outputSig);
	
	firstReg(n-1 DOWNTO 1) <= x(n-2 DOWNTO 0);  -- Connecting the inputs for the combined muxes
	firstReg(0) <= '0';
	secondReg(n-1 DOWNTO 2) <= mux1OutSig(n-3 DOWNTO 0);
	secondReg(1 DOWNTO 0) <= "00";
	thirdReg(n-1 DOWNTO 4) <= mux2OutSig(3 DOWNTO 0);
	thirdReg(3 DOWNTO 0) <= "0000";
	
	coutSig <= x(n-1) WHEN y="001" ELSE -- This is how we save the last bit
			   x(n-2) WHEN y="010" ELSE
	           x(n-3) WHEN y="011" ELSE
			   x(n-4) WHEN y="100" ELSE
			   x(n-5) WHEN y="101" ELSE
	           x(n-6) WHEN y="110" ELSE
	           x(n-7) WHEN y="111" ELSE
			   '0';
	output(n) <= coutSig;
	output(n-1 DOWNTO 0) <= outputSig;
END Barrel_Architecture;

