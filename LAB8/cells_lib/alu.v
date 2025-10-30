`timescale 1ns/100ps
module alu(out, zero, opcode, data, accum);
input [7:0] data, accum;
input [2:0] opcode;
output zero;
output [7:0] out;
reg [7:0] out;
reg zero;

parameter PASS0 = 3'b000,
	PASS1 = 3'b001,
	ADD = 3'b010,
	AND = 3'b011,
	XOR = 3'b100,
	PASSD = 3'b101,
	PASS6 = 3'b110,
	PASS7 = 3'b111;

always@(opcode or data or accum)
begin
	if (accum==8'b00000000)
	zero = 1'b1;
	else
	zero = 1'b0;

	case(opcode)
	3'b000: out=accum;
	3'b001: out=accum;
	3'b010: out=accum+data;
	3'b011: out=accum&data;
	3'b100: out=accum^data;
	3'b101: out=data;
	3'b110: out=accum;
	3'b111: out=accum;
	default: out=8'bx;
endcase
end
endmodule
