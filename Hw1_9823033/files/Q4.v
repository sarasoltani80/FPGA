module rahahan(A,B,sel,C,D);

input [7:0] A, B;
input sel;
output reg [7:0] C, D;

always @(sel) begin
if(sel) begin
assign C=B;
assign D=A;

end else begin
assign C=A;
assign D=B;

end
end
endmodule
