module decoder_two_to_four_tb;
reg x, y, enable;
wire q0, q1, q2, q3;
decoder_two_to_four u1(x,y,enable,q0,q1,q2,q3);
initial begin
$monitor("%d x=%b, y=%b, enable=%b, q0=%b, q1=%b, q2=%b, q3=%b",$time, x, y, enable, q0, q1, q2, q3);
#20
x=0;
y=0;
enable=0;
#20
x=0;
y=1;
enable=0;
#20
x=1;
y=0;
enable=0;
#20
x=1;
y=1;
enable=0;
#20
x=0;
y=0;
enable=1;
#20
x=0;
y=1;
enable=1;
#20
x=1;
y=0;
enable=1;
#20
x=1;
y=1;
enable=1;

end
endmodule



