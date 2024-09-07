library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;

entity mux21_generic is
	generic (N : integer := NumBit);
	port(
		A : 	in 		std_logic_vector(N-1 downto 0);
		B : 	in 		std_logic_vector(N-1 downto 0);
		S : 	in 		std_logic;
		Y : 	out 	std_logic_vector(N-1 downto 0)
	);
end entity;

-- architectural description of the generic multiplexer on N bits.
architecture ARCHBEH of mux21_generic is
begin
        -- behavioral description
        -- if the selection signal is 1 we drive A as output, otherwise B will
        -- be the ouput
	process (A, B, S)
	begin
		if (S = '1') then
			Y <= A;
		else 
			Y <= B;
		end if;
	end process;
end architecture;

-- structural description of the MUX as interconnection of N mux21 on 1
-- bit
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

	gen : for i in 0 to N-1 generate -- generate loop block
		mux21_g : mux21 port map (
			A => A(i),
			B => B(i),
			S => S,
			Y => Y(i)
		);
	end generate gen;
end architecture;

configuration CFG_mux21_generic_ARCHBEH of mux21_generic is
	for ARCHBEH 
	end for;
end configuration;

configuration CFG_mux21_generic_ARCHSTRUCT of mux21_generic is
	for ARCHSTRUCT
          for gen
		for all : mux21
                  use configuration work.CFG_MUX21_ARCHSTRUCT;
                end for;
          end for;
	end for;
end configuration;
