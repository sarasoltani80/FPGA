
module RFCorrelator_tb;

reg Bit_stream, Clock, Reset;

wire [3:0] out_str;

  RFCorrelator u (Bit_stream,Clock,Reset,out_str);

  initial begin

    Clock = 0;
    Reset = 1;


$monitor("%d Bit_stream=%b,  Clock=%b,  Reset=%b,  out_str=%b",$time, Bit_stream, Clock, Reset, out_str);


    #5;
   	Bit_stream = 1;
    	Reset=0;

    #10;
   	Bit_stream = 0;
	#5 Reset=1;

    #10;
    	Reset=0;
    	Bit_stream = 1;

    #10;
    	Bit_stream = 1;

    #10;
    	Bit_stream = 0;

   #10;
   	Bit_stream = 1;

   #10;
  	Bit_stream = 0;

   #10;
  	Bit_stream = 1;

    #10;
  	Bit_stream = 1;
    
    #10;
    	Bit_stream = 0;
    
    #10;
	 Bit_stream = 0;

    /*#10;
    	Bit_stream = 1;

    #10;
    	Bit_stream = 0;

   #10;
   	Bit_stream = 1;

   #10;
  	Bit_stream = 0;

   #10;
  	Bit_stream = 1;

    #10;
  	Bit_stream = 1;
    
    #10;
    	Bit_stream = 0;
    
    #10;
	 Bit_stream = 1;*/
    
  end
  initial repeat (200) #5 Clock = ~Clock;

endmodule

