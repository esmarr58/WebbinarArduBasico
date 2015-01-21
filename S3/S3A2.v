// Contador ascendente 4 bits

module S3A2 (clk, c127, c64, c32, c16, c8, c4, c2, c1);
input clk;
output c127, c64, c32, c16, c8, c4, c2, c1;
reg [7:0] count;
initial begin
count = 0;
end
always @(posedge clk) begin
count = count + 8'b00000001;
end
assign c127 = count[7];
assign c64 = count[6];
assign c32 = count[5];
assign c16 = count[4];
assign c8 = count[3];
assign c4 = count[2];
assign c2 = count[1];
assign c1 = count[0];
endmodule 