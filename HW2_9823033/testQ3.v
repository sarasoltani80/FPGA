module test_sequence_detector;

reg clk,input_seq,reset;
reg [1:0]lookfor_seq;
wire seq_detected;
integer i, j, counter1, counter2;
wire[15:0]seq_count;
wire [14:0] sel1=15'b10111_10110_10111;
wire [19:0] sel2=20'b01000_01010_01010_00100;
wire [24:0] sel3=25'b10101_10101_10000_01011_10101;
wire [19:0] sel4=20'b10000_10100_10100_10100;

sequence_detector u1( input_seq,clk,reset,lookfor_seq,seq_detected,seq_count);
initial begin
input_seq=0; clk=1; reset=1; lookfor_seq=2'b11; 
end
initial repeat (200) #5 clk=~clk;
//initial repeat (20) #10 input_seq=~input_seq;


initial begin
$monitor("%d input_seq=%b, clk=%b, reset=%b, lookfor_seq=%b, seq_detected=%b, seq_count=%h",$time, input_seq, clk, reset, lookfor_seq, seq_detected, seq_count);

#15 reset=0;
#10 lookfor_seq=2'b00;
#10
for(i=0;i<15;i=i+1)begin
@ (posedge clk)
input_seq=sel1[i];
end
/*#50
reset=1;
#50
reset=0;*/
#10 lookfor_seq=2'b01;
#10
for(j=0;i<19;j=j+1)begin
@ (posedge clk)
input_seq=sel2[j];
end
/*#50
reset=1;
#50
reset=0;*/
#10 lookfor_seq=2'b10;
#10
for(i=0;i<24;counter1=counter1+1)begin
@ (posedge clk)
input_seq=sel3[counter1];
end
/*#50
reset=1;*/
#10
lookfor_seq=2'b11;
#10
for(i=0;i<19;counter2=counter2+1)begin
@ (posedge clk)
input_seq=sel4[counter2];
end
#20
reset=1;

end

endmodule