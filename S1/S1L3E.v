module S1L3E(entrada1, entrada2, control, salida);
	input entrada1, entrada2, control;
	output reg salida;
	
	always @(entrada1, entrada2, control)
		begin
			salida = (control&entrada1)|(!control&entrada2);
		
		end

endmodule
