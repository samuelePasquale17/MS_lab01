library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;

entity tb_regNbit is
end entity;

architecture TEST of tb_regNbit is

	component regNbit is
		generic (N : integer := Nbit);
		port(
			D : in std_logic_vector(N-1 downto 0);
			clk, rst : in std_logic;
			Q : out std_logic_vector(N-1 downto 0)
		);
	end component;
	
	signal D_s, Q_s1, Q_s2 : std_logic_vector(7 downto 0);
	signal clk_s, rst_s : std_logic;
	
begin

	DUT_asynq : regNbit generic map(8)
						port	map(
							D => D_s,
							clk => clk_s,
							rst => rst_s,
							Q => Q_s1
						);
						
	DUT_synq : regNbit  generic map(8)
						port 	map(
							D => D_s,
							clk => clk_s,
							rst => rst_s,
							Q => Q_s2
						);
						
	clk_process : process	-- clk process, waveform period = 40 ns
	begin
		clk_s <= '0';
		wait for 20 ns;
		clk_s <= '1';
		wait for 20 ns;
	end process;
	
	test_vector : process
	begin
		rst_s <= '1'; 			-- reset at the beginning both registers
		
		D_s <= "11111010";		-- value as input
		wait for 50 ns;			-- after 1 clk period  stop reset
		
		rst_s <= '0';
		
		wait for 104 ns;

		D_s <= "01110101";		-- value as input

		
		wait;
	
	end process;

end architecture;

configuration REGNTEST of tb_regNbit is
  for TEST
    for DUT_asynq : regNbit
      use configuration work.CFG_REGNBIT_ARCHBEHASYNQ;
    end for;

    for DUT_synq : regNbit
      use configuration work.CFG_REGNBIT_ARCHBEHSYNQ;
    end for;
  end for;
end configuration;
