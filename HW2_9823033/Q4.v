module Binary_Divisibility_By_7(string, clock, Reset, Remainder, Divisible);
input string, clock, Reset;
output reg [3:0] Remainder;
output reg Divisible;
parameter [2:0] s0=3'b111, s1=3'b000, s2=3'b001, s3=3'b010, s4=3'b011, s5=3'b100, s6=3'b101, s7=3'b110;
reg [2:0] current;

always @(posedge clock) begin
if (Reset)begin 
current = s0;
Remainder <= 3'b000;
Divisible <= 0;
end 
else
case (current)
s0: if (string)begin 
current <= s2;
Remainder <= 3'b001;
Divisible <= 0;
end 
else 
begin
current <= s1;
Remainder <= 3'b000;
Divisible <= 1;
end

s1: if (string) 
begin 
current <= s2; 
Remainder <= 3'b001;
Divisible <= 0;
end
else
begin
current <= s1;
Remainder <= 3'b000;
Divisible <= 1;
end

s2: if (string)
begin
current <= s4;
Remainder <= 3'b011;
Divisible <= 0;
end
else
begin 
current <= s3;
Remainder <= 3'b010;
Divisible <= 0;
end

s3: if (string)
begin 
current <= s6;
Remainder <= 3'b101;
Divisible <= 0;
end 
else
begin 
current <= s5;
Remainder <= 3'b100;
Divisible <= 0;
end

s4: if (string)
begin 
current <= s1;
Remainder <= 3'b000;
Divisible <= 1;
end
else
begin 
current <= s7;
Remainder <= 3'b110;
Divisible <= 0;
end

s5: if (string)
begin 
current <= s3;
Remainder <= 3'b010;
Divisible <= 0;
end
else 
begin
current <= s2;
Remainder <= 3'b001;
Divisible <= 0;
end
s6: if (string) 
begin 
current <= s5;
Remainder <= 3'b100;
Divisible <= 0;
end
else
begin 
current <= s4;
Remainder <= 3'b011;
Divisible <= 0;
end
s7: if (string) 
begin 
current <= s7;
Remainder <= 3'b110;
Divisible <= 0;
end 
else 
begin
current <= s6;
Remainder <= 3'b101;
Divisible <= 0;
end
endcase
end
endmodule

 
