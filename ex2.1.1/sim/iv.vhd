library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;

entity iv is
	port(
		A : 	in 		std_logic;
		Y : 	out 	std_logic
	);
end entity;

architecture ARCHSTRUCT of iv is -- inverter architecture
begin
	Y <= not(A) after IVDELAY; -- output with delay
end architecture;

configuration CFG_IV_ARCHSTRUCT of iv is
	for ARCHSTRUCT
	end for;
end configuration;
