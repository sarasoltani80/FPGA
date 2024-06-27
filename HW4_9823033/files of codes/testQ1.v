module Top_module_test;


  reg Clock;
  reg Reset;
  reg [3:0] Target_Num;
  reg [3:0] Second_Num;
  reg [3:0] First_Num;
  wire [1:0] Result;


  Top_module uut (First_Num, Second_Num, Target_Num, Clock, Reset, Result);

  initial begin
 
    Clock = 0; Reset = 1; Target_Num = 0; Second_Num = 0;  First_Num = 0;

$monitor("%d First_Num=%b, Second_Num=%b, Target_Num=%b, clock=%b, Reset=%b, Result=%b",$time, First_Num, Second_Num, Target_Num, Clock, Reset, Result);
   

    #5;
    Target_Num = 4'b1101;
    Second_Num = 4'b1000;
    First_Num = 4'b0001;
    Reset=0;

    #10;
    Second_Num = 4'b1010;
    First_Num = 4'b0101;
    
    #10;
    Second_Num = 4'b1111;
    First_Num = 4'b1100;
    
    #10;
    Second_Num = 4'b1011;
    First_Num = 4'b0000;
    
    #10;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;
    
    #10;
    Second_Num = 4'b1101;
    First_Num = 4'b11;
    
    #10;
    Second_Num = 4'b1110;
    First_Num = 4'b1001;
    
    #10;
Reset=1;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;
    
    #10;
    Second_Num = 4'b1100;
    First_Num = 4'b01;

    
    #10;
Reset=0;
    Second_Num = 4'b1100;
    First_Num = 4'b010;
Reset=1;
    
    #10;

    Second_Num = 4'b1110;
    First_Num = 4'b1111;

  #10;
Reset=0;
    Second_Num = 4'b1010;
    First_Num = 4'b1100;
    


  #10;
    Second_Num = 4'b1010;
    First_Num = 4'b1101;

    #10;
    Second_Num = 4'b1111;
    First_Num = 4'b1100;

    
    #10;
    Second_Num = 4'b1011;
    First_Num = 4'b0000;
Reset=1;
    
    #10;
Reset=0;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;
    
    #10;
    Second_Num = 4'b1101;
    First_Num = 4'b1101;
    
    #10;
    Second_Num = 4'b1110;
    First_Num = 4'b1001;
    
    #10;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;
Reset=1;
    
    #10;
    Second_Num = 4'b1100;
    First_Num = 4'b01;
    
    #10;
    Second_Num = 4'b1100;
    First_Num = 4'b010;
Reset=0;
    
    #10;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;

    #10;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;

#10;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;

    #10;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;
#10;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;

    #10;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;
#10;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;

    #10;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;
#10;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;

    #10;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;
#10;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;

    #10;
    Second_Num = 4'b1110;
    First_Num = 4'b1111;
        
   

  end
  initial repeat (100) #5 Clock = ~Clock;
      
      
endmodule
