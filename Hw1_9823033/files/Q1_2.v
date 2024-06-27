module fulladder(input x, y, z, output sum, carry);
wire s1;
wire car1;
wire car2;
halfadder1 instant1(x,y,s1,car1);
halfadder1 instant2(s1,z,sum,car2);
assign carry=car1|car2;
endmodule
