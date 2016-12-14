LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all; --just in case library
use ieee.std_logic_arith.all; --just in case library

entity conditioning is
	-- define inputs after logic table
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input 
			o_conditioning : out  STD_LOGIC ); -- 1 bit output
end conditioning;

architecture design of conditioning is 


begin

end design;

