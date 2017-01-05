----------------------------------------------------------------------------------
-- Home assignement in "Digitaalloogika ja -süsteemid" (http://priit.ati.ttu.ee/?page_id=2320)
-- ALU FPGA synthesis on Playground FPGA
-- (Playground FPGA toplevel module base by Keijo Lass, Priit Ruberg)
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity toplevel is
	port(
	clk: 	in std_logic; --clock in, 100MHz
	JA:		in std_logic_vector(7 downto 0); --JA port input
	JB:		in std_logic_vector(7 downto 0); --JB port input
	JC:		in std_logic_vector(7 downto 0); --JC port input
	JD:		in std_logic_vector(7 downto 0); --JD port input
	LED:	out std_logic_vector(7 downto 0)); --LEDs
end toplevel;

architecture RTL of toplevel is

component JUHTAUTOMAAT is
    Port ( 
			a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input
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
end component;

 component Mux is
  port ( m_op 	: in STD_LOGIC_VECTOR (1 downto 0);
		  
		   y1_tt : in STD_LOGIC; --1 bit intput
		   y2_tt : in STD_LOGIC; -- 1 bit intput 
		   y3_tt : in STD_LOGIC; --1 bit intput
		   y4_tt : in STD_LOGIC_VECTOR (1 downto 0); --2 bit intput
			
			y1_bh : in STD_LOGIC; --1 bit intput
		   y2_bh : in STD_LOGIC; -- 1 bit intput 
		   y3_bh : in STD_LOGIC; --1 bit intput
		   y4_bh : in STD_LOGIC_VECTOR (1 downto 0); --2 bit intput
			
			y1_df : in STD_LOGIC; --1 bit intput
		   y2_df : in STD_LOGIC; -- 1 bit intput 
		   y3_df : in STD_LOGIC; --1 bit intput
		   y4_df : in STD_LOGIC_VECTOR (1 downto 0); --2 bit intput
			
			y1_st : in STD_LOGIC; --1 bit intput
		   y2_st : in STD_LOGIC; -- 1 bit intput 
		   y3_st : in STD_LOGIC; --1 bit intput
		   y4_st : in STD_LOGIC_VECTOR (1 downto 0); --2 bit intput
			
			m_y1 : out STD_LOGIC; --1 bit output
		   m_y2 : out STD_LOGIC; -- 1 bit output 
		   m_y3 : out STD_LOGIC; --1 bit output
		   m_y4 : out STD_LOGIC_VECTOR (1 downto 0) --2 bit output
			); 
end component;

signal y1_tt, y2_tt, y3_tt , y1_bh, y2_bh, y3_bh, y1_df, y2_df, y3_df, y1_st, y2_st, y3_st, LED_y1, LED_y2, LED_y3 :STD_LOGIC;
signal y4_tt,y4_bh ,y4_df ,y4_st, m_y1, m_y2, m_y3, m_y4, m_op, LED_y4 :STD_LOGIC_VECTOR (1 downto 0);

begin
	--assign y1 output to LED-s 1-3 for keeping Bitgen the constraints of setup.
	LED(7)			<=  LED_y1;
	LED(6) 			<=  LED_y1;
	LED(5)			<=  LED_y1;
	
	--assign outputs to LED-s 4-8. 
	LED(4)			<=  LED_y1;
	LED(3) 			<=  LED_y2;
	LED(2)			<=  LED_y3;
	LED(1 downto 0)<=  LED_y4; 
	
MU: MUX port map (
	--input from JB (1 to 0) will be control signal for mux
	m_op => JB(1 downto 0), 
	
	--inputs from JUHTAUTOMAAT tt model
	y1_tt => y1_tt,
	y2_tt => y2_tt,
	y3_tt => y3_tt,
	y4_tt => y4_tt,

	--inputs from JUHTAUTOMAAT bh model
	y1_bh => y1_bh,
	y2_bh => y2_bh,
	y3_bh => y3_bh,
	y4_bh => y4_bh,

	--inputs from JUHTAUTOMAAT df model
	y1_df => y1_df,
	y2_df => y2_df,
	y3_df => y3_df,
	y4_df => y4_df,
	
	--inputs from JUHTAUTOMAAT st model
	y1_st => y1_st,
	y2_st => y2_st,
	y3_st => y3_st,
	y4_st => y4_st,
	
	--outputs to led
	m_y1 => LED_y1,
	m_y2 => LED_y2,
	m_y3 => LED_y3,
	m_y4 => LED_y4
	);

JAM : JUHTAUTOMAAT port map (
	--inputs from JA
	a => JA(6 downto 5),
	b => JA(4 downto 3),
	c => JA(2 downto 1),
	d => JA(0),
	
	--outputs to MUX
	y1_tt => y1_tt,
	y2_tt => y2_tt,
	y3_tt => y3_tt,
	y4_tt => y4_tt,	
	y1_bh => y1_bh,
	y2_bh => y2_bh,
	y3_bh => y3_bh,
	y4_bh => y4_bh,		
	y1_df => y1_df,
	y2_df => y2_df,
	y3_df => y3_df,
	y4_df => y4_df,		
	y1_st => y1_st,
	y2_st => y2_st,
	y3_st => y3_st,
	y4_st => y4_st
	);

end RTL;