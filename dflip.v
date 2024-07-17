module dff(clk,rst,d,q);
input clk,rst,d;
output q;
reg q;
always @(negedge clk)
begin
if(rst)
q<=1'b0;
else
q<=d;
end 
endmodule
