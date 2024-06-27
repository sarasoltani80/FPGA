module mux_thirty_two(data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,data20,data21,data22,data23,data24,data25,data26,data27,data28,data29,data30,data31,data32,s4,s3,s2,s1,s0,qout);
input [15:0] data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, data24, data25, data26, data27, data28, data29, data30, data31, data32;
input s4, s3, s2, s1, s0;
output [15:0] qout;
wire [15:0] a_sel, b_sel, c_sel, d_sel, e_sel, f_sel, g_sel, h_sel, i_sel, k_sel;
wire [15:0] m_sel=16'h00;
wire [15:0] n_sel=16'h00;

mux_four_to_one_sixteen u1(data1,data2,data3,data4,s1,s0,a_sel);
mux_four_to_one_sixteen u2(data5,data6,data7,data8,s1,s0,b_sel);
mux_four_to_one_sixteen u3(data9,data10,data11,data12,s1,s0,c_sel);
mux_four_to_one_sixteen u4(data13,data14,data15,data16,s1,s0,d_sel);
mux_four_to_one_sixteen u5(data17,data18,data19,data20,s1,s0,e_sel);
mux_four_to_one_sixteen u6(data21,data22,data23,data24,s1,s0,f_sel);
mux_four_to_one_sixteen u7(data25,data26,data27,data28,s1,s0,g_sel);
mux_four_to_one_sixteen u8(data29,data30,data31,data32,s1,s0,h_sel);

mux_four_to_one_sixteen u9(a_sel,b_sel,c_sel,d_sel,s3,s2,i_sel);
mux_four_to_one_sixteen u10(e_sel,f_sel,g_sel,h_sel,s3,s2,k_sel);

mux_four_to_one_sixteen u11(i_sel,k_sel,m_sel,n_sel,0,s4,qout);

endmodule

