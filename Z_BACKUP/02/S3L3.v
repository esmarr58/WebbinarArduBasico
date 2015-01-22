module S3L3(clk,out);
    input clk;
    output reg [7:0] out;

always @(posedge clk)
	out <= out + 1;
endmodule 