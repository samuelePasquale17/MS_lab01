library ieee;
use ieee.std_logic_1164.all;

entity FD is
	port (
		D 	: 	in 		std_logic;
		clk : 	in 		std_logic;
		rst : 	in 		std_logic;
		Q 	: 	out 	std_logic
	);
end entity;

-- behavioral description of the flip flop type D with synchronous
-- reset
architecture ARCHBEHSYN of FD is
begin
	process (clk) -- process sensitive to the clock signal only
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then			-- syncronous reset 
				Q <= '0'; -- when reset active, we zeroed out
                                          -- the output
			else
				Q <= D;
			end if;
		end if;
	end process;
	
end architecture;


-- behavioral description of the flip flop type D with asynchronous reset
-- signal 
architecture ARCHBEHASYN of FD is
begin
	process(clk, rst) -- adding reset signal to the sensitivity list
	begin
		if (rst = '1') then				-- asyncronous reset
			Q <= '0';
		elsif(rising_edge(clk)) then
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
