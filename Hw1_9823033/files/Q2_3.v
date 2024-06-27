module three_to_eight_Decoder(datain, enable, dataout);

input [2:0] datain;
input enable;
output [0:7] dataout;
wire a_sel, b_sel, c_sel, d_sel;

decoder_two_to_four u1(datain[2],datain[1],enable,a_sel,b_sel,c_sel,d_sel);
decoder_one_to_two u2(datain[0],a_sel,dataout[0],dataout[1]);
decoder_one_to_two u3(datain[0],b_sel,dataout[2],dataout[3]);
decoder_one_to_two u4(datain[0],c_sel,dataout[4],dataout[5]);
decoder_one_to_two u5(datain[0],d_sel,dataout[6],dataout[7]);

endmodule
