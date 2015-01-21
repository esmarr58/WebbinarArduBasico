module S2L2(A,B,C,D,S,Y);
	input A,B,C,D;
	input [1:0] S;
	output reg Y;
	
	always @(A,B,C,D,S)
		begin
			case(S)
				0: Y = A;
				1:	Y = B;
				2:	Y = C;
				3: Y = D;
			endcase
		end
	
endmodule
