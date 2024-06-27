module addsub(data1, data2, cin, sum, carryout);
input [15:0] data1;
input [15:0] data2;
input cin;
output [15:0] sum;
output carryout;

wire [15:0] a_sel;
wire c1;
wire c2;
wire c3;
wire c4;
wire c5;


xnor u2(a_sel[0],data2[0],cin);
xnor u3(a_sel[1],data2[1],cin);
xnor u4(a_sel[2],data2[2],cin);
xnor u5(a_sel[3],data2[3],cin);
xnor u6(a_sel[4],data2[4],cin);
xnor u7(a_sel[5],data2[5],cin);
xnor u8(a_sel[6],data2[6],cin);
xnor u9(a_sel[7],data2[7],cin);
xnor u10(a_sel[8],data2[8],cin);
xnor u11(a_sel[9],data2[9],cin);
xnor u12(a_sel[10],data2[10],cin);
xnor u13(a_sel[11],data2[11],cin);
xnor u14(a_sel[12],data2[12],cin);
xnor u15(a_sel[13],data2[13],cin);
xnor u16(a_sel[14],data2[14],cin);
xnor u17(a_sel[15],data2[15],cin);


adder T1(data1[3:0],a_sel[3:0],~cin,sum[3:0],c1);
adder T2(data1[7:4],a_sel[7:4],c1,sum[7:4],c2);
adder T3(data1[11:8],a_sel[11:8],c2,sum[11:8],c3);
adder T4(data1[15:12],a_sel[15:12],c3,sum[15:12],c4);

xnor u1(carryout,c4,cin);

endmodule


