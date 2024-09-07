library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;

entity FA is			-- full adder
	generic (
		DFAS : time := 0 ns;	-- Delay FA Sum
		DFAC : time := 0 ns		-- Delay FA Carry out
	);
	port(
		A 	: 	in 		std_logic;
		B 	: 	in 		std_logic;
		Ci 	: 	in 		std_logic;
		S 	: 	out 	std_logic;
		Co 	: 	out 	std_logic
	);
end entity;

-- full adder with behavioral description 

architecture ARCHBEH of FA is
begin
  -- both sum and carry out are driven with as output
  -- with delays defined into the constant file
	S <= A xor B xor Ci after DFAS;                                 -- sum
	Co <= (A and B) or (A and Ci) or (B and Ci) after DFAC;         -- carry out
end architecture;

configuration CFG_FA_ARCHBEH of FA is
	for ARCHBEH
	end for;
end configuration;
