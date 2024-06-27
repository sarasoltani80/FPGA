`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:27:29 05/18/2021 
// Design Name: 
// Module Name:    Q2 
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
module Q2(
    input [18:0] count_m,
    input pulse1000,
    input pulse2000,
    input pulse5000,
    input clock,
    input reset,
    output reg out,
    output reg [8:0] c_1000,
    output reg [7:0] c_2000,
    output reg [6:0] c_5000
    );
	 
always @(posedge clock)begin
if (reset) begin
c_1000 <= 9'b0;
c_2000 <= 8'b0;
c_5000 <= 7'b0;
out <= 0;
end
else
begin
if(pulse1000 == 1)
c_1000<=c_1000+1;

if(pulse2000 == 1)
c_2000<=c_2000+1;

if(pulse5000 == 1)
c_5000<=c_5000+1;

end

//count_all=(1000*c_1000)+(2000*c_2000)+(5000*c_5000);

if(((1000*c_1000)+(2000*c_2000))+ (5000*c_5000) >= count_m)
begin
out <= 1;
end

else begin
out <= 0;
end

end


endmodule
