module S3A1B(j,k,clk,q,q1,);

input j,k,clk;
output reg q,q1;

initial 
begin 
q=1'b0; 
q1=1'b1; 
end

always @ (posedge clk)
begin
case({j,k})
		 {1'b0,1'b0}: begin q=q;    q1=q1;   end
		 {1'b0,1'b1}: begin q=1'b0; q1=1'b1; end
		 {1'b1,1'b0}: begin q=1'b1; q1=1'b0; end
		 {1'b1,1'b1}: begin q=~q;   q1=~q1;  end
endcase
end
endmodule