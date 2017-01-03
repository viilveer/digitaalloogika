LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all; --just in case library
use ieee.std_logic_arith.all; --just in case library

entity DATAFLOW is 
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input
		   b : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input 
		   c : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
		   d : in STD_LOGIC; --1 bit input
		   y1 : out STD_LOGIC; --1 bit output
		   y2 : out STD_LOGIC; -- 1 bit output 
		   y3 : out STD_LOGIC; --1 bit output
		   y4 : out STD_LOGIC_VECTOR (1 downto 0) --2 bit output 
	);
end DATAFLOW;

architecture dataflow of DATAFLOW is 
	signal input : std_logic_vector (6 downto 0) := (others => '0');
begin
t01 <= (a(1) and a(2));
t02 <= (a(1) and b(1) and not(d));
t03 <= (a(1) and not(c(1)) and not(d));
t04 <= (not(a(1)) and b(1) and c(1));
t05 <= (a(2)) and b(2) and not(d)) ;
t06 <= (not(a(2));
t07 <= (b(1) and b(2));
t08 <= (b(1) and c(1) and d);
t09 <= (b(1) and not(c(1)));
t10 <= (not(b(1)) and not(b(2)) and not(c(1)));
t11 <= (not(b(1)) c(1));
t12 <= (b(2) and not(c(2)));
t13 <= (not(b(2))));
t14 <= (not(b(2)) and c(2));
t15 <= (c(1) and c(2));
t16 <= (not(c(2)));
t17 <= (not(d));
y1 <= not(t01 or t02 or t04 or t08 or t09 or t11 or t13 or t14);
y2 <= not(t01 or t09 or t10 or t11 or t13 or 114 or t16);
y3 <= not(t01 or t06 or t07 or t15 or t17);
y4 <= not(t01 or t02 or t13 or t15 or t16);
y5 <= not(t01 or t03 or t04 or t05 or t07 or t08 or t10 or t12 or t14);

end design;

-----------------------------------------------------------------
--espresso.exe espresso.txt
--		.i 7
--		.o 5
--		#.phase 00000
--		.p 17
--		0-1-1-- 10001
--		1---0-0 00001
--		-1-1--0 00001
--		--000-- 01001
--		1-1---0 10010
--		--1-1-1 10001
--		---1-0- 00001
--		--0-1-- 11000
--		---0-1- 10001
--		--1-0-- 11000
--		-0----- 00100
--		-----0- 00010
--		--11--- 00101
--		----11- 01111
--		------0 01100
--		11----- 11111
--		---1--- 11010
--		.e