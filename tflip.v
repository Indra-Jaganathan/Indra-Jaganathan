module tff(clk,rst,t,q);
output q;
reg q;
input clk,rst,t;
always @(posedge clk)
begin
if(rst)
q<=1'b0;
else
if(t)
q<=~q;
else
q<=q;
end
endmodule 