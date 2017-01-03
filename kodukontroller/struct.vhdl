LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all; --just in case library
use ieee.std_logic_arith.all; --just in case library

entity struct is 
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input
		   b : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input 
		   c : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
		   d : in STD_LOGIC; --1 bit input
		   y1 : out STD_LOGIC; --1 bit output
		   y2 : out STD_LOGIC; -- 1 bit output 
		   y3 : out STD_LOGIC; --1 bit output
		   y4 : out STD_LOGIC_VECTOR (1 downto 0) --2 bit output 
	);
end struct;

architecture structual of struct is 
	signal t : std_logic_vector (17 downto 0) := (others => '0');
	
begin
t(1) <= (a(0) and a(1));
t(2) <= (a(0) and b(0) and not(d));
t(3) <= (a(0) and not(c(0)) and not(d));
t(4) <= (not(a(0)) and b(0) and c(0));
t(5) <= (a(1) and b(1) and not(d)) ;
t(6) <= (not(a(1)));
t(7) <= (b(0) and b(1));
t(8) <= (b(0) and c(0) and d);
t(9) <= (b(0) and not(c(0)));
t(10) <= (not(b(0)) and not(b(1)) and not(c(0)));
t(11) <= (not(b(0)) and c(0));
t(12) <= (b(1) and not(c(1)));
t(13) <= (not(b(1)));
t(14) <= (not(b(1)) and c(1));
t(15) <= (c(0) and c(1));
t(16) <= (not(c(1)));
t(17) <= (not(d));
y1 <= not(t(1) or t(2) or t(4) or t(8) or t(9) or t(11) or t(13) or t(14));
y2 <= not(t(1) or t(9) or t(10) or t(11) or t(13) or t(14) or t(16));
y3 <= not(t(1) or t(6) or t(7) or t(15) or t(17));
y4(1) <= not(t(1) or t(2) or t(13) or t(15) or t(16));
y4(0) <= not(t(1) or t(3) or t(4) or t(5) or t(7) or t(8) or t(10) or t(12) or t(14));

end architecture structual;

-----------------------------------------------------------------
--espresso.exe espresso.txt
--		.i 7
--		.o 5
--		#.phase 00000			Alphabetical:
--		.p 17
--		0-1-1-- 10001			11----- 11111
--		1---0-0 00001           1-1---0 10010 
--		-1-1--0 00001           1---0-0 00001 
--		--000-- 01001           0-1-1-- 10001 
--		1-1---0 10010           -1-1--0 00001 
--		--1-1-1 10001           -0----- 00100 
--		---1-0- 00001           --11--- 00101 
--		--0-1-- 11000           --1-1-1 10001 
--		---0-1- 10001           --1-0-- 11000 
--		--1-0-- 11000           --000-- 01001 
--		-0----- 00100           --0-1-- 11000 
--		-----0- 00010           ---1-0- 00001 
--		--11--- 00101           ---1--- 11010 
--		----11- 01111           ---0-1- 10001 
--		------0 01100           ----11- 01111 
--		11----- 11111           -----0- 00010 
--		---1--- 11010           ------0 01100 
--		.e