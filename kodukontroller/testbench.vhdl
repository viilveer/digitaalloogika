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
			   y1 : in STD_LOGIC; --1 bit output
			   y2 : in STD_LOGIC; -- 1 bit output 
			   y3 : in STD_LOGIC; --1 bit output
			   y4 : in STD_LOGIC_VECTOR (1 downto 0); --2 bit output
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
	report "Test some of the truth table";
	a_tb <= "01";
	b_tb <= "01";
	c_tb <= "00";
	d_tb <= '1';

	wait for 10ns;

	wait;
end process;

end testbench;