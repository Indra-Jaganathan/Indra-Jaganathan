module rsff(clk,rst,r,s,q);
input clk,rst,r,s;
output q;
reg q;
always @(posedge clk)
begin
if(rst)
q<=0;
else
begin
case({r,s})
2'b00:
q<=q;
2'b01:
q<=1'b0;
2'b10:
q<=1'b1;
2'b11:
q<=1'bz;
endcase
end
end
endmodule