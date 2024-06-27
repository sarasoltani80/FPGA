module detector_to_one(parIn,parOut);
input [6:0] parIn;
output [2:0] parOut;
wire a_sel, b_sel, c_sel, d_sel, e_sel;

fulladder u1(parIn[0],parIn[1],parIn[2],a_sel,b_sel);
fulladder u2(parIn[3],parIn[4],parIn[5],c_sel,d_sel);
fulladder u3(a_sel,c_sel,parIn[6],parOut[0],e_sel);
fulladder u4(b_sel,d_sel,e_sel,parOut[1],parOut[2]);

endmodule

