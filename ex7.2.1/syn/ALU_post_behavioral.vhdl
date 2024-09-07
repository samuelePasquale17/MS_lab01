
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ALU is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type TYPE_OP is (ADD, SUB, MULT, BITAND, BITOR, BITXOR, FUNCLSL, FUNCLSR, 
   FUNCRL, FUNCRR);
attribute ENUM_ENCODING of TYPE_OP : type is 
   "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001";
   
   -- Declarations for conversion functions.
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
               std_logic_vector;

end CONV_PACK_ALU;

package body CONV_PACK_ALU is
   
   -- enum type to std_logic_vector function
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
   std_logic_vector is
   -- synopsys built_in SYN_FEED_THRU;
   begin
      case arg is
         when ADD => return "0000";
         when SUB => return "0001";
         when MULT => return "0010";
         when BITAND => return "0011";
         when BITOR => return "0100";
         when BITXOR => return "0101";
         when FUNCLSL => return "0110";
         when FUNCLSR => return "0111";
         when FUNCRL => return "1000";
         when FUNCRR => return "1001";
         when others => assert FALSE -- this should not happen.
               report "un-convertible value"
               severity warning;
               return "0000";
      end case;
   end;

end CONV_PACK_ALU;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU is

   port( FUNC : in TYPE_OP;  DATA1, DATA2 : in std_logic_vector (3 downto 0);  
         OUTALU : out std_logic_vector (3 downto 0));

end ALU;

