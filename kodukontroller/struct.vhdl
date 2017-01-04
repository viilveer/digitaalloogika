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
	
	component AND2g is 
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           o : out  STD_LOGIC);
	end component;

	component AND3g is 
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
			  i3 : in  STD_LOGIC;
           o : out  STD_LOGIC);
	end component;
	
	component OR5g is 
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           i4 : in  STD_LOGIC;
           i5 : in  STD_LOGIC;
           o : out  STD_LOGIC);
	end component;
		
	component OR7g is 
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           i4 : in  STD_LOGIC;
           i5 : in  STD_LOGIC;
           i6 : in  STD_LOGIC;
           i7 : in  STD_LOGIC;
           o : out  STD_LOGIC);
	end component;
	
	component OR8g is 
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           i4 : in  STD_LOGIC;
           i5 : in  STD_LOGIC;
           i6 : in  STD_LOGIC;
           i7 : in  STD_LOGIC;
           i8 : in  STD_LOGIC;
           o : out  STD_LOGIC);
	end component;
	
	component OR10g is 
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           i4 : in  STD_LOGIC;
           i5 : in  STD_LOGIC;
           i6 : in  STD_LOGIC;
           i7 : in  STD_LOGIC;
           i8 : in  STD_LOGIC;
           i9 : in  STD_LOGIC;
			  i10 : in  STD_LOGIC;
           o : out  STD_LOGIC);
	end component;
	
	component NOTg is
    Port ( i1 : in  STD_LOGIC;
           o : out  STD_LOGIC);
	end component;

	signal 	t1, t2, t3, t4, t5, t7, t8, t9, t10, t11, t12, t14, t15,				
				notA1, notA0, notB1, notB0, notC1, notC0, notD,
				Y1_or, Y2_or, Y3_or, Y41_or, Y40_or 
				: STD_LOGIC;
begin
c_notA1 : NOTg
				port map (a(1), notA1);
c_notA0 : NOTg
				port map (a(0), notA0);
c_notB1 : NOTg
				port map (b(1), notB1);
c_notB0 : NOTg
				port map (b(0), notB0);
c_notC1 : NOTg
				port map (c(1), notC1);
c_notC0 : NOTg
				port map (c(0), notC0);
c_notD : NOTg
				port map (d, notD);	

na8 : NOTg
				port map (y1_or, y1);
na9 : NOTg
				port map (y2_or, y2);
na10 : NOTg
				port map (y3_or, y3);
na11 : NOTg
				port map (y41_or, y4(1));
na12 : NOTg
				port map (y40_or, y4(0));

c_y1_or : OR8g
			port map (t1, t2, t4, t8, t9, t11, b(0), t14, y1_or);
c_y2_or : OR7g
			port map (t1, t9, t10, t11, b(0), t15, notD, y2_or);
c_y3_or : OR5g
			port map (t1, notA0, t7, t15, notD, y3_or);			
c_y41_or : OR5g
			port map (t1, t2, b(0), t15, notC0, y41_or);
c_y40_or : OR10g
			port map (t1, t3, t4, t5, t7, t8, t10, t12, t14, t15, y40_or);

c_t_1 :  AND2g
			port map (a(1), a(0), t1);
c_t_2 :  AND3g
			port map (a(1), b(1), notD, t2);			
c_t_3 :  AND3g
			port map (a(1), notC1, notD, t3);	
c_t_4 :  AND3g
			port map (notA1, b(1), c(1), t4);	
c_t_5 :  AND3g
			port map (a(0), b(0), notD, t5);		
c_t_7 :  AND2g
			port map (b(1) , b(0), t7);	
c_t_8 :  AND3g
			port map (b(1), c(1), d, t8);	
c_t_9 :  AND2g
			port map (b(1), notC1, t9);	
c_t_10 : AND3g
			port map (notB1, notB0, notC1, t10);	
c_t_11 : AND2g
			port map (notB1, c(1), t11);	
c_t_12 : AND2g
			port map (b(0), notC0, t12);	
c_t_14 : AND2g
			port map (notB0, c(0), t14);	
c_t_15 : AND2g
			port map (c(1), c(0), t15);


end architecture structual;