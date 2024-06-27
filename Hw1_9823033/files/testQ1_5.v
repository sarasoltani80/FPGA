module addsub_tb;
reg [15:0] a;
reg [15:0] b;
reg cin;
wire [15:0] sum;
wire cout;
addsub u1(a,b,cin,sum,cout);
initial begin
$monitor("%d a=%b, b=%b, cin=%b, sum=%b, cout=%b",$time, a, b, cin, sum, cout);
#20
a=16'hAA00;
b=16'hAA00;
cin=1;
#20
a=16'hAA11;
b=16'hAA11;
cin=1;
#20
a=16'hAA11;
b=16'hAA00;
cin=0;
#20
a=16'hAA11;
b=16'hAA11;
cin=0;
#20
a=16'hAB11;
b=16'hAB00;
cin=0;
end
endmodule


 
