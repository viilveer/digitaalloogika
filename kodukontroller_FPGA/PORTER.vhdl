LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.all;

-- Helper component to map My IO to FPGA IO-s
entity PORTER is 
    Port (
			--input from FPGA
			JA_P:		in std_logic_vector(7 downto 0); --JA port input
			JB_P:		in std_logic_vector(7 downto 0); --JB port input
--			JC_P:		in std_logic_vector(7 downto 0); --JC port input
--			JD_P:		in std_logic_vector(7 downto 0); --JD port input
			
			--input from MUX
			p_mi_y1 : in STD_LOGIC; --1 bit output
		   p_mi_y2 : in STD_LOGIC; -- 1 bit output 
		   p_mi_y3 : in STD_LOGIC; --1 bit output
		   p_mi_y4 : in STD_LOGIC_VECTOR (1 downto 0);--2 bit output
					
			--output to JUHTAUTMAAT	
			p_jao_a : out STD_LOGIC_VECTOR(1 downto 0); --2 bit output
		   p_jao_b : out STD_LOGIC_VECTOR(1 downto 0); --2 bit output
		   p_jao_c : out STD_LOGIC_VECTOR(1 downto 0); --2 bit output
		   p_jao_d : out STD_LOGIC; -- 1 bit output
			
			--output to MUX
			p_mo_op  : out STD_LOGIC_VECTOR (1 downto 0);--2 bit output
			
			P_LED:	out std_logic_vector(7 downto 0) --LEDs
			); 
end PORTER;

architecture design of PORTER is 
begin
--Last 7 bits of JA will be in-signal to JUHTAUTOMAAT
p_jao_a  <= JA_P(6 downto 5);
p_jao_b  <= JA_P(4 downto 3);
p_jao_c  <= JA_P(2 downto 1);
p_jao_d  <= JA_P(0);

--Last 2 bits of JB will be MUX control-signal
p_mo_op  <= JB_P(1 downto 0);

--Last 5 LED lights will be controlled by o-out -signal
JA_P(6 downto 5);
JA_P(4 downto 3);
JA_P(2 downto 1);
JA_P(0);

LED_P_sign <= ("00" & p_mi_y1 & p_mi_y2 & p_mi_y3 & p_mi_y4);
end design;