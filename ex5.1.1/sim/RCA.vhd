library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity RCA is
	generic (
		DRCAS 	: time 		:= 0 ns;		-- Delay RCA Sum
		DRCAC 	: time 		:= 0 ns;		-- Delay RCA Carry out
		N 	: integer 	:= NumBit
	);
	port(
		A 	: 	in 		std_logic_vector(N-1 downto 0);
		B 	: 	in 		std_logic_vector(N-1 downto 0);
		Ci 	: 	in 		std_logic;
		S 	: 	out 	std_logic_vector(N-1 downto 0);
		Co 	: 	out 	std_logic
	);
end entity;

-- generic ripple carry adder described as a connection of FAs.
-- the carry is forwarded from a FA to the next one within the chain of FAs

architecture ARCHBEH of RCA is					-- behavioral description
begin
        -- in the behavioral description the outputs are driven with a certain
        -- delay 
	process (A, B, Ci)
        variable sum : unsigned(N downto 0); -- support variable
        
	begin

          -- mapping the outpus, the MSB is the carry out, while the other bis
          -- are the final sum
          sum := unsigned('0' & A) + unsigned('0' & B) + ('0' & Ci);
          S <= std_logic_vector(sum(N-1 downto 0)) after DRCAS;
          Co <= sum(N) after DRCAC;
	end process;


end architecture;


-- structural description of the RCA as a connection of FA
architecture ARCHSTRUCT of RCA is

	component FA is			
		generic (
			DFAS : time := 0 ns;
			DFAC : time := 0 ns
		);
		port(
			A 	: 	in 		std_logic;
			B 	: 	in 		std_logic;
			Ci 	: 	in 		std_logic;
			S 	: 	out 	std_logic;
			Co 	: 	out 	std_logic
		);
	end component;
	
        signal STMP : std_logic_vector(N-1 downto 0); -- vector for the sum
        signal CTMP : std_logic_vector(N downto 0); -- vector for the ripple of
                                                    -- the carry

begin
  CTMP(0) <= Ci;        -- set the carry in
  S <= STMP;            -- map the sum 
  Co <= CTMP(N);        -- the last bit is the carry out

  ADDER1: for I in 1 to N generate -- loop generate block for the connection of
                                   -- all FAs
    FAI : FA 
      generic map (DFAS => DRCAS, DFAC => DRCAC) 
      port map (A(I-1), B(I-1), CTMP(I-1), STMP(I-1), CTMP(I)); 
    end generate;

end architecture;

configuration CFG_RCA_ARCHBEH of RCA is
	for ARCHBEH
	end for;
end configuration;

configuration CFG_RCA_ARCHSTRUCT of RCA is
	for ARCHSTRUCT
          for ADDER1
            for all : FA
              use configuration work.CFG_FA_ARCHBEH;
            end for;
          end for;
	end for;
end configuration;
