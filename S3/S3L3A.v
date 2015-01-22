module test1(C_50Mhz,C_1Hz);
	input C_50Mhz;
	output reg C_1Hz = 1;
	
	reg[24:0] contador = 0;
	
	always @(posedge C_50Mhz)
	begin
		contador = contador + 1;
		if(contador == 25_000_000)
			begin
				contador = 0;
				C_1Hz = ~C_1Hz;
			end
	end
	
	
endmodule
