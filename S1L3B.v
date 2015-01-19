module S1L3B(entrada1, entrada2, control, salida);

	input entrada1, entrada2, control;
	output salida;
	
	assign salida = (control) ? entrada1 : entrada2;
	
endmodule
