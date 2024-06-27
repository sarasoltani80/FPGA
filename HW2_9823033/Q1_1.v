
module myReg(clk, reset, pdata, qdata, load, shift_right, shift_left, serial_in, serial_out);

  input           clk, reset, load, shift_right, shift_left, serial_in;
  input     [7:0] pdata;
  
  output reg[7:0] qdata;
  output reg      serial_out;

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
