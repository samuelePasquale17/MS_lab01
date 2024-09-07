package alu_types is
	type TYPE_OP is (
					ADD,		-- addition 
					SUB,		-- subtraction
					MULT, 		-- multiplication  ???
					BITAND, 	-- and bitwise
					BITOR, 		-- or bitwise
					BITXOR, 	-- xor bitwise
					FUNCLSL, 	-- shift left
					FUNCLSR, 	-- shift right
					FUNCRL, 	-- rotate left
					FUNCRR		-- rotate right
					);
end package;
