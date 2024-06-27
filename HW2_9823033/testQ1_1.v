module test_myReg;
reg clk, reset, load, serial_in, shift_right, shift_left;
reg [7:0] data_in;
wire [7:0] data_out;
wire serial_out;

myReg u1(clk, reset, data_in, data_out, load, shift_right, shift_left, serial_in, serial_out);
initial begin
data_in=4'b1111; clk=0; reset=0; load=1; shift_right=0; shift_left=0; serial_in=0;
end
initial repeat (50) #5 clk=~clk;
initial repeat (15) #10 shift_right=~shift_right;
initial repeat (15) #15 shift_left=~shift_left;
initial repeat (15) #10 load=~load;
initial repeat (10) #25 serial_in=~serial_in;
initial begin
$monitor("%d clk=%b, reset=%b, data_in=%b, data_out=%b, load=%b, shift_right=%b, shift_left=%b, serial_in=%b, serial_out=%b",$time, clk, reset, data_in, data_out, load, shift_right, shift_left, serial_in, serial_out);

#10 reset=0;
#20 load=0;
#30 reset=1;
#40 load=1;
end
endmodule
