module S1A1 
	 (
		input 	A,
		input 	B,

		output 	C,
		output	D,
		output	E,
		output	F,
		output	G,
		output	H
	 );
        
		  assign C = A | B;
		  assign D = A & B;
		  assign E = A ^ B;
		  assign F = A ~^ B;
		  assign G = A;
		  assign H = !B;
    endmodule