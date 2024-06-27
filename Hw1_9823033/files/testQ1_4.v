module adder_tb;
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [4:0] sum;
wire cout;
adder U1(a,b,cin,sum,cout);
initial begin
$monitor("%d a=%b, b=%b, cin=%b, sum=%b, cout=%b",$time, a, b, cin, sum, cout);
#20
a=4'b0000;
b=4'b0000;
cin=0;
#20
a=4'b0000;
b=4'b0000;
cin=1;
#20
a=4'b0001;
b=4'b1111;
cin=1;
#20
a=4'b0001;
b=4'b1111;
cin=0;
#20
a=4'b1100;
b=4'b0011;
cin=1;
#20
a=4'b1100;
b=4'b0011;
cin=0;
end
endmodule
