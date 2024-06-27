module test_m_counter;
reg pulse1000, pulse2000, pulse5000, Reset, clock;
reg [18:0] count_m;
wire outr;
wire [8:0] c_1000;
wire [7:0] c_2000;
wire [6:0] c_5000;

m_counter u1(count_m, pulse1000, pulse2000, pulse5000, clock, Reset, out, c_1000, c_2000, c_5000);
initial begin
pulse1000=0; pulse2000=0; pulse5000=0; count_m=500000; clock=0; Reset=1; 
end

initial repeat (200) #5 clock=~clock;
initial repeat (60) #10 pulse1000=~pulse1000;
initial repeat (60) #15 pulse2000=~pulse2000;
initial repeat (60) #15 pulse5000=~pulse5000;


initial begin
$monitor("%d count_m=%b, pulse1000=%b, pulse2000=%b, pulse5000=%b, clock=%b, Reset=%b, out=%b, c_1000=%b, c_2000=%b, c_5000=%b",$time, count_m, pulse1000, pulse2000, pulse5000, clock, Reset, out, c_1000, c_2000, c_5000);

#15 Reset=0;
end
endmodule
