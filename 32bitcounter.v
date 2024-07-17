module ttworipple_count(j,k,clock,reset,q,qb);
input j,k,clock,reset;
output wire [31:0]q,qb;

jkff JK0(j,k,clock,reset,q[0],qb[0]);
jkff JK1(j,k,q[0],reset,q[1],qb[1]);
jkff JK2(j,k,q[1],reset,q[2],qb[2]);
jkff JK3(j,k,q[2],reset,q[3],qb[3]);
jkff JK4(j,k,q[3],reset,q[4],qb[4]);
jkff JK5(j,k,q[4],reset,q[5],qb[5]);
jkff JK6(j,k,q[5],reset,q[6],qb[6]);
jkff JK7(j,k,q[6],reset,q[7],qb[7]);
jkff JK8(j,k,q[7],reset,q[8],qb[8]);
jkff JK9(j,k,q[8],reset,q[9],qb[9]);
jkff JK10(j,k,q[9],reset,q[10],qb[10]);
jkff JK11(j,k,q[10],reset,q[11],qb[11]);
jkff JK12(j,k,q[11],reset,q[12],qb[12]);
jkff JK13(j,k,q[12],reset,q[13],qb[13]);
jkff JK14(j,k,q[13],reset,q[14],qb[14]);
jkff JK15(j,k,q[14],reset,q[15],qb[15]);
jkff JK16(j,k,q[15],reset,q[16],qb[16]);
jkff JK17(j,k,q[16],reset,q[17],qb[17]);
jkff JK18(j,k,q[17],reset,q[18],qb[18]);
jkff JK19(j,k,q[18],reset,q[19],qb[19]);
jkff JK20(j,k,q[19],reset,q[20],qb[20]);
jkff JK21(j,k,q[20],reset,q[21],qb[21]);
jkff JK22(j,k,q[21],reset,q[22],qb[22]);
jkff JK23(j,k,q[22],reset,q[23],qb[23]);
jkff JK24(j,k,q[23],reset,q[24],qb[24]);
jkff JK25(j,k,q[24],reset,q[25],qb[25]);
jkff JK26(j,k,q[25],reset,q[26],qb[26]);
jkff JK27(j,k,q[26],reset,q[27],qb[27]);
jkff JK28(j,k,q[27],reset,q[28],qb[28]);
jkff JK29(j,k,q[28],reset,q[29],qb[29]);
jkff JK30(j,k,q[29],reset,q[30],qb[30]);
jkff JK31(j,k,q[30],reset,q[31],qb[31]);

endmodule

module jkff(j,k,clock,reset,q,qb);
input j,k,clock,reset;
output reg q,qb;
always@(negedge clock)
begin
case({reset,j,k})
3'b100 :q=q;
3'b101 :q=0;
3'b110 :q=1;
3'b111 :q=~q;
default :q=0;
endcase
qb<=~q;
end
endmodule
