module detector_to_one_tb;
reg [6:0] din;
wire [2:0] dout;
detector_to_one u1(din,dout);

initial begin
$monitor("%d din=%b, dout=%b",$time, din, dout);

#20
din=7'b1111111;
#20
din=7'b1111110;
#20
din=7'b0011111;
#20
din=7'b1010100;
#20
din=7'b1000000;
#20
din=7'b1100011;
#20din=7'b1010001;
#20
din=7'b0000000;

end
endmodule
