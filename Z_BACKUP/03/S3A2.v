// Shift register
// Registro de corrimiento

module S3A2 (clk, in, en, out);
input clk;
input in;
input en;
output reg [0:7] out;
reg [0:7] temp; 


initial begin
out = 0;
temp = 0;
end

always @(posedge clk) begin
temp = {in, temp [0:6]};
end

always @(posedge en) begin
out = temp;
end
endmodule 