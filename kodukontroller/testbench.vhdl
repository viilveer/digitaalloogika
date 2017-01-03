LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
 
ENTITY JUHTAUTOMAAT_TB IS --entity of the testbench is always empty
END JUHTAUTOMAAT_TB;

ARCHITECTURE testbench OF JUHTAUTOMAAT_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
	component JUHTAUTOMAAT is
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
	end component;
    
   --Inputs from the testbench
   	signal a_tb : std_logic_vector(1 downto 0) := (others => '0');
   	signal b_tb : std_logic_vector(1 downto 0) := (others => '0');
   	signal c_tb : std_logic_vector(1 downto 0) := (others => '0');
   	signal d_tb : std_logic;
  
 	--Output from the testbench
   	signal y1_tt_tb : std_logic;
   	signal y2_tt_tb : std_logic;
   	signal y3_tt_tb : std_logic;
   	signal y4_tt_tb : std_logic_vector(1 downto 0);
	
	signal y1_bh_tb : std_logic;
   	signal y2_bh_tb : std_logic;
   	signal y3_bh_tb : std_logic;
   	signal y4_bh_tb : std_logic_vector(1 downto 0);
	
	signal y1_df_tb : std_logic;
   	signal y2_df_tb : std_logic;
   	signal y3_df_tb : std_logic;
   	signal y4_df_tb : std_logic_vector(1 downto 0);
	
	signal y1_st_tb : std_logic;
   	signal y2_st_tb : std_logic;
   	signal y3_st_tb : std_logic;
   	signal y4_st_tb : std_logic_vector(1 downto 0);
	
	--combined input vector
	signal input_tb : std_logic_vector (6 downto 0) := (others => '0');
	
begin
		--component port map	
	   uut: JUHTAUTOMAAT port map (
          a => a_tb,
          b => b_tb,
          c => c_tb,
          d => d_tb,
			 
          y1_tt => y1_tt_tb,
          y2_tt => y2_tt_tb,
          y3_tt => y3_tt_tb,
          y4_tt => y4_tt_tb,
			 
			 y1_bh => y1_bh_tb,
          y2_bh => y2_bh_tb,
          y3_bh => y3_bh_tb,
          y4_bh => y4_bh_tb,
			 
			 y1_df => y1_df_tb,
          y2_df => y2_df_tb,
          y3_df => y3_df_tb,
          y4_df => y4_df_tb,
			 
			 y1_st => y1_st_tb,
          y2_st => y2_st_tb,
          y3_st => y3_st_tb,
          y4_st => y4_st_tb
        ); 
		  
process
	
begin
	-- tests here
	
	for i in 0 to 127 loop		-- ### NB ### ToDo CONCATENATE THE input_tb as STRING HERE
		report "Test truthtable column nr. " & INTEGER'IMAGE(i);		
		input_tb <= std_logic_vector(conv_unsigned(i,7));
			A_tb(1) <= input_tb(6);
			A_tb(0) <= input_tb(5);
			B_tb(1) <= input_tb(4);
			B_tb(0) <= input_tb(3);
			C_tb(1) <= input_tb(2);
			C_tb(0) <= input_tb(1);
			D_tb    <= input_tb(0);
		wait for 10ns;
	end loop;
	wait;
end process;

end testbench;