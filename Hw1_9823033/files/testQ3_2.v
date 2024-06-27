module mux_four_to_one_sixteen_tb;

reg [15:0] I0, I1, I2, I3;

reg s1, s0;

wire [15:0] qout;

mux_four_to_one_sixteen u1(I0,I1,I2,I3,s1,s0,qout);
initial begin
$monitor("%d I0=%b, I1=%b, I2=%b, I3=%b, s1=%b, s0=%b, qout=%b",$time, I0, I1, I2, I3, s1, s0, qout);
#20
I0=16'hAA00;
I1=16'h00;
I2=16'h00;
I3=16'h00;
s1=0;
s0=0;
#20
I0=16'h00;
I1=16'hAA00;
I2=16'h00;
I3=16'h00;
s1=0;
s0=1;
#20
I0=16'h00;
I1=16'h00;
I2=16'hAA00;
I3=16'h00;
s1=1;
s0=0;
#20
I0=16'h00;
I1=16'h00;
I2=16'h00;
I3=16'hAA00;
s1=1;
s0=1;
end 
endmodule
