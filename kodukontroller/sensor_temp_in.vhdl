LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all; --just in case library
use ieee.std_logic_arith.all; --just in case library

entity sensor_temp_in is 
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input 
			o_sensor_temp_in : out  STD_LOGIC_VECTOR (1 downto 0) ); -- 2 bit output
end sensor_temp_in;

architecture design of sensor_temp_in is 


begin

end design;

