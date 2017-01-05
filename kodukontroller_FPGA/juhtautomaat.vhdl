library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JUHTAUTOMAAT is 
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input
		   b : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input 
		   c : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
		   d : in STD_LOGIC; --1 bit input
			
		   y1_tt : out STD_LOGIC; --1 bit output
		   y2_tt : out STD_LOGIC; -- 1 bit output 
		   y3_tt : out STD_LOGIC; --1 bit output
		   y4_tt : out STD_LOGIC_VECTOR (1 downto 0); --2 bit output
			
			y1_bh : out STD_LOGIC; --1 bit output
		   y2_bh : out STD_LOGIC; -- 1 bit output 
		   y3_bh : out STD_LOGIC; --1 bit output
		   y4_bh : out STD_LOGIC_VECTOR (1 downto 0); --2 bit output
			
			y1_df : out STD_LOGIC; --1 bit output
		   y2_df : out STD_LOGIC; -- 1 bit output 
		   y3_df : out STD_LOGIC; --1 bit output
		   y4_df : out STD_LOGIC_VECTOR (1 downto 0); --2 bit output
			
			y1_st : out STD_LOGIC; --1 bit output
		   y2_st : out STD_LOGIC; -- 1 bit output 
		   y3_st : out STD_LOGIC; --1 bit output
		   y4_st : out STD_LOGIC_VECTOR (1 downto 0) --2 bit output
	);
end JUHTAUTOMAAT;

architecture automaat of JUHTAUTOMAAT is

component tt is 
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input
		   b : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input 
		   c : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
		   d : in STD_LOGIC; --1 bit input
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

component struct is 
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

-- port maps for different models
	truth : tt port map (a, b, c, d, y1_tt, y2_tt, y3_tt, y4_tt);
	behave_model : behave port map (a, b, c, d, y1_bh, y2_bh, y3_bh, y4_bh);
	dataflow_model : dataflow port map (a, b, c, d, y1_df, y2_df, y3_df, y4_df);
	struct_model: struct port map (a, b, c, d, y1_st, y2_st, y3_st, y4_st);
end automaat;