 // Nonblocking
module S3L2B (clk,a,c);
  input clk;
  input a;
  output c;
   
  wire clk;
  wire a;
  reg c;
  reg b;
    
 always @ (posedge clk )
 begin
	b <= a; // Se contempla la expresión pero se ejecuta
	c <= b; // Se contempla la expresión pero se ejecuta
			// Previo al "end" se sintenizan las expresiones y se ejecutan
 end    
 endmodule