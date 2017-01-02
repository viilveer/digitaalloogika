----------------------------------------------------------------------------------
-- Tallinn University of Technology
-- Keijo Lass, Priit Ruberg
-- Playground FPGA toplevel module
-- Create Date:    10:52:20 11/17/2016 

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


begin

------------------------------------
--- Example of JA input sent to LEDs!
------------------------------------
LED <= JA or JB or JC or JD;

end RTL;