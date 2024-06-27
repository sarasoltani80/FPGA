module mux_four_to_one_sixteen(I0, I1, I2, I3, s1, s0, Q);

input [15:0] I0;
input [15:0] I1;
input [15:0] I2;
input [15:0] I3;
input s1;
input s0;
output [15:0] Q;

mux_four_to_one u1(I0[0],I1[0],I2[0],I3[0],s1,s0,Q[0]);
mux_four_to_one u2(I0[1],I1[1],I2[1],I3[1],s1,s0,Q[1]);
mux_four_to_one u3(I0[2],I1[2],I2[2],I3[2],s1,s0,Q[2]);
mux_four_to_one u4(I0[3],I1[3],I2[3],I3[3],s1,s0,Q[3]);
mux_four_to_one u5(I0[4],I1[4],I2[4],I3[4],s1,s0,Q[4]);
mux_four_to_one u6(I0[5],I1[5],I2[5],I3[5],s1,s0,Q[5]);
mux_four_to_one u7(I0[6],I1[6],I2[6],I3[6],s1,s0,Q[6]);
mux_four_to_one u8(I0[7],I1[7],I2[7],I3[7],s1,s0,Q[7]);
mux_four_to_one u9(I0[8],I1[8],I2[8],I3[8],s1,s0,Q[8]);
mux_four_to_one u10(I0[9],I1[9],I2[9],I3[9],s1,s0,Q[9]);
mux_four_to_one u11(I0[10],I1[10],I2[10],I3[10],s1,s0,Q[10]);
mux_four_to_one u12(I0[11],I1[11],I2[11],I3[11],s1,s0,Q[11]);
mux_four_to_one u13(I0[12],I1[12],I2[12],I3[12],s1,s0,Q[12]);
mux_four_to_one u14(I0[13],I1[13],I2[13],I3[13],s1,s0,Q[13]);
mux_four_to_one u15(I0[14],I1[14],I2[14],I3[14],s1,s0,Q[14]);
mux_four_to_one u16(I0[15],I1[15],I2[15],I3[15],s1,s0,Q[15]);
endmodule



 