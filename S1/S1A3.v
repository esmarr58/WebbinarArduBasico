module S1A3(A,B,Cin,S,Cout);
	input A,B,Cin;
	output reg S, Cout;
	
	always @(A,B,Cin) begin
		S = (A^B)^(Cin);
		Cout = ((A^B)&Cin)|(A&B);
	end
endmodule
	
