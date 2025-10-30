`timescale 1 ns/ 100 ps
module compareTop;
wire [3:0] b1,c1,b2,c2;
reg[3:0]a;
reg clk;
initial
begin
clk=0;
forever #50 clk=~clk;
end
initial begin
$dumpfile("compareTop.fsdb");
$dumpvars (2,compareTop);
end
initial
begin
a=4'h3;
$display("_______________________________");
# 100 a =4'h7;
$display("_______________________________");
# 100 a =4'hf;
$display("_______________________________");
# 100 a =4'ha;
$display("_______________________________");
# 100 a =4'h2;
$display("_______________________________");
# 100 $display("_______________________________");
$finish;
end
non_blocking nonblocking(clk,a,b2,c2);
blocking blocking(clk,a,b1,c1);

endmodule
