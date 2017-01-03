library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JUHTAUTOMAAT is 
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input
		   b : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input 
		   c : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
		   d : in STD_LOGIC; --1 bit input
		   y1 : out STD_LOGIC; --1 bit output
		   y2 : out STD_LOGIC; -- 1 bit output 
		   y3 : out STD_LOGIC; --1 bit output
		   y4 : out STD_LOGIC_VECTOR (1 downto 0) --2 bit output
	);
end JUHTAUTOMAAT;

architecture toplevel of JUHTAUTOMAAT is

component tt is 
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input
		   b : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input 
		   c : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
		   d : in STD_LOGIC; --1 bit output
		   y1 : out STD_LOGIC; --1 bit output
		   y2 : out STD_LOGIC; -- 1 bit output 
		   y3 : out STD_LOGIC; --1 bit output
		   y4 : out STD_LOGIC_VECTOR (1 downto 0) --2 bit output	
    );
end component;

component behave is 
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input outside light
		   b : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input inside temp 
		   c : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input outside temp
		   d : in STD_LOGIC; --1 bit input people home
		   y1 : out STD_LOGIC; --1 bit output heating
		   y2 : out STD_LOGIC; -- 1 bit output AC
		   y3 : out STD_LOGIC; --1 bit output curtains
		   y4 : out STD_LOGIC_VECTOR (1 downto 0) --2 bit output ventilation
	);
end component;	

component dataflow is 
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input outside light
		   b : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input inside temp 
		   c : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input outside temp
		   d : in STD_LOGIC; --1 bit input people home
		   y1 : out STD_LOGIC; --1 bit output heating
		   y2 : out STD_LOGIC; -- 1 bit output AC
		   y3 : out STD_LOGIC; --1 bit output curtains
		   y4 : out STD_LOGIC_VECTOR (1 downto 0) --2 bit output ventilation
	);
end component;	
	
begin --beginning of the architecture

-- port maps here

---NB IGALE VERSIOONILE OMA OUT??
	truth : tt port map (a, b, c, d, y1, y2, y3, y4);
	--behave_model : behave port map (a, b, c, d, y1, y2, y3, y4);
	--dataflow_model : dataflow port map (a, b, c, d, y1, y2, y3, y4);
end toplevel;