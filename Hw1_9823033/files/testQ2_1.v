module decoder_one_to_two_tb;
reg din, enb;
wire out1, out2;
decoder_one_to_two u1(din,enb,out1,out2);
initial begin
$monitor("%d din=%b, enb=%b, out1=%b, out2=%b",$time, din, enb, out1, out2);
#20
din=1;
enb=0;
#20
din=0;
enb=0;
#20
din=1;
enb=1;
#20
din=0;
enb=1;
end
endmodule


