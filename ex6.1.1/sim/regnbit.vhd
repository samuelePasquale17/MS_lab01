library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;


entity regNbit is
	generic (N : integer := Numbit);
	port(
		D : in std_logic_vector(N-1 downto 0);
		clk, rst : in std_logic;
                en_n : in std_logic;                    -- enable active low
                                                      -- (lower priority then rst)
		Q : out std_logic_vector(N-1 downto 0)
	);
end entity;

-- register on N bits designed as a connection of FFs type D with a parallel
-- input and output, while the reset and clock signals are shared among all the
-- FFs

-- synchronous reset description
architecture ARCHBEHSYNQ of regNbit is
	component FD is
		port (
			D 	: 	in 		std_logic;
			clk : 	in 		std_logic;
			rst : 	in 		std_logic;
                        en_n : in std_logic;
			Q 	: 	out 	std_logic
		);
	end component;
	
begin

	gen : for i in 0 to N-1 generate -- connection of flip flops type D
		FD_g : FD port map(
			D => D(i),
			clk => clk,
			rst => rst,
                        en_n => en_n,
			Q => Q(i)
		);
	end generate gen;


end architecture;

-- asynchronous reset description 
architecture ARCHBEHASYNQ of regNbit is
	component FD is
		port (
			D 	: 	in 		std_logic;
			clk : 	in 		std_logic;
			rst : 	in 		std_logic;
                        en_n : in std_logic;
			Q 	: 	out 	std_logic
		);
	end component;
	
begin

	gen : for i in 0 to N-1 generate -- connection of flip flops type D
                                         -- with generate loop statement
		FD_g : FD port map(
			D => D(i),
			clk => clk,
			rst => rst,
                        en_n => en_n,
			Q => Q(i)
		);
	end generate gen;

end architecture;

configuration CFG_REGNBIT_ARCHBEHSYNQ of regNbit is

	for ARCHBEHSYNQ
          for gen
		for all : FD 
			use configuration work.CFG_FD_ARCHBEHSYN;
		end for;
          end for;
	end for;
	
end configuration;

configuration CFG_REGNBIT_ARCHBEHASYNQ of regNbit is
	for ARCHBEHASYNQ
          for gen
		for all : FD
			use configuration work.CFG_FD_ARCHBEHASYN;
		end for;
          end for;
	end for;
end configuration;
