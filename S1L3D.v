module S1L3D(A, B, C, D, F);

	input A, B, C, D;
	output F;
	
	wire w1, w2, w3;
	


	assign F 	= 	~w3;
	assign w3 	= 	w1 | w2;
	assign w1	= 	A & B;
	assign w2	= 	C & B;
	
endmodule
