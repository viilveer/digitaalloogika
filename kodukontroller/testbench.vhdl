LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all; --just in case library
use ieee.std_logic_arith.all; --just in case library
 
ENTITY JUHTAUTOMAAT_TB IS --entity of the testbench is always empty
END JUHTAUTOMAAT_TB;

ARCHITECTURE testbench OF JUHTAUTOMAAT_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
	component JUHTAUTOMAAT is
	    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input
			   b : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input 
			   c : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
			   d : in STD_LOGIC; --1 bit output
			   y1 : out STD_LOGIC; --1 bit output
			   y2 : out STD_LOGIC; -- 1 bit output 
			   y3 : out STD_LOGIC; --1 bit output
			   y4 : out STD_LOGIC_VECTOR (1 downto 0); --2 bit output
		); 
	end component;
    
   --Inputs from the testbench
   signal a_tb : std_logic_vector(1 downto 0) := (others => '0');
   signal b_tb : std_logic_vector(1 downto 0) := (others => '0');
   signal c_tb : std_logic_vector(1 downto 0) := (others => '0');
   signal d_tb : std_logic;
  
 	--Output from the testbench
   signal y1_tb : std_logic;
   signal y2_tb : std_logic;
   signal y3_tb : std_logic;
   signal y4_tb : std_logic_vector(1 downto 0);

begin
		--component port map
	   uut: JUHTAUTOMAAT port map (
          a => a_tb,
          b => b_tb,
          c => c_tb,
          d => d_tb,
          y1 => y1_tb,
          y2 => y2_tb,
          y3 => y3_tb,
          y4 => y4_tb
        ); 
process
begin
	-- tests here
	signal input_tb : std_logic_vector (6 downto 0) := (others => '0');
	input_tb <= (
		6 =>A_tb(1),
		5 =>A_tb(0),     
		4 =>B_tb(1),     
		3 =>B_tb(0),  
		2 =>C_tb(1),  
		1 =>C_tb(0),  
		0 =>D_tb 
	);	
	
	for i in 0 to 118 loop		
		report "Test truth table column nr. " --CONCATENATE THE input_tb as STRING HERE;
		
		a_tb(1) <= input_tb(6);
		a_tb(0) <= input_tb(5);
		b_tb(1) <= input_tb(4);
		b_tb(0) <= input_tb(3);
		c_tb(1) <= input_tb(2);
		c_tb(0)<= input_tb(1);
		d_tb <= input_tb(0);

		wait for 10ns;
		input_tb <= std_logic_vector((unsigned(input_tb) + 1));
	end loop;
	
	wait;
end process;

end testbench;