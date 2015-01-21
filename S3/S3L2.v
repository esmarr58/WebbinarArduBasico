// Contador ascendente 4 bits

module S3L2 (clk, c8, c4, c2, c1);
input clk;
output c8, c4, c2, c1;
reg [3:0] count;
initial begin
count = 0;
end
always @(posedge clk) begin
count = count + 4'b0001;
end
assign c8 = count[3];
assign c4 = count[2];
assign c2 = count[1];
assign c1 = count[0];
endmodule 