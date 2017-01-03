library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity behave is 
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input outside light
		   b : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input inside temp 
		   c : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input outside temp
		   d : in STD_LOGIC; --1 bit input people home
		   y1 : out STD_LOGIC; --1 bit output heating
		   y2 : out STD_LOGIC; -- 1 bit output AC
		   y3 : out STD_LOGIC; --1 bit output curtains
		   y4 : out STD_LOGIC_VECTOR (1 downto 0) --2 bit output ventilation
	);
end behave;

architecture behavioral of behave is
begin 
	process (a,b,c,d) begin
  		y1 <= '1';  -- default
  		y2 <= '1';  -- default
  		y3 <= '1'; -- default
  		y4 <= "11"; -- default
  		
  		t1: if a(1)='1' and a(0)='1' then y1 <='0'; y2 <='0'; y3 <='0'; y4 <="00"; end if;
  		t2: if a(1)='1' and b(1)='1' and d ='0' then y1 <='0'; y4(1) <= '0'; end if;
  		t3: if a(1)='1' and c(1)='0' and d ='0' then y4(0) <= '0'; end if;
  		t4: if a(1)='0' and b(1)='1' and c(1) ='1' then y1 <= '0'; y4(0) <= '0'; end if;
  		t5: if a(0)='1' and b(0)='1' and d ='0' then y4(0) <= '0'; end if;
  		t6: if a(0)='0' then y3 <= '0'; end if;
  		t7: if b(1)='1' and b(0)='1' then y3 <= '0'; y4(0) <= '0';  end if;
  		t8: if b(1)='1' and c(1)='1' and d ='1' then y1 <= '0'; y4(0) <= '0'; end if;		
  		t9: if b(1)='1' and c(1)='0' then y1 <= '0'; y2 <= '0'; end if;
  		t10: if b(1)='0' and b(0)='0'and c(1)='0' then y4(0) <= '0'; y2 <= '0'; end if;
  		t11: if b(1)='0' and c(1)='1' then y1 <= '0'; y2 <= '0'; end if;
  		t12: if b(0)='1' and c(0)='0' then y4(0) <= '0'; end if;
  		t13: if b(0)='1' then y1 <= '0'; y2 <= '0'; y4(1) <= '0'; end if;
  		t14: if b(0)='0' and c(0) = '1' then y1 <= '0'; y4(0) <= '0'; end if;
  		t15: if c(1)='1' and c(0)='1' then y2 <='0'; y3 <='0'; y4 <="00"; end if;
  		t16: if c(0)='0' then y4(1) <= '0'; end if;
  		t17: if d='0' then y2 <='0'; y3 <='0'; end if;
	end process;
end architecture behavioral;

-----------------------------------------------------------------
--espresso.exe espresso.txt
--		.i 7
--		.o 5
--		#.phase 00000			Alphabetical:
--		.p 17
--		0-1-1-- 10001			11----- 11111 1
--		1---0-0 00001           1-1---0 10010 2
--		-1-1--0 00001           1---0-0 00001 3
--		--000-- 01001           0-1-1-- 10001 4
--		1-1---0 10010           -1-1--0 00001 5
--		--1-1-1 10001           -0----- 00100 6
--		---1-0- 00001           --11--- 00101 7
--		--0-1-- 11000           --1-1-1 10001 8
--		---0-1- 10001           --1-0-- 11000 9
--		--1-0-- 11000           --000-- 01001 10
--		-0----- 00100           --0-1-- 11000 11
--		-----0- 00010           ---1-0- 00001 12
--		--11--- 00101           ---1--- 11010 13
--		----11- 01111           ---0-1- 10001 14
--		------0 01100           ----11- 01111 15
--		11----- 11111           -----0- 00010 16
--		---1--- 11010           ------0 01100 17
--		.e
