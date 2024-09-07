
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_regNbit is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_regNbit;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_regNbit.all;

entity FD_3 is

   port( D, clk, rst : in std_logic;  Q : out std_logic);

end FD_3;

architecture SYN_ARCHBEHASYN of FD_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1000 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => clk, RN => n2, Q => Q, QN => n_1000)
                           ;
   U3 : INV_X1 port map( A => rst, ZN => n2);

end SYN_ARCHBEHASYN;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_regNbit.all;

entity FD_2 is

   port( D, clk, rst : in std_logic;  Q : out std_logic);

end FD_2;

architecture SYN_ARCHBEHASYN of FD_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1001 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => clk, RN => n2, Q => Q, QN => n_1001)
                           ;
   U3 : INV_X1 port map( A => rst, ZN => n2);

end SYN_ARCHBEHASYN;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_regNbit.all;

entity FD_1 is

   port( D, clk, rst : in std_logic;  Q : out std_logic);

end FD_1;

architecture SYN_ARCHBEHASYN of FD_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1002 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => clk, RN => n2, Q => Q, QN => n_1002)
                           ;
   U3 : INV_X1 port map( A => rst, ZN => n2);

end SYN_ARCHBEHASYN;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_regNbit.all;

entity FD_0 is

   port( D, clk, rst : in std_logic;  Q : out std_logic);

end FD_0;

architecture SYN_ARCHBEHASYN of FD_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n_1003 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => clk, RN => n1, Q => Q, QN => n_1003)
                           ;
   U3 : INV_X1 port map( A => rst, ZN => n1);

end SYN_ARCHBEHASYN;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_regNbit.all;

entity regNbit is

   port( D : in std_logic_vector (3 downto 0);  clk, rst : in std_logic;  Q : 
         out std_logic_vector (3 downto 0));

end regNbit;

architecture SYN_ARCHBEHASYNQ of regNbit is

   component FD_1
      port( D, clk, rst : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_2
      port( D, clk, rst : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_3
      port( D, clk, rst : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_0
      port( D, clk, rst : in std_logic;  Q : out std_logic);
   end component;

begin
   
   FD_g_0 : FD_0 port map( D => D(0), clk => clk, rst => rst, Q => Q(0));
   FD_g_1 : FD_3 port map( D => D(1), clk => clk, rst => rst, Q => Q(1));
   FD_g_2 : FD_2 port map( D => D(2), clk => clk, rst => rst, Q => Q(2));
   FD_g_3 : FD_1 port map( D => D(3), clk => clk, rst => rst, Q => Q(3));

end SYN_ARCHBEHASYNQ;
