package CONSTANTS is
	
	-- inverter delays --
	constant IVDELAY : time := 0.1 ns;
	---------------------------------------
	
	-- nand delays --
	constant NDDELAY : time := 0.2 ns;
	constant NDDELAYRISE : time := 0.6 ns;
	constant NDDELAYFALL : time := 0.4 ns;
	---------------------------------------
   
	-- for and, or, nor, xor delays we convert them in
	-- logic circuits made of only NANDs and then we 
	-- take as delay the critical path delay within these 
	-- circuits (nand delay = NDDELAY)
   
	-- and delays --
	constant ANDDELAY : time := 0.4 ns;
	---------------------------------------
	
	-- or delays --
	constant ORDELAY : time := 0.4 ns; 
	---------------------------------------
	
	-- nor delays --
	constant NORDELAY : time := 0.6 ns; 	
	---------------------------------------
	
	-- xor delays --
	constant XORDELAY : time := 0.6 ns; 		
	---------------------------------------
	
	-------------------------------------------------------------------------
	-- default number of bits --
	constant NumBit : integer := 4;
	---------------------------------------
	
	-- Full adder delays --
	constant DFAS_def : time := 0.6 	ns;					-- delay of a XOR
	constant DFAC_def : time := 0.8 	ns;					-- delay of a AND+OR
	---------------------------------------   
	
	-- Ripple carry adder delays --
	constant DRCAS_def : time := 1 ns;
	constant DRCAC_def : time := 2 ns;
	---------------------------------------
	
   
	constant NRDELAY : time := 0.2 ns;
	constant TP_MUX : time := 0.5 ns; 	
end CONSTANTS;
