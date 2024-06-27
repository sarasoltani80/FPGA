module test_Binary_Divisibility_By_7;
reg string, Reset, clock;
wire [2:0] Remainder;
wire Divisible;

Binary_Divisibility_By_7 u1(string, clock, Reset, Remainder, Divisible);
initial begin
string=0; clock=0; Reset=1; 
end

initial repeat (50) #5 clock=~clock;
initial repeat (20) #10 string=~string;

initial begin
$monitor("%d string=%b, clock=%b, Reset=%b, Remainder=%b, Divisible=%b",$time, string, clock, Reset, Remainder, Divisible);

#15 Reset=0;
end
endmodule
