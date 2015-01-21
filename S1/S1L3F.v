module S1L3F(A, B, C, S1, S2, F);
	input A,B,C,S1,S2;
	output reg F;
	reg X1;

	always @ (S1, A, B) 	begin
		X1 = 	(S1 & B) | (!S1& A);
	end

	
	always @ (S2, C, X1) 	begin 
		F = 	(S2 & C) | (!S2& X1);
	end


endmodule
