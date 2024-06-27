module mux_four_to_one(input I0, I1, I2, I3, s1, s0, output Q);
wire s0_bar, s1_bar,a_sel,b_sel,c_sel,d_sel;

not u1(s1_bar,s1);
not u2(s0_bar,s0);

and u3(a_sel,I0,s0_bar,s1_bar);
and u4(b_sel,I1,s1_bar,s0);
and u5(c_sel,I2,s1,s0_bar);
and u6(d_sel,I3,s1,s0);

or u7(Q,a_sel,b_sel,c_sel,d_sel);

endmodule