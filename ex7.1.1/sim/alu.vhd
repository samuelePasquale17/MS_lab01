library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
--use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use work.constants.all;
use work.alu_types.all;

entity ALU is
	generic (
		N : integer := NumBit
	);
	port (
		FUNC : in type_op;
		DATA1, DATA2 : in std_logic_vector(N-1 downto 0);
		OUTALU : out std_logic_vector(N-1 downto 0)
	);
end entity;

-- behavioral description of the ALU
architecture ARCHBEH of ALU is
begin
	ALUproc : process (FUNC, DATA1, DATA2)
        variable data1_v, data2_v : unsigned(N-1 downto 0); -- definition of
                                                            -- variables for
                                                            -- operators and
                                                            -- for the result
        variable res : unsigned(N-1 downto 0);
	begin
          data1_v := unsigned(DATA1); -- variable assignment with inputs
          data2_v := unsigned(DATA2);
		
		case FUNC is
		when ADD 	=>
                  res := data1_v + data2_v; -- addition
			
		when SUB 		=>
                   res := data1_v - data2_v; -- subtraction
		
		when MULT 		=> -- multiplication
                  res := data1_v(((N/2)-1) downto 0) * data2_v(((N/2)-1) downto 0);
		
		when BITAND 	=>
                  res := data1_v and data2_v; -- and bitwise
		
		when BITOR    =>
                   res := data1_v or data2_v; -- or bitwise
		
		when BITXOR 	=>
                   res := data1_v xor data2_v; -- xor bitwise
		
		when FUNCLSL 	=> 	-- shift left by one
					res := data1_v(N-2 downto 0) & '0';
			
		when FUNCLSR 	=> -- shift right by one
					res := '0' & data1_v(N-1 downto 1);
		
		when FUNCRL 	=>	-- rotate left by one position
					res := data1_v(N-2 downto 0) & data1_v(N-1);
		
		when FUNCRR 	=>	-- rotate right by one position
					res := data1_v(0) & data1_v(N-1 downto 1);
		
		when others => -- in case of wrong FUNC we zeroed-out the output
			res := (others => '0');
		
		end case; 
		OUTALU <= std_logic_vector(res); -- drive the output computed
	end process;
     
	
end architecture;

configuration CFG_ALU_BEH of ALU is
	for ARCHBEH 
	end for;
end configuration;

