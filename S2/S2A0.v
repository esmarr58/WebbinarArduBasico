module S2A0(A,B,C,D,a,b,c,d,e,f,g,com,test);
input A; //43
input B; //48
input C; //40
input D; //45
output a; //93
output b; //92
output c; //87
output d; //86
output e; //55
output f; //58
output g; //79
output com; //94
output test;

assign a = !( (~B & ~D) | (~A & C) | (~A & B & D) | (B & C) | (A & ~D) | (A & ~B & ~C));
assign b = !( (A & ~C & D) | (~B) | (~A & ~C & ~D) | (~A & C & D));
assign c = !( (~C & D) | (~A & B) | (A & ~B) | (~A & ~C) | (~A & D));
assign d = !( (B & ~C & D) | (~B & C & D) | (B & C & ~D) | (A & ~C & ~D) | (~A & ~B & ~D));
assign e = !( (~B & ~D) | (C & ~D) | (A & C) | (A & B));
assign f = !( (~C & ~D) | (B & ~D) | (~A & B & ~C) | (A & ~B) | (A & C));
assign g = !( (~A & C) | (~A & B) | (B & D) | (C & ~D) | (A & ~B & ~C));
assign com = 0;
assign test = 0;
endmodule