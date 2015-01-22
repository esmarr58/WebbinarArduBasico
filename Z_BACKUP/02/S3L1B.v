 // Blocking
module S3L1B (clk,a,c);
  input clk;
  input a;
  output c;
   
  wire clk;
  wire a;
  reg c;
  reg b;
    
 always @ (posedge clk )
 begin
	b = a; // Se asigna primero b con el valor de a
	c = b; // Posteriormente se asigna c con el valor de b
 end    
 endmodule