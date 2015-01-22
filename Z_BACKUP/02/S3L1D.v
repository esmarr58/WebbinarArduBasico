// Shift register
// Registro de corrimiento

module S3L1D (clk, in, out);
input clk;
input in;
output [0:7] out;
reg [0:7] out;
initial begin
out = 0;
// out[0:7] = {0, 0, 0, 0, 0, 0, 0, 0};
end
always @(posedge clk) begin
out = {in, out [0:6]};
end
endmodule 