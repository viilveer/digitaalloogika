library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity behave is 
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input outside light
		   b : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bit input inside temp 
		   c : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input outside temp
		   d : in STD_LOGIC; --1 bit input people home
		   y1 : out STD_LOGIC; --1 bit output heating
		   y2 : out STD_LOGIC; -- 1 bit output AC
		   y3 : out STD_LOGIC; --1 bit output curtains
		   y4 : out STD_LOGIC_VECTOR (1 downto 0) --2 bit output ventilation
	);
end behave;

architecture behavioral of behave is
begin 
	-- heating logic
	process(b,c) begin 
		if b = "00" and c = "00" then -- coldest inside and outside, heat on.
			y1 <= '1';
		else
			y1 <= '0';
		end if;
	end process;

	-- curtain logic
	process(a,c,d) begin 
		if a = "00" then
			y3 <= '1';
		elsif a = "10" then
			if c = "10" and d = '0' then
				y3 <= '1'; end if;
		else 
			y3 <= '0';		
		end if;
	end process;

	-- AC logic
	process(b,c,d) begin 
		if b = "10" and c = "10" and d = '1' then
			y2 <= '1';
		else 
			y2 <= '0';
		end if;
	end process;

	-- ventilation logic
	process(b,c) begin 
		if b = "00" and c = "01" then
			y4 <= "10";
		elsif b = "00" and c = "10" then
			y4 <= "01";
		elsif b = "01" and c= "01" then
			y4 <= "01";
		elsif b = "10" and c = "00" then
			y4 <= "01";
		elsif b = "10" and c = "01" then
			y4 <= "10"; 
		end if;
	end process;
end architecture behavioral;


