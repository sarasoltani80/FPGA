module RFCorrelator(input Bit_stream, Clock, Reset, output reg [3:0] out_str);
	reg [5:0] counter = 0;
	reg [31:0] shift_reg = 0;
	wire [3:0] out_4;
	reg [31:0] Num_2=0, Num_3=0, Num_4=0, Num_5=0, Num_6=0, Num_7=0, Num_8=0, Num_9=0, Num_10=0, Num_11=0, Num_12=0, Num_13=0, Num_14=0, Num_15=0,
 Num_16=32'b0000_0000_0000_0000_0000_0000_0000_0001, Target_Num = 32'b1111_1111_1111_1111_1111_1111_1111_1111;

correlation_32 U(Num_3, Num_2, Num_4, Num_5, Num_6, Num_7, Num_8, Num_9, shift_reg, Num_10, Num_11, Num_12, Num_13, Num_14, Num_15, Num_16,
				Target_Num, Clock, Reset, out_4);

	always @(posedge Clock, posedge Reset) begin

		if (Reset) begin
			counter <= 0;
			out_str <= 0;
			shift_reg <= 0;
		end

		else begin

			counter <= counter + 1;
			if(counter != 6'b100000) 
				shift_reg <= {Bit_stream , shift_reg[31:1]};

			else begin

				out_str <= out_4;
				counter <= 0;
				shift_reg <= 0;
			end

		end

	end

endmodule


