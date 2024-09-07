library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity ACC is
    generic(
      N : integer := NumBit;
      RCA_DELAY_S : time := 0 ns;
      RCA_DELAY_C : time := 0 ns
    );
    port (
      A          : in  std_logic_vector(N - 1 downto 0);
      B          : in  std_logic_vector(N - 1 downto 0);
      CLK        : in  std_logic;
      RST_n      : in  std_logic;
      ACCUMULATE : in  std_logic;
      ACC_EN_n   : in  std_logic;  -- optional use of the enable
      Y          : out std_logic_vector(N - 1 downto 0));
end entity;



-- structural description of the accumulator
architecture ARCHSTRUCT of ACC is

	component mux21_generic is      	-- multiplexer
		generic (N : integer := NumBit);
		port(
			A : 	in 		std_logic_vector(N-1 downto 0);
			B : 	in 		std_logic_vector(N-1 downto 0);
			S : 	in 		std_logic;
			Y : 	out 	std_logic_vector(N-1 downto 0)
		);
	end component;
	
	component regNbit is		        	-- register
		generic (N : integer := NumBit);
		port(
			D : in std_logic_vector(N-1 downto 0);
			clk, rst : in std_logic;
                        en_n : in std_logic;
			Q : out std_logic_vector(N-1 downto 0)
		);
	end component;
	
	
	component RCA is			        	-- adder
		generic (
			DRCAS 	: time 		:= RCA_DELAY_S;		
			DRCAC 	: time 		:= RCA_DELAY_C;		
			N 	: integer 	:= NumBit
		);
		port(
			A 	: 	in 		std_logic_vector(N-1 downto 0);
			B 	: 	in 		std_logic_vector(N-1 downto 0);
			Ci 	: 	in 		std_logic;
			S 	: 	out 	std_logic_vector(N-1 downto 0);
			Co 	: 	out 	std_logic
		);
	end component;


        -- definitio of the internal signals
	signal out_mux, out_add, feed_back : std_logic_vector(N-1 downto 0);
	signal rst_inv : std_logic;

begin
        -- the reset is active low for the accumulator but since the reset for
        -- the register have been implemented with the reset active high we
        -- added and inverter to drive the reset signal to the register properly
	rst_inv <= not(RST_n);

	MUX1 : mux21_generic 	generic map(N => N)  -- mapping of the multiplexer
					port map(A => feed_back, B => B, S => ACCUMULATE, Y => out_mux);

        -- mapping the ripple carry adder
	RCA1 : RCA 		generic map(N => N, DRCAS => RCA_DELAY_S, DRCAC => RCA_DELAY_C)
					port map(A => A, B => out_mux, Ci => '0', S => out_add, Co => open);

        -- mapping the register
	REG1 : regNbit 	generic map(N => N)
					port map(D => out_add, clk => CLK, rst => rst_inv, en_n => ACC_EN_n, Q => feed_back);
					
	Y <= feed_back; -- drive the output

end architecture;


-- behavioral description of the accumulator with 3 processes
architecture ARCHBEH of ACC is

        -- internal signals
	signal feed_back, out_add, out_mux : std_logic_vector(N-1 downto 0);

begin
        -- prcess that descrive the MUX behavior. it is sensitive to the
        -- accumulate signal, the input A and the feed_back signal that drives
        -- as input the output Y of the accumulator
	MUXproc : process(A, feed_back, ACCUMULATE)		-- mux process, (accumulate = 1) => feed_back
	begin
        
		if (ACCUMULATE = '1') then -- accumulate
			out_mux <= feed_back;
		else
			out_mux <= B;           -- addition A + B
		end if;
	end process;

        -- process that describes the adder. It is sensitive to the input A and
        -- the output of the multiplexer
	ADDproc : process(A, out_mux)
	begin
                -- addition with a certain delay
		out_add <= std_logic_vector(unsigned(A) + unsigned(out_mux)) after RCA_DELAY_S;
	end process;

        
	-- process that describes the register behavior
	REGproc : process(CLK, RST_n)
	begin
		if (RST_n = '0') then -- reset active low
			feed_back <= (others => '0'); -- zeroed-out the content
                                                      -- of the register
		elsif (rising_edge(CLK)) then -- edge sensitive
			if (ACC_EN_n = '0') then -- accumulator signal active low
				feed_back <= out_add;
			end if;
		end if;
	end process;
	
	Y <= feed_back;


end architecture;


configuration CFG_ACC_BEH of ACC is
  for ARCHBEH
  end for;
end configuration;

configuration CFG_ACC_STRUCT of ACC is
  for ARCHSTRUCT
    for MUX1 : mux21_generic
      use configuration work.CFG_mux21_generic_ARCHSTRUCT;
    end for;

    for RCA1 : RCA
      use configuration work.CFG_RCA_ARCHSTRUCT;
    end for;

    for REG1 : regNbit
      use configuration work.CFG_REGNBIT_ARCHBEHASYNQ;
    end for;
    
  end for;
end configuration;
