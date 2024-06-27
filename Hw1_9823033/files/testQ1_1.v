module halfadder1_tb;
reg a, b;
wire s, c;
halfadder1 u1(a,b,s,c);
initial begin
$monitor("%d a=%b, b=%b, s=%b, c=%b",$time, a, b, s, c);
#20
a=0;
b=0;
#20
a=0;
b=1;
#20
a=1;
b=1;

end
endmodule
