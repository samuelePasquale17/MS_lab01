
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_regNbit_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_regNbit_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_regNbit_1.all;

entity FD_7 is

   port( D, clk, rst : in std_logic;  Q : out std_logic);

end FD_7;

architecture SYN_ARCHBEHASYN of FD_7 is

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

use work.CONV_PACK_regNbit_1.all;

entity FD_6 is

   port( D, clk, rst : in std_logic;  Q : out std_logic);

end FD_6;

architecture SYN_ARCHBEHASYN of FD_6 is

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

use work.CONV_PACK_regNbit_1.all;

entity FD_5 is

   port( D, clk, rst : in std_logic;  Q : out std_logic);

end FD_5;

architecture SYN_ARCHBEHASYN of FD_5 is

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

use work.CONV_PACK_regNbit_1.all;

entity FD_4 is

   port( D, clk, rst : in std_logic;  Q : out std_logic);

end FD_4;

architecture SYN_ARCHBEHASYN of FD_4 is

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

use work.CONV_PACK_regNbit_1.all;

entity regNbit_1 is

   port( D : in std_logic_vector (3 downto 0);  clk, rst : in std_logic;  Q : 
         out std_logic_vector (3 downto 0));

end regNbit_1;

architecture SYN_ARCHBEHSYNQ of regNbit_1 is

   component FD_5
      port( D, clk, rst : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_6
      port( D, clk, rst : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_7
      port( D, clk, rst : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_4
      port( D, clk, rst : in std_logic;  Q : out std_logic);
   end component;

begin
   
   FD_g_0 : FD_4 port map( D => D(0), clk => clk, rst => rst, Q => Q(0));
   FD_g_1 : FD_7 port map( D => D(1), clk => clk, rst => rst, Q => Q(1));
   FD_g_2 : FD_6 port map( D => D(2), clk => clk, rst => rst, Q => Q(2));
   FD_g_3 : FD_5 port map( D => D(3), clk => clk, rst => rst, Q => Q(3));

end SYN_ARCHBEHSYNQ;
