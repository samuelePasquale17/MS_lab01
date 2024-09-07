library ieee;
use ieee.std_logic_1164.all;

entity FD is
	port (
		D 	: 	in 		std_logic;
		clk : 	in 		std_logic;
		rst : 	in 		std_logic;
        en_n : in std_logic;                      -- enable active high =>
                                                        -- en = 1 active
                                                        -- en = 0 not active 
		Q 	: 	out 	std_logic
	);
end entity;

-- ATTENTION the enable signal has a lower priority then the reset signal

-- behavioral synchronous reset description
architecture ARCHBEHSYN of FD is
begin
	process (clk)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then			-- syncronous reset 
				Q <= '0';
			elsif (en_n = '0') then
				Q <= D;
			end if;
		end if;
	end process;
	
end architecture;


-- behavioral asynchronous reset description
architecture ARCHBEHASYN of FD is
begin
	process(clk, rst) 
	begin
		if (rst = '1') then				-- asyncronous reset
			Q <= '0';
		elsif(rising_edge(clk) and (en_n = '0')) then
			Q <= D;
		end if;
	end process;
end architecture;

configuration CFG_FD_ARCHBEHSYN of FD is	-- configuration for sync FD
	for ARCHBEHSYN
	end for;
end configuration;


configuration CFG_FD_ARCHBEHASYN of FD is	-- configuration for async FD
	for ARCHBEHASYN
	end for;
end configuration;
