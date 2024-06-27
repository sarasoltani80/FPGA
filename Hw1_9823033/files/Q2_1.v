module decoder_one_to_two(input data, enable,output parout1, parout2);
wire a_sel;
not u1(a_sel,data);
and u2(parout1,a_sel,enable);
and u3(parout2,data,enable);
endmodule
