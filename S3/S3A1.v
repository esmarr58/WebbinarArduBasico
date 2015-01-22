module S3A1(d,clk,q,q1);
    
input d,clk;
output reg q,q1;

initial 
begin
q=1'b0; 
q1=1'b1; 
end
	 
always @(posedge clk)
begin
case(d)
    {1'b0}: begin q=1'b0; q1=1'b1; end
    {1'b1}: begin q=1'b1; q1=1'b0; end
endcase
end
endmodule