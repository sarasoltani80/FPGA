module decoder_two_to_four(input x, y, enable,output Q0, Q1, Q2, Q3);
wire a_sel;
wire b_sel;
wire c_sel;
not u1(a_sel,x);
and u2(b_sel,a_sel,enable);
and u3(c_sel,x,enable);

decoder_one_to_two u4(y,b_sel,Q0,Q1);
decoder_one_to_two u5(y,c_sel,Q2,Q3);

endmodule

