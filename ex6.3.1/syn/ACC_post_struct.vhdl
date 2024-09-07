
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

entity FD_3 is

   port( D, clk, rst, en_n : in std_logic;  Q : out std_logic);

end FD_3;

architecture SYN_ARCHBEHASYN of FD_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1000 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => clk, RN => n2, Q => Q_port, QN => 
                           n_1000);
   U2 : MUX2_X1 port map( A => D, B => Q_port, S => en_n, Z => n1);
   U3 : INV_X1 port map( A => rst, ZN => n2);

end SYN_ARCHBEHASYN;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_1.all;

entity FD_2 is

   port( D, clk, rst, en_n : in std_logic;  Q : out std_logic);

end FD_2;

architecture SYN_ARCHBEHASYN of FD_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1001 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => clk, RN => n2, Q => Q_port, QN => 
                           n_1001);
   U2 : MUX2_X1 port map( A => D, B => Q_port, S => en_n, Z => n1);
   U3 : INV_X1 port map( A => rst, ZN => n2);

end SYN_ARCHBEHASYN;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_1.all;

entity FD_1 is

   port( D, clk, rst, en_n : in std_logic;  Q : out std_logic);

end FD_1;

architecture SYN_ARCHBEHASYN of FD_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1002 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => clk, RN => n2, Q => Q_port, QN => 
                           n_1002);
   U2 : MUX2_X1 port map( A => D, B => Q_port, S => en_n, Z => n1);
   U3 : INV_X1 port map( A => rst, ZN => n2);

end SYN_ARCHBEHASYN;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_1.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_ARCHBEH of FA_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_1.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_ARCHBEH of FA_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_1.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_ARCHBEH of FA_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

entity FD_0 is

   port( D, clk, rst, en_n : in std_logic;  Q : out std_logic);

end FD_0;

architecture SYN_ARCHBEHASYN of FD_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n4, n5, n_1003 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n5, CK => clk, RN => n4, Q => Q_port, QN => 
                           n_1003);
   U2 : MUX2_X1 port map( A => D, B => Q_port, S => en_n, Z => n5);
   U3 : INV_X1 port map( A => rst, ZN => n4);

end SYN_ARCHBEHASYN;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_1.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_ARCHBEH of FA_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_ARCHBEH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_1.all;

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

use work.CONV_PACK_ACC_1.all;

entity regNbit_N4 is

   port( D : in std_logic_vector (3 downto 0);  clk, rst, en_n : in std_logic; 
         Q : out std_logic_vector (3 downto 0));

end regNbit_N4;

architecture SYN_ARCHBEHASYNQ of regNbit_N4 is

   component FD_1
      port( D, clk, rst, en_n : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_2
      port( D, clk, rst, en_n : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_3
      port( D, clk, rst, en_n : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_0
      port( D, clk, rst, en_n : in std_logic;  Q : out std_logic);
   end component;

begin
   
   FD_g_0 : FD_0 port map( D => D(0), clk => clk, rst => rst, en_n => en_n, Q 
                           => Q(0));
   FD_g_1 : FD_3 port map( D => D(1), clk => clk, rst => rst, en_n => en_n, Q 
                           => Q(1));
   FD_g_2 : FD_2 port map( D => D(2), clk => clk, rst => rst, en_n => en_n, Q 
                           => Q(2));
   FD_g_3 : FD_1 port map( D => D(3), clk => clk, rst => rst, en_n => en_n, Q 
                           => Q(3));

end SYN_ARCHBEHASYNQ;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_1.all;

entity RCA_N4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4;

architecture SYN_ARCHSTRUCT of RCA_N4 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_3 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_2 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_1 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_ARCHSTRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_1.all;

entity mux21_generic_N4 is

   port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_N4;

architecture SYN_ARCHSTRUCT of mux21_generic_N4 is

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
   
   mux21_g_0 : mux21_0 port map( A => A(0), B => B(0), S => S, Y => Y(0));
   mux21_g_1 : mux21_3 port map( A => A(1), B => B(1), S => S, Y => Y(1));
   mux21_g_2 : mux21_2 port map( A => A(2), B => B(2), S => S, Y => Y(2));
   mux21_g_3 : mux21_1 port map( A => A(3), B => B(3), S => S, Y => Y(3));

end SYN_ARCHSTRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_1.all;

entity ACC_1 is

   port( A, B : in std_logic_vector (3 downto 0);  CLK, RST_n, ACCUMULATE, 
         ACC_EN_n : in std_logic;  Y : out std_logic_vector (3 downto 0));

end ACC_1;

architecture SYN_ARCHSTRUCT of ACC_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component regNbit_N4
      port( D : in std_logic_vector (3 downto 0);  clk, rst, en_n : in 
            std_logic;  Q : out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component mux21_generic_N4
      port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic0_port, Y_3_port, Y_2_port, Y_1_port, Y_0_port, out_mux_3_port
      , out_mux_2_port, out_mux_1_port, out_mux_0_port, out_add_3_port, 
      out_add_2_port, out_add_1_port, out_add_0_port, n1, n_1004 : std_logic;

begin
   Y <= ( Y_3_port, Y_2_port, Y_1_port, Y_0_port );
   
   MUX1 : mux21_generic_N4 port map( A(3) => Y_3_port, A(2) => Y_2_port, A(1) 
                           => Y_1_port, A(0) => Y_0_port, B(3) => B(3), B(2) =>
                           B(2), B(1) => B(1), B(0) => B(0), S => ACCUMULATE, 
                           Y(3) => out_mux_3_port, Y(2) => out_mux_2_port, Y(1)
                           => out_mux_1_port, Y(0) => out_mux_0_port);
   RCA1 : RCA_N4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(3) => out_mux_3_port, B(2) => out_mux_2_port
                           , B(1) => out_mux_1_port, B(0) => out_mux_0_port, Ci
                           => X_Logic0_port, S(3) => out_add_3_port, S(2) => 
                           out_add_2_port, S(1) => out_add_1_port, S(0) => 
                           out_add_0_port, Co => n_1004);
   REG1 : regNbit_N4 port map( D(3) => out_add_3_port, D(2) => out_add_2_port, 
                           D(1) => out_add_1_port, D(0) => out_add_0_port, clk 
                           => CLK, rst => n1, en_n => ACC_EN_n, Q(3) => 
                           Y_3_port, Q(2) => Y_2_port, Q(1) => Y_1_port, Q(0) 
                           => Y_0_port);
   X_Logic0_port <= '0';
   U3 : INV_X1 port map( A => RST_n, ZN => n1);

end SYN_ARCHSTRUCT;