architecture SYN_ARCHBEH of ALU is

   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, N50, N51, N52, 
      N53, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68
      , N69, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, 
      n49, n50_port, n51_port, n52_port, n53_port, n54, n55_port, n56_port, 
      n57_port, n58_port, n59_port, n60_port, n61_port, n62_port, n63_port, 
      n64_port, n65_port, n66_port, n67_port, n68_port, n69_port, n70, n71, n72
      , n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83 : std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   U50 : NOR3_X2 port map( A1 => FUNC_3_port, A2 => FUNC_1_port, A3 => n57_port
                           , ZN => n49);
   U51 : INV_X1 port map( A => n51_port, ZN => n56_port);
   U52 : INV_X1 port map( A => FUNC_3_port, ZN => n58_port);
   U53 : INV_X1 port map( A => FUNC_0_port, ZN => n55_port);
   U54 : INV_X1 port map( A => FUNC_2_port, ZN => n57_port);
   U55 : AND3_X1 port map( A1 => n58_port, A2 => n57_port, A3 => FUNC_1_port, 
                           ZN => n48);
   U56 : NOR2_X1 port map( A1 => FUNC_2_port, A2 => FUNC_1_port, ZN => n51_port
                           );
   U57 : AND3_X1 port map( A1 => DATA1(3), A2 => n51_port, A3 => FUNC_3_port, 
                           ZN => n36);
   U58 : AOI221_X1 port map( B1 => N61, B2 => n48, C1 => N65, C2 => n49, A => 
                           n36, ZN => n40);
   U59 : NAND3_X1 port map( A1 => FUNC_2_port, A2 => n58_port, A3 => 
                           FUNC_1_port, ZN => n37);
   U60 : OAI21_X1 port map( B1 => n56_port, B2 => n58_port, A => n37, ZN => 
                           n50_port);
   U61 : AOI222_X1 port map( A1 => DATA1(1), A2 => n50_port, B1 => N69, B2 => 
                           n49, C1 => N61, C2 => n48, ZN => n39);
   U62 : NAND3_X1 port map( A1 => n51_port, A2 => n58_port, A3 => N50, ZN => 
                           n38);
   U63 : OAI221_X1 port map( B1 => FUNC_0_port, B2 => n40, C1 => n55_port, C2 
                           => n39, A => n38, ZN => OUTALU(0));
   U64 : AOI222_X1 port map( A1 => DATA1(0), A2 => n50_port, B1 => N64, B2 => 
                           n49, C1 => N55, C2 => n48, ZN => n43);
   U65 : AOI222_X1 port map( A1 => DATA1(2), A2 => n50_port, B1 => N68, B2 => 
                           n49, C1 => N60, C2 => n48, ZN => n42);
   U66 : NAND3_X1 port map( A1 => n51_port, A2 => n58_port, A3 => N51, ZN => 
                           n41);
   U67 : OAI221_X1 port map( B1 => FUNC_0_port, B2 => n43, C1 => n55_port, C2 
                           => n42, A => n41, ZN => OUTALU(1));
   U68 : AOI222_X1 port map( A1 => DATA1(1), A2 => n50_port, B1 => N63, B2 => 
                           n49, C1 => N56, C2 => n48, ZN => n46);
   U69 : AOI222_X1 port map( A1 => DATA1(3), A2 => n50_port, B1 => N67, B2 => 
                           n49, C1 => N59, C2 => n48, ZN => n45);
   U70 : NAND3_X1 port map( A1 => n51_port, A2 => n58_port, A3 => N52, ZN => 
                           n44);
   U71 : OAI221_X1 port map( B1 => FUNC_0_port, B2 => n46, C1 => n55_port, C2 
                           => n45, A => n44, ZN => OUTALU(2));
   U72 : AND3_X1 port map( A1 => DATA1(0), A2 => n51_port, A3 => FUNC_3_port, 
                           ZN => n47);
   U73 : AOI221_X1 port map( B1 => N58, B2 => n48, C1 => N66, C2 => n49, A => 
                           n47, ZN => n54);
   U74 : AOI222_X1 port map( A1 => DATA1(2), A2 => n50_port, B1 => N62, B2 => 
                           n49, C1 => N57, C2 => n48, ZN => n53_port);
   U75 : NAND3_X1 port map( A1 => n51_port, A2 => n58_port, A3 => N53, ZN => 
                           n52_port);
   U76 : OAI221_X1 port map( B1 => n54, B2 => n55_port, C1 => FUNC_0_port, C2 
                           => n53_port, A => n52_port, ZN => OUTALU(3));
   U77 : XOR2_X1 port map( A => DATA2(0), B => DATA1(0), Z => N69);
   U78 : XOR2_X1 port map( A => DATA2(1), B => DATA1(1), Z => N68);
   U79 : XOR2_X1 port map( A => DATA2(2), B => DATA1(2), Z => N67);
   U80 : OR2_X1 port map( A1 => DATA2(0), A2 => DATA1(0), ZN => N65);
   U81 : OR2_X1 port map( A1 => DATA2(1), A2 => DATA1(1), ZN => N64);
   U82 : NAND2_X1 port map( A1 => n59_port, A2 => n60_port, ZN => N63);
   U83 : NAND2_X1 port map( A1 => n61_port, A2 => n62_port, ZN => N62);
   U84 : INV_X1 port map( A => n63_port, ZN => N60);
   U85 : NOR2_X1 port map( A1 => n59_port, A2 => n60_port, ZN => N59);
   U86 : INV_X1 port map( A => DATA1(2), ZN => n60_port);
   U87 : NOR2_X1 port map( A1 => n61_port, A2 => n62_port, ZN => N58);
   U88 : INV_X1 port map( A => DATA1(3), ZN => n62_port);
   U89 : INV_X1 port map( A => DATA2(3), ZN => n61_port);
   U90 : NOR2_X1 port map( A1 => n63_port, A2 => n64_port, ZN => N57);
   U91 : NOR2_X1 port map( A1 => N61, A2 => n63_port, ZN => N56);
   U92 : NAND2_X1 port map( A1 => DATA1(1), A2 => DATA2(1), ZN => n63_port);
   U93 : INV_X1 port map( A => n64_port, ZN => N61);
   U94 : NAND2_X1 port map( A1 => DATA1(0), A2 => DATA2(0), ZN => n64_port);
   U95 : XOR2_X1 port map( A => n65_port, B => n66_port, Z => N55);
   U96 : NAND2_X1 port map( A1 => DATA2(1), A2 => DATA1(0), ZN => n66_port);
   U97 : NAND2_X1 port map( A1 => DATA1(1), A2 => DATA2(0), ZN => n65_port);
   U98 : XOR2_X1 port map( A => N66, B => n67_port, Z => N53);
   U99 : XOR2_X1 port map( A => n68_port, B => n69_port, Z => n67_port);
   U100 : OAI22_X1 port map( A1 => n70, A2 => DATA1(2), B1 => n71, B2 => n72, 
                           ZN => n69_port);
   U101 : AND2_X1 port map( A1 => n72, A2 => n71, ZN => n70);
   U102 : XOR2_X1 port map( A => DATA1(3), B => DATA2(3), Z => N66);
   U103 : XOR2_X1 port map( A => n73, B => n72, Z => N52);
   U104 : XOR2_X1 port map( A => n68_port, B => n59_port, Z => n72);
   U105 : INV_X1 port map( A => DATA2(2), ZN => n59_port);
   U106 : XOR2_X1 port map( A => n71, B => DATA1(2), Z => n73);
   U107 : OAI21_X1 port map( B1 => n74, B2 => n75, A => n76, ZN => n71);
   U108 : OAI21_X1 port map( B1 => n77, B2 => n78, A => DATA1(1), ZN => n76);
   U109 : XNOR2_X1 port map( A => n74, B => n79, ZN => N51);
   U110 : XOR2_X1 port map( A => DATA1(1), B => n77, Z => n79);
   U111 : INV_X1 port map( A => n75, ZN => n77);
   U112 : OAI22_X1 port map( A1 => n80, A2 => n81, B1 => DATA1(0), B2 => n82, 
                           ZN => n75);
   U113 : AND2_X1 port map( A1 => n81, A2 => n80, ZN => n82);
   U114 : INV_X1 port map( A => n78, ZN => n74);
   U115 : XOR2_X1 port map( A => n80, B => DATA2(1), Z => n78);
   U116 : XNOR2_X1 port map( A => n81, B => n83, ZN => N50);
   U117 : XOR2_X1 port map( A => n68_port, B => DATA1(0), Z => n83);
   U118 : XNOR2_X1 port map( A => n68_port, B => DATA2(0), ZN => n81);
   U119 : INV_X1 port map( A => n80, ZN => n68_port);
   U120 : NOR4_X1 port map( A1 => FUNC_1_port, A2 => n55_port, A3 => 
                           FUNC_3_port, A4 => FUNC_2_port, ZN => n80);

end SYN_ARCHBEH;
