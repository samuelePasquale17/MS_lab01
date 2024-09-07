library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;

-- multiplexer with 2 inputs on n bits
entity mux21_generic is
	generic (NBIT : integer := numBit;
			DELAY_MUX: Time:= tp_mux
	);
	port(
		A : 	in 		std_logic_vector(NBIT-1 downto 0);
		B : 	in 		std_logic_vector(NBIT-1 downto 0);
		SEL : 	in 		std_logic;
		Y : 	out 	std_logic_vector(NBIT-1 downto 0)
	);
end entity;

-- beheavioral description of the multiplexer with a certain
-- delay defined in the constants file.
-- Based on the selection signal value the mux drives a different
-- input as output. In particular if the selection signal is 1
-- we drive A as output, otherwise the output will be the input B
architecture ARCHBEH of mux21_generic is
begin
	process (A, B, SEL) -- process behavioral description
	begin
		if (SEL = '1') then
			Y <= A after DELAY_MUX;
		else 
			Y <= B after DELAY_MUX;
		end if;
	end process;
end architecture;

-- architectural description. It uses multiple mux21 to
-- handle inputs on n bits instead of 1-bit inputs 
architecture ARCHSTRUCT of mux21_generic is

	component mux21 is
		port(
			A : 	in 		std_logic;
			B : 	in 		std_logic;
			S : 	in 		std_logic;
			Y : 	out 	std_logic
		);
	end component;

begin

	gen : for i in 0 to NBIT-1 generate -- generate block with loop
		mux21_g : mux21 port map (
			A => A(i),
			B => B(i),
			S => SEL,
			Y => Y(i)
		);
	end generate gen;
end architecture;

configuration CFG_MUX21_GEN_BEHAVIORAL of mux21_generic is
	for ARCHBEH 
	end for;
end configuration;

configuration CFG_MUX21_GEN_STRUCTURAL of mux21_generic is
	for ARCHSTRUCT
          for gen
		for all : mux21
                  use configuration work.CFG_MUX21_ARCHSTRUCT;
                end for;
          end for;
	end for;
end configuration;
