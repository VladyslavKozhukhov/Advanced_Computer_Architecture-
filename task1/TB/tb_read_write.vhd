LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.ALL;

use ieee.numeric_std.ALL;
USE work.aux_package.ALL;
use std.textio.all;
-------------------------------------------------------------
ENTITY tb_read_write IS
	CONSTANT n : POSITIVE := 8;
	CONSTANT m : POSITIVE := 5;
	CONSTANT k : POSITIVE := 2;
END tb_read_write ;

ARCHITECTURE Arc_tb_read_write OF tb_read_write  IS
	SIGNAL   clk, cin: STD_LOGIC;
	SIGNAL A, B : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL RES : STD_LOGIC_VECTOR(2*n-1 DOWNTO 0);
	SIGNAL OPC : STD_LOGIC_VECTOR(m-1 DOWNTO 0);
	SIGNAL STATUS : STD_LOGIC_VECTOR(k-1 DOWNTO 0);
		SIGNAL rst : STD_LOGIC :='0';
			SIGNAL write_first:STD_LOGIC:='1';
			SIGNAL	ena:STD_LOGIC:='1';
			SIGNAL	xxxx:STD_LOGIC;

SIGNAL HIO,LOI :  std_logic_vector(n - 1 DOWNTO 0);
				SIGNAL	 cin_SIGG :  std_logic;
	SIGNAL	OPCOUT :  std_logic_vector(m - 1 DOWNTO 0);

		----------------------------------------
			signal gen: boolean:=true;
			signal done: boolean:=false;
			CONSTANT file_read_loc :string(1 to 60):="C:\Users\VladKo\Documents\MSc\BGU\CPU\LAB2_all\inputFile.txt";
			CONSTANT file_write_loc :string(1 to 61):="C:\Users\VladKo\Documents\MSc\BGU\CPU\LAB2_all\outputFile.txt";


begin


	tb_top : top generic map(n, m, k) port map(rst,ena,clk,cin,A,B,OPC,RES,STATUS,xxxx);--,HIO,LOI,cin_SIGG,OPCOUT);

	gen <= not gen after 10 us;





	--------- start of stimulus section ------------------	
	tb_rw : PROCESS
	file infile : text open read_mode is file_read_loc;
	file outfile : text open write_mode is file_write_loc;
	variable L:Line;
		variable L1:Line;

	variable in_OPC_tmp:bit_vector(m-1 downto 0);
		variable in_OPC:bit_vector(m-1 downto 0);

	variable in_A:bit_vector(n-1 downto 0);
	variable in_B:bit_vector(n-1 downto 0);
	variable in_cin:std_logic;
	 variable in_cinx : bit;


	variable HI,LO,TOO:std_logic_vector(n-1 downto 0);
	variable good:boolean;
		variable goodd:boolean;

	BEGIN

	wait until (gen=true);



	while not endfile(infile) loop
		readline (infile,L);
		read(L,in_OPC,good);
		--next when not good;		
		read(L,in_A,good);
		--next when not good;		
		read(L,in_B,good);
		--next when not good;
		read(L,in_cinx,good);
		if(good) then
		goodd :=good;
		elsif(NOT good) then
		goodd :=good;
		good:=not good;
		end if;
		next when not good;

		wait until (gen'event and gen=false);
		clk<='1';
		OPC<=to_stdlogicvector(in_OPC);
		A<=to_stdlogicvector(in_A);
		B<=to_stdlogicvector(in_B);
		if(goodd) then
		cin<=to_stdulogic(in_cinx);
		elsif(not goodd) then
		cin<='X';
		end if;

		--------------------------------
		wait until (gen'event and gen=true);
		clk<='0';
		
		if(write_first='1') then
			write_first<= '0';
		else
			write(L1,to_bitvector(RES(2*n-1 downto n)),left,10);
			write(L1,to_bitvector(RES(n-1 downto 0)),left,10);
			write(L1,to_bitvector(STATUS));
			writeline(outfile,L1);
		end if;
	end loop;
			wait until (gen'event and gen=false);
			clk<='1';
		wait until (gen'event and gen=true);
			clk<='0';
			write(L1,to_bitvector(RES(2*n-1 downto n)),left,10);
			write(L1,to_bitvector(RES(n-1 downto 0)),left,10);
			write(L1,to_bitvector(STATUS));
			writeline(outfile,L1);

	done<= true;
	file_close(infile);
	file_close(outfile);
	report "End of Test" severity note;
	wait;
	END PROCESS tb_rw;


END Arc_tb_read_write; 