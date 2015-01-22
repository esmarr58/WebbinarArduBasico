    module S1L1(r,s,clk,q,q1);
    
    input r,s,clk;
    output reg q,q1;
	 
	initial 
	begin
    q=1'b0; q1=1'b1; // q is set to 0 and q1 is set to 1.
    end
	 
    always @(posedge clk)
    begin
    case({s,r})
    {1'b0,1'b0}: begin q=q; q1=q1; end
    {1'b0,1'b1}: begin q=1'b0; q1=1'b1; end
    {1'b1,1'b0}: begin q=1'b1; q1=1'b0; end
    {1'b1,1'b1}: begin q=1'bx; q=1'bx; end
    endcase
    end
    endmodule



