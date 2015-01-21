//FLIP FLOP S-R

module S3L1(clk, s, r, d, q, qq);

input clk, s, r, d;
output q;
reg q;

always @(posedge !clk)
	if (!r) q = 1'b0;
	else if (!s) q = 1'b1;
	else q = !d;
endmodule 