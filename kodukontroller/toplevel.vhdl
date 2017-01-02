library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JUHTAUTOMAAT is 
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input
		   b : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input 
		   c : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
		   d : in STD_LOGIC; --1 bit input
		   y1 : in STD_LOGIC; --1 bit input
		   y2 : in STD_LOGIC; -- 1 bit input 
		   y3 : in STD_LOGIC; --1 bit input
		   y4 : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
	); --4 bit output 
end JUHTAUTOMAAT;

architecture toplevel of JUHTAUTOMAAT is

component tt is 
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input
		   b : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input 
		   c : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
		   d : in STD_LOGIC; --1 bit input
		   y1 : in STD_LOGIC; --1 bit input
		   y2 : in STD_LOGIC; -- 1 bit input 
		   y3 : in STD_LOGIC; --1 bit input
		   y4 : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input	
    ); -- integer output
end component;
begin --beginning of the architecture

-- port maps here
	F1 : tt port map (a, b, c, d, y1, y2, y3, y4);
end toplevel;