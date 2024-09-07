
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC.all;

entity ACC is

   port( A, B : in std_logic_vector (3 downto 0);  CLK, RST_n, ACCUMULATE, 
         ACC_EN_n : in std_logic;  Y : out std_logic_vector (3 downto 0));

end ACC;

architecture SYN_ARCHBEH of ACC is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Y_3_port, Y_2_port, Y_1_port, Y_0_port, n47, n48, n49, n50, n51, n52,
      n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67
      , n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, 
      n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n_1000 : 
      std_logic;

begin
   Y <= ( Y_3_port, Y_2_port, Y_1_port, Y_0_port );
   
   feed_back_reg_0_inst : DFFR_X1 port map( D => n53, CK => CLK, RN => RST_n, Q
                           => Y_0_port, QN => n49);
   feed_back_reg_1_inst : DFFR_X1 port map( D => n52, CK => CLK, RN => RST_n, Q
                           => Y_1_port, QN => n48);
   feed_back_reg_2_inst : DFFR_X1 port map( D => n51, CK => CLK, RN => RST_n, Q
                           => Y_2_port, QN => n47);
   feed_back_reg_3_inst : DFFR_X1 port map( D => n50, CK => CLK, RN => RST_n, Q
                           => Y_3_port, QN => n_1000);
   U49 : OAI22_X1 port map( A1 => n49, A2 => n54, B1 => ACC_EN_n, B2 => n55, ZN
                           => n53);
   U50 : MUX2_X1 port map( A => n56, B => n57, S => n58, Z => n55);
   U51 : NAND2_X1 port map( A1 => B(0), A2 => n59, ZN => n57);
   U52 : INV_X1 port map( A => n60, ZN => n56);
   U53 : MUX2_X1 port map( A => n49, B => n61, S => n59, Z => n60);
   U54 : AOI21_X1 port map( B1 => ACCUMULATE, B2 => n58, A => ACC_EN_n, ZN => 
                           n54);
   U55 : OAI22_X1 port map( A1 => n48, A2 => n62, B1 => ACC_EN_n, B2 => n63, ZN
                           => n52);
   U56 : MUX2_X1 port map( A => n64, B => n65, S => n59, Z => n63);
   U57 : XOR2_X1 port map( A => n66, B => n67, Z => n65);
   U58 : AOI21_X1 port map( B1 => B(1), B2 => A(1), A => n68, ZN => n67);
   U59 : NAND2_X1 port map( A1 => A(0), A2 => B(0), ZN => n66);
   U60 : NAND2_X1 port map( A1 => n48, A2 => n69, ZN => n64);
   U61 : XOR2_X1 port map( A => A(1), B => n70, Z => n69);
   U62 : AOI211_X1 port map( C1 => n71, C2 => ACCUMULATE, A => ACC_EN_n, B => 
                           n72, ZN => n62);
   U63 : INV_X1 port map( A => n73, ZN => n72);
   U64 : OAI22_X1 port map( A1 => n47, A2 => n74, B1 => ACC_EN_n, B2 => n75, ZN
                           => n51);
   U65 : MUX2_X1 port map( A => n76, B => n77, S => n78, Z => n75);
   U66 : NAND2_X1 port map( A1 => B(2), A2 => n59, ZN => n77);
   U67 : INV_X1 port map( A => n79, ZN => n76);
   U68 : AOI21_X1 port map( B1 => ACCUMULATE, B2 => n78, A => ACC_EN_n, ZN => 
                           n74);
   U69 : XOR2_X1 port map( A => n80, B => A(2), Z => n78);
   U70 : MUX2_X1 port map( A => n81, B => Y_3_port, S => ACC_EN_n, Z => n50);
   U71 : MUX2_X1 port map( A => n82, B => n83, S => n84, Z => n81);
   U72 : XOR2_X1 port map( A => A(3), B => n85, Z => n84);
   U73 : MUX2_X1 port map( A => Y_3_port, B => B(3), S => n59, Z => n85);
   U74 : OAI21_X1 port map( B1 => A(2), B2 => n86, A => n87, ZN => n83);
   U75 : INV_X1 port map( A => n88, ZN => n82);
   U76 : AOI21_X1 port map( B1 => n87, B2 => A(2), A => n86, ZN => n88);
   U77 : NOR2_X1 port map( A1 => n79, A2 => n80, ZN => n86);
   U78 : NAND2_X1 port map( A1 => n79, A2 => n80, ZN => n87);
   U79 : AND2_X1 port map( A1 => n89, A2 => n73, ZN => n80);
   U80 : NAND3_X1 port map( A1 => A(1), A2 => ACCUMULATE, A3 => n70, ZN => n73)
                           ;
   U81 : MUX2_X1 port map( A => n90, B => n91, S => n59, Z => n89);
   U82 : AOI22_X1 port map( A1 => n92, A2 => A(0), B1 => B(1), B2 => A(1), ZN 
                           => n91);
   U83 : NOR2_X1 port map( A1 => n68, A2 => n61, ZN => n92);
   U84 : INV_X1 port map( A => B(0), ZN => n61);
   U85 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n68);
   U86 : OR2_X1 port map( A1 => n71, A2 => n48, ZN => n90);
   U87 : NOR2_X1 port map( A1 => A(1), A2 => n70, ZN => n71);
   U88 : NOR2_X1 port map( A1 => n58, A2 => n49, ZN => n70);
   U89 : INV_X1 port map( A => A(0), ZN => n58);
   U90 : MUX2_X1 port map( A => n47, B => n93, S => n59, Z => n79);
   U91 : INV_X1 port map( A => ACCUMULATE, ZN => n59);
   U92 : INV_X1 port map( A => B(2), ZN => n93);

end SYN_ARCHBEH;
