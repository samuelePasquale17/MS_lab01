-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;
-------------------------------------------------------------------------------

entity tb_acc is
  
end tb_acc;

-------------------------------------------------------------------------------

architecture TEST of tb_acc is

  component ACC
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
  end component;

  signal A_i          : std_logic_vector(63 downto 0);
  signal B_i          : std_logic_vector(63 downto 0);
  signal CLK_i        : std_logic :='0' ;
  signal RST_n_i      : std_logic;
  signal ACCUMULATE_i : std_logic;
  signal ACC_EN_n_i   : std_logic; -- optional
  signal Y_i_str, Y_i_beh          : std_logic_vector(63 downto 0);

begin  -- TEST

  DUT_beh: ACC
    generic map(N => 64, RCA_DELAY_S => 0 ns, RCA_DELAY_C => 0 ns)
    port map (
        A          => A_i,
        B          => B_i,
        CLK        => CLK_i,
        RST_n      => RST_n_i,
        ACCUMULATE => ACCUMULATE_i,
        ACC_EN_n   => ACC_EN_n_i, -- optional
        Y          => Y_i_beh);

  DUT_struct: ACC
    generic map(N => 64, RCA_DELAY_S => 0 ns, RCA_DELAY_C => 0 ns)
    port map (
        A          => A_i,
        B          => B_i,
        CLK        => CLK_i,
        RST_n      => RST_n_i,
        ACCUMULATE => ACCUMULATE_i,
        ACC_EN_n   => ACC_EN_n_i, -- optional
        Y          => Y_i_str);

    

  
  p_clock: process (CLK_i)

  begin  -- process p_clock
    CLK_i <= not(CLK_i) after 6 ns;
  end process p_clock;

  test: process

  begin  -- process test

  A_i <= (0 => '1', others => '0');                     -- A = 1
  B_i <= (1 => '1', others => '0');                     -- B = 2
  RST_n_i      <= '0';                                  -- RST = 0
  ACC_EN_n_i   <= '0';  -- optional
  ACCUMULATE_i <= '1';                  -- seleziona ingresso FEEDBACK del mux
  

  wait for 12 ns;

  A_i <= (0 => '1', others => '0');
  B_i <= (1 => '1', others => '0');
  RST_n_i      <= '1';
  ACC_EN_n_i   <= '0';   -- optional
  ACCUMULATE_i <= '1';                  -- seleziona ingresso FEEDBACK del mux

  wait for 7 ns;

  A_i <= (0 => '0', others => '0');
  B_i <= (1 => '1', others => '0');
  RST_n_i      <= '1';
  ACC_EN_n_i   <= '0';   -- optional
  ACCUMULATE_i <= '0';                  -- seleziona ingresso B del mux

  wait for 12 ns;


  A_i <= (4 => '1', others => '0');
  B_i <= (1 => '1', others => '0');
  RST_n_i      <= '1';
  ACC_EN_n_i   <= '0';
  ACCUMULATE_i <= '1';                  -- seleziona ingresso FEEDBACK del mux

  wait for 19 ns;

  A_i <= (4 => '1', others => '0');
  B_i <= (1 => '1', others => '0');
  RST_n_i      <= '1';
  ACC_EN_n_i   <= '1';    --- optional
  ACCUMULATE_i <= '1';                  -- seleziona ingresso FEEDBACK del mux

  wait for 20 ns;


  A_i <= (4 => '1', others => '0');
  B_i <= (1 => '1', others => '0');
  RST_n_i      <= '1';
  ACC_EN_n_i   <= '0'; -- optional
  ACCUMULATE_i <= '1';

  wait for 5 ns;


  A_i <= (4 => '1', others => '0');
  B_i <= (8 => '1', others => '0');
  RST_n_i      <= '1';
  ACC_EN_n_i   <= '0';  -- optional
  ACCUMULATE_i <= '0';

  wait ;
    
  end process test;

end TEST;

-------------------------------------------------------------------------------


configuration TESTACC of tb_acc is
  for TEST
      for DUT_beh : ACC
        use configuration WORK.CFG_ACC_BEH;
      end for;

      for DUT_struct : ACC
        use configuration WORK.CFG_ACC_STRUCT;
      end for;
  end for;
end configuration;

