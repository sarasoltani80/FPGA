module three_to_eight_Decoder_tb;

reg [2:0] data;
reg enable;

wire [0:7] out;

three_to_eight_Decoder u1(data,enable,out);
initial begin
$monitor("%d data=%b, enable=%b, out=%b",$time, data, enable, out);
#20
data=000;
enable=0;
#20
data=100;
enable=0;
#20
data=010;
enable=0;
#20
data=001;
enable=0;
#20
data=110;
enable=0;
#20
data=101;
enable=0;
#20
data=011;
enable=0;
#20
data=111;
enable=0;
#20
data=000;
enable=1;
#20
data=100;
enable=1;
#20
data=010;
enable=1;
#20
data=001;
enable=1;
#20
data=110;
enable=1;
#20
data=101;
enable=1;
#20
data=011;
enable=1;
#20
data=111;
enable=1;

end 
endmodule
