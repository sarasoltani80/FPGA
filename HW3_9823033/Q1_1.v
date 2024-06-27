`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:05:54 05/17/2021 
// Design Name: 
// Module Name:    Q1 
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
module myReg(
    input clk,
    input reset,
    input [7:0] pdata,
    output reg [7:0] qdata,
    input load,
    input shift_right,
    input shift_left,
    input serial_in,
    output reg serial_out
    );
	 
  always @ (posedge clk)
   begin
	  
	  if(shift_left)
      begin
        serial_out <= qdata[7];
        qdata <= {qdata[6:0],serial_in};
      end
		
	  if(shift_right)
	   begin
		  serial_out <= qdata[0];
        qdata <= {serial_in,qdata[7:1]};
		end
		
	  if(load)
	   begin
		 qdata <= pdata;
		 serial_out <= 0;
		end
		
	  if(reset)
	   begin
		  qdata <= 0;
		  serial_out <= 0;
		end
	end


endmodule
