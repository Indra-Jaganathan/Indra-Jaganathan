module cvmfsm(coke,coin,clk,rst);
output coke; 
reg coke;
input clk,rst;
input [1:0]coin;
reg [1:0]ps;
reg [1:0]ns;

parameter [1:0] state_0=2'b00;
parameter [1:0] state_5=2'b01;
parameter [1:0] state_10=2'b10;
parameter [1:0] state_15=2'b11;

always @(posedge clk)
begin
if (rst)
ps=state_0;
else
ps=ns;
end

always @(ps,coin)
begin
case (ps)

state_0:
begin
if(coin==2'b00)
ns=state_0;
else
if(coin==2'b01)
ns=state_5;
else
if(coin==2'b10)
ns=state_10;
end

state_5:
begin
if(coin==2'b00)
ns=state_5;
else
if(coin==2'b01)
ns=state_10;
else
if(coin==2'b10)
ns=state_15;
end

state_10:
begin
if(coin==2'b00)
ns=state_10;
else
if(coin==2'b01)
ns=state_15;
else
if(coin==2'b10)
ns=state_15;
end

state_15:
begin
ns=state_0;
end

default:ns=state_0;

endcase
end

always @(ps)
begin

case(ps)

state_0:
coke<=1'b0;

state_5:
coke<=1'b0;
state_10:
coke<=1'b0;

state_15:
coke<=1'b1;

default:coke<=1'b0;

endcase
end
endmodule



