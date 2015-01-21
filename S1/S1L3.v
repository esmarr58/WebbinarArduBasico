module S1L3(entrada1,entrada2, control, salida);
	
	input entrada1;
	input entrada2;
	input control;
	output  salida;
	
	assign salida = (control&entrada1)|(~control&entrada2);
	

endmodule
