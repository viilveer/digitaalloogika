------------------------------------------------------------------------------
--  File: mux.vhd
------------------------------------------------------------------------------
--Multiplexer design
--The output is chosen based on 2 bit control signal from 4 signals with length 4 bits
--If control signal is '00' then input from truth table entity (tt) is chosen to the outputs
--If '01' then input from behavioural model (bh) is chosen to the outputs
--If '10' then input from dataflow model(df) is chosen to the outputs
--If '11' then input from structural model(st) is chosen to the outputs

library IEEE;
use IEEE.std_logic_1164.all;

--Multiplexer entity
 entity Mux is
  port ( m_op 	: in STD_LOGIC_VECTOR (1 downto 0);
		  
		   y1_tt : in STD_LOGIC; --1 bit intput
		   y2_tt : in STD_LOGIC; -- 1 bit intput 
		   y3_tt : in STD_LOGIC; --1 bit intput
		   y4_tt : in STD_LOGIC_VECTOR (1 downto 0); --2 bit intput
			
			y1_bh : in STD_LOGIC; --1 bit intput
		   y2_bh : in STD_LOGIC; -- 1 bit intput 
		   y3_bh : in STD_LOGIC; --1 bit intput
		   y4_bh : in STD_LOGIC_VECTOR (1 downto 0); --2 bit intput
			
			y1_df : in STD_LOGIC; --1 bit intput
		   y2_df : in STD_LOGIC; -- 1 bit intput 
		   y3_df : in STD_LOGIC; --1 bit intput
		   y4_df : in STD_LOGIC_VECTOR (1 downto 0); --2 bit intput
			
			y1_st : in STD_LOGIC; --1 bit intput
		   y2_st : in STD_LOGIC; -- 1 bit intput 
		   y3_st : in STD_LOGIC; --1 bit intput
		   y4_st : in STD_LOGIC_VECTOR (1 downto 0); --2 bit intput
			
			m_y1 : out STD_LOGIC; --1 bit output
		   m_y2 : out STD_LOGIC; -- 1 bit output 
		   m_y3 : out STD_LOGIC; --1 bit output
		   m_y4 : out STD_LOGIC_VECTOR (1 downto 0) --2 bit output
			); 
  end Mux;

--Architecture of the multiplexer
architecture RTL of Mux is

begin
--Behavioural process DISP_MUX
DISP_MUX: process (	m_op,
							y1_tt,
							y2_tt,
							y3_tt,
							y4_tt,

							y1_bh,
							y2_bh,
							y3_bh,
							y4_bh,

							y1_df,
							y2_df,
							y3_df,
							y4_df,

							y1_st,
							y2_st,
							y3_st,
							y4_st) --sensitivity list
  begin
 
	case m_op is
		when "00" =>	m_y1 <= y1_tt;
		               m_y2 <= y2_tt;
		               m_y3 <= y3_tt;
		               m_y4 <= y4_tt;
							
		when "01" =>	m_y1 <= y1_bh;
		               m_y2 <= y2_bh;
		               m_y3 <= y3_bh;
		               m_y4 <= y4_bh;
							
		when "10" =>	m_y1 <= y1_df;
		               m_y2 <= y2_df;
		               m_y3 <= y3_df;
		               m_y4 <= y4_df;
							
		when "11" =>	m_y1 <= y1_st;
		               m_y2 <= y2_st;
		               m_y3 <= y3_st;
		               m_y4 <= y4_st;
							
		when others => m_y1 <= '0';
		               m_y2 <= '0';
		               m_y3 <= '0';
		               m_y4 <= "00";
	end case;
end process DISP_MUX;
end RTL;