library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE iEEE.std_logic_arith.ALL;

entity dff_en is
port (	
		d: 	  		in std_logic;
		clk:		in std_logic;
		en:			in std_logic;
		rst:		in std_logic;
		q: 			out std_logic);
end dff_en;

architecture dff_behavioral of dff_en is

begin
	process(clk, en)
	begin
		if rising_edge(clk) then
			if en = '1' then
				if rst = '1' then
					q <= '0';
				else
					q <= d;
				end if;
			end if;
		end if;
	end process;	
end dff_behavioral;