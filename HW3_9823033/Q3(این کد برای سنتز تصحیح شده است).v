`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:43:35 05/20/2021 
// Design Name: 
// Module Name:    Q3 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Q3(
    input input_seq,
    input clk,
    input reset,
    input [1:0] lookfor_seq,
    output reg seq_detected,
    output reg [15:0] seq_count
    );
	 
parameter [2:0] s0=3'b000, s1=3'b001, s2=3'b010, s3=3'b011, s4=3'b100, s5=3'b101;
reg [2:0] current;
reg [1:0] temp;
/*always @(lookfor_seq,reset)begin
seq_count=16'h0000; seq_detected=0;
end*/
always @(negedge clk)begin
if(reset) begin
current <= s0;
seq_count<=16'h0000; seq_detected<=0;
end
else begin
if(lookfor_seq!=temp)begin
seq_count<=16'h0000; seq_detected<=0;
temp <=lookfor_seq;
end


if (lookfor_seq == 2'b00)
begin
case (current)
s0: if (input_seq) current <= s1;else current <= s0;
s1: if (input_seq) current <= s1;else current <= s2;
s2: if (input_seq) current <= s3;else current <= s0;
s3: if (input_seq) current <= s4;else current <= s2;
s4: if (input_seq) current <= s5;else current <= s2;
s5: if (input_seq) current <= s1;else current <= s2;
endcase
end
if(lookfor_seq == 2'b01)
begin
case (current)
s0: if (input_seq) current <= s0;else current <= s1;
s1: if (input_seq) current <= s2;else current <= s1;
s2: if (input_seq) current <= s0;else current <= s3;
s3: if (input_seq) current <= s4;else current <= s1;
s4: if (input_seq) current <= s0;else current <= s5;
s5: if (input_seq) current <= s4;else current <= s1;
endcase
end
if(lookfor_seq == 2'b10)
begin
case (current)
s0: if (input_seq) current <= s1;else current <= s0;
s1: if (input_seq) current <= s1;else current <= s2;
s2: if (input_seq) current <= s3;else current <= s0;
s3: if (input_seq) current <= s1;else current <= s4;
s4: if (input_seq) current <= s5;else current <= s0;
s5: if (input_seq) current <= s1;else current <= s4;
endcase
end
if(lookfor_seq == 2'b11)
begin
case (current)
s0: if (input_seq) current <= s1;else current <= s0;
s1: if (input_seq) current <= s1;else current <= s2;
s2: if (input_seq) current <= s3;else current <= s0;
s3: if (input_seq) current <= s1;else current <= s4;
s4: if (input_seq) current <= s3;else current <= s5;
s5: if (input_seq) current <= s1;else current <= s0;
endcase
end
if(current == s5)begin
seq_detected <= 1;
seq_count<=seq_count+1;
end
else begin
seq_detected<=0;
end
end
end
endmodule



