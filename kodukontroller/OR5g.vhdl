----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:15:39 01/04/2017 
-- Design Name: 
-- Module Name:    OR5 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OR5g is
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           i4 : in  STD_LOGIC;
           i5 : in  STD_LOGIC;
           o : out  STD_LOGIC);
end OR5g;

architecture Behavioral of OR5g is

begin
o <= i1 or i2 or i3 or i4 or i5;
end Behavioral;

