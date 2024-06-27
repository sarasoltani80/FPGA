module Top_module #(parameter N=4)(First_Num, Second_Num, Target_Num, clock, Reset, Result);
	input [N-1:0] First_Num, Second_Num, Target_Num;
	input clock, Reset;
	output [1:0] Result;
	wire [1:0] correct_guess, out_wr;
	wire [N+2:0] out_1, out_2;


	Correlation #(N) u1(First_Num,Second_Num,Target_Num,clock,Reset,correct_guess,out_1,out_2);
	winner #(N) u2(out_1,out_2,out_wr);
	Decision u3(correct_guess,out_wr,clock,Reset,Result);

endmodule

module Correlation #(parameter N=4)(input [N-1:0] First_Num, Second_Num, Target_Num,input Clock, input Reset, output reg [1:0] Correct_guess, output reg [N+2:0] Out_1=0, Out_2=0);

	reg [N:0] first_correlation;
	reg [N:0] second_correlation;
	always @(posedge Clock,posedge Reset)begin
		if(Reset)begin
			Out_1 <= 0;
			Out_2 <= 0;
		end

		else begin
			first_correlation = correlation_calculator(First_Num,Target_Num);
			second_correlation = correlation_calculator(Second_Num,Target_Num);

			Out_1 <= Out_1 + first_correlation;
			Out_2 <= Out_2 + second_correlation;
			//Correct_guess = 0;
		end
	end
	always @(Reset,First_Num,Second_Num,Target_Num) begin
		if(Reset)
			Correct_guess=2'b00;
		else begin
			if(First_Num==Target_Num && Second_Num==Target_Num )
				Correct_guess=2'b11;
			else begin
				if(First_Num==Target_Num)
				        Correct_guess=2'b01;

				else if(Second_Num==Target_Num)
					Correct_guess = 2'b10;

				else
					Correct_guess = 2'b00;
			end
		end
	end
	
	function [N:0] correlation_calculator;
	
		input [N-1:0] first, target;
		integer i;
		
		begin
			for(i=0;i<N;i=i+1) begin

			if(i==0)
				correlation_calculator=0;
				
			if(target[i] == first[i])
				correlation_calculator=correlation_calculator+1;

			end
		end
	endfunction

endmodule








module winner #(parameter N=4)(input [N+2:0] Out_1, Out_2, output reg [1:0] Out_wr=0);

	always@(*) begin

		if(Out_1 > Out_2)
			Out_wr=2'b01;

		else if(Out_1 < Out_2)
			Out_wr=2'b10;

		else
			Out_wr=2'b11;

	end
	
endmodule

module Decision (input [1:0] Correct_guess, input [1:0] Out_wr,input clock,input Reset, output reg [1:0] Result=0);
	reg [3:0] counter=0;
	always@(posedge clock,posedge Reset) begin
		if(Reset)begin
			Result <= 2'b00;
			counter <= 0;
		end

		else begin
			if(Result == 2'b00)begin
				
				if((Correct_guess == 2'b01 || Correct_guess == 2'b10 || Correct_guess == 2'b11) && counter != 1'b0 )
					Result <= Correct_guess;
					
				else begin
					counter <= counter+1;
					if(counter == 4'b1010)
						Result <= Out_wr;

				end
			end
		end
	end
	
endmodule

