module halfadder1(input a, b, output s, carry);
assign s=(a&~b) | (b&~a);
assign carry=a&b;
endmodule
