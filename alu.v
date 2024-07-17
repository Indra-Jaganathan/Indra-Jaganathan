module alu(a,b,sel,y);
input [7:0]a,b;
input[2:0]sel;
output [15:0]y;
reg [15:0]y;
always @(a or b or sel)
case(sel)
3'b000: y = a&b;
3'b001: y = a|b;
3'b010: y = a^b;
3'b011: y = a~^b;
3'b100: y = a+b; 
3'b101: y = a-b;
3'b110: y = a*b;
3'b111: y = ~b;
endcase
endmodule
