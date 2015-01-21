module S1L1(A, B, Ci, S, Co);
	input A, B, Ci;
	output S, Co;	

assign S 	= 	!((!A ^ !B) ^ !Ci);
assign Co 	= 	!((!Ci & (!A ^ !B)) | !A & !B);
endmodule