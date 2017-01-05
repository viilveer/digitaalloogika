LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all; --just in case library
use ieee.std_logic_arith.all; --just in case library

entity tt is 
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input
		   b : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input 
		   c : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
		   d : in STD_LOGIC; --1 bit input
		   y1 : out STD_LOGIC; --1 bit output
		   y2 : out STD_LOGIC; -- 1 bit output 
		   y3 : out STD_LOGIC; --1 bit output
		   y4 : out STD_LOGIC_VECTOR (1 downto 0) --2 bit output 
	);
end tt;

architecture design of tt is 
	signal input : std_logic_vector (6 downto 0) := (others => '0');
begin
	
	input <= (
		6 => A(1),
		5 => A(0),     
		4 => B(1),     
		3 => B(0),  
		2 => C(1),  
		1 => C(0),  
		0 => D 
	);
	
	with input select
		y1 <=	'1' when "0000000",
				'1' when "0000001",
				'1' when "0100000",
				'1' when "0100001",
				'1' when "1000000",
				'1' when "1000001",
			 	'0' when others;
	with input select
		y2 <=	'1' when "0010101",
				'1' when "0110101",
				'1' when "1010101",
			 	'0' when others;
	with input select
		y3 <=	'1' when "0100001",
				'1' when "0100011",
				'1' when "0100101",
				'1' when "0101001",
				'1' when "0101011",
				'1' when "0101101",
				'1' when "0110001",
				'1' when "0110011",
				'1' when "0110101",
			 	'0' when others;
	with input select
		y4 <=	"01" when "0000100",
				"01" when "0000101",
				"01" when "0001010",
				"01" when "0001011",
				"01" when "0010000",
				"01" when "0010001",
				"01" when "0100100",
				"01" when "0100101",
				"01" when "0101011",
				"01" when "0110000",
				"01" when "0110001",
				"01" when "1000100",
				"01" when "1000101",
				"01" when "1001011",
				"01" when "1010001",
				"01" when "1010100",
				"10" when "0000010",
				"10" when "0000011",
				"10" when "0010010",
				"10" when "0010011",
				"10" when "0100010",
				"10" when "0100011",
				"10" when "0110010",
				"10" when "0110011",
				"10" when "1000010",
				"10" when "1000011",
				"10" when "1010011",
			 	"00" when others;
end design;

