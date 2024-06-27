
module correlation_32(input [31:0] Num_1, Num_2, Num_3, Num_4, Num_5, Num_6, Num_7, Num_8, Num_9, Num_10, Num_11, Num_12, Num_13, Num_14, Num_15, Num_16,
 Target_Num, input Clock, Reset, output reg [3:0] out_4=0);

	reg [31:0] mem [15:0];
	reg [5:0] mem_correlation [15:0];
	reg [5:0] max_Num;
	reg [4:0] max_Num_index=5'b10000;
	integer i, j;

	always @(posedge Clock,posedge Reset) begin
		if(Reset) begin
			out_4 <= 0;
			max_Num = 0;
			max_Num_index = 0;
		end

		else begin
		mem[0] = Num_1;
		mem[1] = Num_2;
		mem[2] = Num_3;
		mem[3] = Num_4;
		mem[4] = Num_5;
		mem[5] = Num_6;
		mem[6] = Num_7;
		mem[7] = Num_8;
		mem[8] = Num_9;
		mem[9] = Num_10;
		mem[10] = Num_11;
		mem[11] = Num_12;
		mem[12] = Num_13;
		mem[13] = Num_14;
		mem[14] = Num_15;
		mem[15] = Num_16;

		for(i=0;i<16;i=i+1)begin
			mem_correlation[i] = correlation_calculator(mem[i],Target_Num);
		end

   		max_Num  = mem_correlation[0];
      		out_4 <= 4'b0;
		max_Num_index = 0;
      
      		for(j=0 ; j<16; j=j+1)begin
        		if(mem_correlation[j] > max_Num ) begin
          			max_Num_index = j;
          			max_Num  = mem_correlation[j];
        		end
    		  end
		out_4 <= max_Num_index; 
	  end

	
	end


	function [5:0] correlation_calculator;
	
		input [31:0] Num, target;
		integer k;
		
		begin
			for(k=0;k<32;k=k+1) begin

			if(k==0)
				correlation_calculator=0;
				
			if(target[k] == Num[k])
				correlation_calculator=correlation_calculator+1;

			end
		end
	endfunction

endmodule
