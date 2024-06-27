`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:49:09 05/18/2021 
// Design Name: 
// Module Name:    Q1_2 
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
module Q1_2(
    input clk,
    input flush,
    input reset,
    input load,
    input shift_right,
    input shift_left,
    input serial_in,
    input output_enable,
    input [5:0] reg_select,
    input [31:0] data_in,
    output reg serial_out,
    output reg [31:0] data_out
    );

wire [31:0] qdata_sample;

 myReg  myReg_ins1 (
    .clk(clk), 
    .reset(reset), 
    .pdata(data_in[31:24]), 
    .qdata(qdata_sample[31:24]), 
    .load(load),
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .serial_in(serial_in), 
    .serial_out(serial_out1)
    );

 myReg  myReg_ins2 (
    .clk(clk), 
    .reset(reset), 
    .pdata(data_in[23:16]), 
    .qdata(qdata_sample[23:16]), 
    .load(load), 
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .serial_in(serial_in), 
    .serial_out(serial_out2)
    );
 
 myReg  myReg_ins3 (
    .clk(clk), 
    .reset(reset), 
    .pdata(data_in[15:8]), 
    .qdata(qdata_sample[15:8]), 
    .load(load), 
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .serial_in(serial_in), 
    .serial_out(serial_out3)
    );
  
  myReg  myReg_ins4 (
    .clk(clk), 
    .reset(reset), 
    .pdata(data_in[7:0]), 
    .qdata(qdata_sample[7:0]), 
    .load(load), 
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .serial_in(serial_in), 
    .serial_out(serial_out4)
    );

 reg [31:0] register_bank [63:0];
 integer k;

 always @ (posedge clk)
  begin
  
   if(flush)
	  begin
	   for(k=0; k<=63; k=k+1)
	    register_bank[k] <= 0;
	  end
	 
   if(shift_left)
     begin
	    serial_out <= serial_out1;
       serial_out <= register_bank[reg_select][7];
       data_out <= {register_bank[reg_select][6:0],serial_in};
     end
		
	if(shift_right)
	  begin
	    serial_out <= serial_out4;
		 serial_out <= register_bank[reg_select][0];
       data_out <= {serial_in , register_bank[reg_select][7:1]};
	  end
		
	if(load)
	  begin
		 register_bank[reg_select] <= qdata_sample;
		 data_out <= 0;
		 serial_out <= 0;
	  end
	
   if(reset)
	  begin
		 data_out <= 0;
		 serial_out <= 0;
	  end
	  
   if(!output_enable)
	 begin
	   data_out <= 32'bz;
	 end
	 
  end

endmodule

