LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all; --just in case library
use ieee.std_logic_arith.all; --just in case library

entity sensor_peoples is 
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input 
			o_sensor_people : out  STD_LOGIC ); -- 1 bit output
end sensor_peoples;

architecture design of sensor_peoples is 


begin

end design;

