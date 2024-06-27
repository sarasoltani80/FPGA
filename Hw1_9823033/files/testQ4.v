module rahahan_tb;

reg [7:0] a, b;
reg sel;
wire [7:0] c, d;

rahahan u1(a,b,sel,c,d);
initial begin
$monitor("%d a=%b, b=%b, sel=%b, c=%b, d=%b",$time, a, b, sel, c, d);
#20
a=00000000;
b=11111111;
sel=0;
#20
a=00000000;
b=11111111;
sel=1;
#20
a=00000011;
b=11111000;
sel=0;
#20
a=00000011;
b=11111000;
sel=1;

end 
endmodule

