module fulladder_tb;
reg x,y,z;
wire sum,carry;
fulladder u1(x,y,z,sum,carry);
initial begin
$monitor("%d x=%b, y=%b, z=%b, sum=%b, carry=%b",$time, x, y, z, sum, carry);
#20
x=0;
y=0;
z=0;
#20
x=0;
y=1;
z=0;
#20
x=1;
y=1;
z=1;
#20
x=0;
y=1;
z=1;
end
endmodule
