module adder(data1 ,data2 , c0, sum, carry);
input [3:0] data1;
input [3:0] data2;
input c0;
output [3:0] sum;
output carry;
wire c1, c2, c3;
fulladder U1(data1[0],data2[0],c0,sum[0],c1);
fulladder U2(data1[1],data2[1],c1,sum[1],c2);
fulladder U3(data1[2],data2[2],c2,sum[2],c3);
fulladder U4(data1[3],data2[3],c3,sum[3],carry);
endmodule
