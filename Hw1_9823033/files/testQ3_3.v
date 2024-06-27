module mux_thirty_two_tb;
reg [15:0] data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, data24, data25, data26, data27, data28, data29, data30, data31, data32;
reg s4,s3,s2,s1,s0;

wire [15:0] out;
mux_thirty_two u1(data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, data24, data25, data26, data27, data28, data29, data30, data31, data32, s4, s3, s2, s1, s0, out);

initial begin
$monitor("%d data1=%b, data2=%b, data3=%b, data4=%b, data5=%b, data6=%b, data7=%b, data8=%b, data9=%b, data10=%b, data11=%b, data12=%b, data13=%b, data14=%b, data15=%b, data16=%b, data17=%b, data18=%b, data19=%b, data20=%b, data21=%b, data22=%b, data23=%b, data24=%b, data25=%b, data26=%b, data27=%b, data28=%b, data29=%b, data30=%b, data31=%b, data32=%b, s4=%b, s3=%b, s2=%b, s1=%b, s0=%b, out=%b",$time, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, data24, data25, data26, data27, data28, data29, data30, data31, data32, s4, s3, s2, s1, s0, out);
#20
data1=16'hAA11;
data2=16'hAA00;
data3=16'hAA00;
data4=16'hAA00;
data5=16'hAA00;
data6=16'hAA00;
data7=16'hAA00;
data8=16'hAA00;
data9=16'hAA00;
data10=16'hAA00;
data11=16'hAA00;
data12=16'hAA00;
data13=16'hAA00;
data14=16'hAA00;
data15=16'hAA00;
data16=16'hAA00;
data17=16'hAA00;
data18=16'hAA00;
data19=16'hAA00;
data20=16'hAA00;
data21=16'hAA00;
data22=16'hAA00;
data23=16'hAA00;
data24=16'hAA00;
data25=16'hAA00;
data26=16'hAA00;
data27=16'hAA00;
data28=16'hAA00;
data29=16'hAA00;
data30=16'hAA00;
data31=16'hAA00;
data32=16'hAA00;
s4=0;
s3=0;
s2=0;
s1=0;
s0=0;
#20;
data1=16'hAA00;
data2=16'hAA11;
data3=16'hAA00;
data4=16'hAA00;
data5=16'hAA00;
data6=16'hAA00;
data7=16'hAA00;
data8=16'hAA00;
data9=16'hAA00;
data10=16'hAA00;
data11=16'hAA00;
data12=16'hAA00;
data13=16'hAA00;
data14=16'hAA00;
data15=16'hAA00;
data16=16'hAA00;
data17=16'hAA00;
data18=16'hAA00;
data19=16'hAA00;
data20=16'hAA00;
data21=16'hAA00;
data22=16'hAA00;
data23=16'hAA00;
data24=16'hAA00;
data25=16'hAA00;
data26=16'hAA00;
data27=16'hAA00;
data28=16'hAA00;
data29=16'hAA00;
data30=16'hAA00;
data31=16'hAA00;
data32=16'hAA00;
s4=0;
s3=0;
s2=0;
s1=0;
s0=1;

end
endmodule
 
