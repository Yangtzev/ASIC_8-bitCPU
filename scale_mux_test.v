`define width 8
`timescale 1 ns / 1 ns

module mux_test;

reg [`width:1] a, b;
wire [`width:1] out;
reg sel;

scale_mux #(`width) m1 (.out(out), .sel(sel), .b(b), .a(a));

initial
begin

	$monitor($stime,,"sel=%b a=%b b=%b out=%b", sel, a, b, out);//system time+....
	$dumpvars(2,mux_test);//generate .vcd file, 2:print 2ceng signal

sel=0; b={`width{1'b0}}; a={`width{1'b1}};
	#5 sel=0; b={`width{1'b1}}; a={`width{1'b0}};
	#5 sel=1; b={`width{1'b0}}; a={`width{1'b1}};
	#5 sel=1; b={`width{1'b1}}; a={`width{1'b0}};
	#5 $finish;

end
endmodule
