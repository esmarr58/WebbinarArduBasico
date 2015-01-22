// Shift register
// Registro de corrimiento

module S3L2 (clk, in, out);
input clk;
input in;
output reg [0:7] out;

initial begin
out = 0;
end

always @(posedge clk) begin
out = {in, out [0:6]};
end
endmodule 