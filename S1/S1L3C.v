module S1L3C(entrada1, entrada2, control, salida);

	input entrada1, entrada2, control;
	output salida;
	
	wire A;
	wire B;


	assign salida = (control) ? A : B;
	assign A = entrada1 & entrada2;
	assign B = entrada1 | entrada2;
	
endmodule
