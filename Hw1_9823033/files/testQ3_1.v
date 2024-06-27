module mux_four_to_one_tb;
reg I0, I1, I2, I3, s1, s0;
wire Q;
mux_four_to_one u1(I0,I1,I2,I3,s1,s0,Q);

initial begin
$monitor("%d I0=%b, I1=%b, I2=%b, I3=%b, s1=%b, s0=%b, Q=%b",$time, I0, I1, I2, I3, s1, s0, Q);

#20
I0=1;
I1=0;
I2=0;
I3=0;
s1=0;
s0=0;
#20
I0=0;
I1=1;
I2=0;
I3=0;
s1=0;
s0=1;
#20
I0=0;
I1=0;
I2=1;
I3=0;
s1=1;
s0=0;
#20
I0=0;
I1=0;
I2=0;
I3=1;
s1=1;
s0=1;
#20
I0=0;
I1=0;
I2=0;
I3=0;
s1=0;
s0=1;

end
endmodule


