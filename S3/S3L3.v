module test1(cristal,clk_1s);
	input cristal;
	output reg clk_1s = 1;
	
	reg[24:0] contador = 0;
	
	always @(posedge cristal)
	begin
		contador = contador + 1;
		if(contador == 25_000_000)
			begin
				contador = 0;
				clk_1s = ~clk_1s;
			end
	end
	
	
endmodule
