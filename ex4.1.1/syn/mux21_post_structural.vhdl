
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_mux21_generic_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_mux21_generic_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity nd2_11 is

   port( A, B : in std_logic;  Y : out std_logic);

end nd2_11;

architecture SYN_ARCHBEH of nd2_11 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity nd2_10 is

   port( A, B : in std_logic;  Y : out std_logic);

end nd2_10;

architecture SYN_ARCHBEH of nd2_10 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity nd2_9 is

   port( A, B : in std_logic;  Y : out std_logic);

end nd2_9;

architecture SYN_ARCHBEH of nd2_9 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity nd2_8 is

   port( A, B : in std_logic;  Y : out std_logic);

end nd2_8;

architecture SYN_ARCHBEH of nd2_8 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity nd2_7 is

   port( A, B : in std_logic;  Y : out std_logic);

end nd2_7;

architecture SYN_ARCHBEH of nd2_7 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity nd2_6 is

   port( A, B : in std_logic;  Y : out std_logic);

end nd2_6;

architecture SYN_ARCHBEH of nd2_6 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity nd2_5 is

   port( A, B : in std_logic;  Y : out std_logic);

end nd2_5;

architecture SYN_ARCHBEH of nd2_5 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity nd2_4 is

   port( A, B : in std_logic;  Y : out std_logic);

end nd2_4;

architecture SYN_ARCHBEH of nd2_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity nd2_3 is

   port( A, B : in std_logic;  Y : out std_logic);

end nd2_3;

architecture SYN_ARCHBEH of nd2_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity nd2_2 is

   port( A, B : in std_logic;  Y : out std_logic);

end nd2_2;

architecture SYN_ARCHBEH of nd2_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity nd2_1 is

   port( A, B : in std_logic;  Y : out std_logic);

end nd2_1;

architecture SYN_ARCHBEH of nd2_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity iv_3 is

   port( A : in std_logic;  Y : out std_logic);

end iv_3;

architecture SYN_ARCHSTRUCT of iv_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_ARCHSTRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity iv_2 is

   port( A : in std_logic;  Y : out std_logic);

end iv_2;

architecture SYN_ARCHSTRUCT of iv_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_ARCHSTRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity iv_1 is

   port( A : in std_logic;  Y : out std_logic);

end iv_1;

architecture SYN_ARCHSTRUCT of iv_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_ARCHSTRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity mux21_3 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end mux21_3;

architecture SYN_ARCHSTRUCT of mux21_3 is

   component nd2_7
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component nd2_8
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component nd2_9
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component iv_3
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal n_S, s1, s2 : std_logic;

begin
   
   NOT1 : iv_3 port map( A => S, Y => n_S);
   NAND1 : nd2_9 port map( A => A, B => S, Y => s1);
   NAND2 : nd2_8 port map( A => B, B => n_S, Y => s2);
   NAND3 : nd2_7 port map( A => s1, B => s2, Y => Y);

end SYN_ARCHSTRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity mux21_2 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end mux21_2;

architecture SYN_ARCHSTRUCT of mux21_2 is

   component nd2_4
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component nd2_5
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component nd2_6
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component iv_2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal n_S, s1, s2 : std_logic;

begin
   
   NOT1 : iv_2 port map( A => S, Y => n_S);
   NAND1 : nd2_6 port map( A => A, B => S, Y => s1);
   NAND2 : nd2_5 port map( A => B, B => n_S, Y => s2);
   NAND3 : nd2_4 port map( A => s1, B => s2, Y => Y);

end SYN_ARCHSTRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity mux21_1 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end mux21_1;

architecture SYN_ARCHSTRUCT of mux21_1 is

   component nd2_1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component nd2_2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component nd2_3
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component iv_1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal n_S, s1, s2 : std_logic;

begin
   
   NOT1 : iv_1 port map( A => S, Y => n_S);
   NAND1 : nd2_3 port map( A => A, B => S, Y => s1);
   NAND2 : nd2_2 port map( A => B, B => n_S, Y => s2);
   NAND3 : nd2_1 port map( A => s1, B => s2, Y => Y);

end SYN_ARCHSTRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity nd2_0 is

   port( A, B : in std_logic;  Y : out std_logic);

end nd2_0;

architecture SYN_ARCHBEH of nd2_0 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity iv_0 is

   port( A : in std_logic;  Y : out std_logic);

end iv_0;

architecture SYN_ARCHSTRUCT of iv_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_ARCHSTRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity mux21_0 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end mux21_0;

architecture SYN_ARCHSTRUCT of mux21_0 is

   component nd2_10
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component nd2_11
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component nd2_0
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component iv_0
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal n_S, s1, s2 : std_logic;

begin
   
   NOT1 : iv_0 port map( A => S, Y => n_S);
   NAND1 : nd2_0 port map( A => A, B => S, Y => s1);
   NAND2 : nd2_11 port map( A => B, B => n_S, Y => s2);
   NAND3 : nd2_10 port map( A => s1, B => s2, Y => Y);

end SYN_ARCHSTRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_1.all;

entity mux21_generic_1 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux21_generic_1;

architecture SYN_ARCHSTRUCT of mux21_generic_1 is

   component mux21_1
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component mux21_2
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component mux21_3
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component mux21_0
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   mux21_g_0 : mux21_0 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   mux21_g_1 : mux21_3 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   mux21_g_2 : mux21_2 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   mux21_g_3 : mux21_1 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));

end SYN_ARCHSTRUCT;
