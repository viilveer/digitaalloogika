LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all; --just in case library
use ieee.std_logic_arith.all; --just in case library

entity lights is
	-- define inputs after logic table
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input 
			o_lights : out  STD_LOGIC ); -- 1 bit output
end lights;

architecture design of lights is 


begin

end design;

