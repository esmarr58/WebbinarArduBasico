module S1L2(A, B, Ci, S, Co);
	input A, B, Ci;
	output S, Co;	
	wire t1, t2, t3;

assign t1	= 	A ^ B;
assign t2 	= 	Ci & t1;
assign t3	= 	A & B;
assign S 	= 	t1 ^ Ci;
assign Co 	= 	t2 | t3;
endmodule