`timescale 1 ns / 1 ns 
`define HLT 3'b000
`define SKZ 3'b001 
`define ADD 3'b010
`define AND 3'b011
`define XOR 3'b100
`define LDA 3'b101
`define STO 3'b110 
`define JMP 3'b111

module control
(rd,
wr,
ld_ir,
ld_ac,
ld_pc,
inc_pc,
halt,
data_e,
sel,
opcode,
zero,
clk,
rst_
); 

output rd;
output wr;
output ld_ir;
output ld_ac;
output ld_pc;
output inc_pc;
output halt;
output data_e;
output sel;
input[2:0] opcode;
input zero;
input clk;
input rst_;
reg rd;
reg wr;
reg ld_ir;
reg ld_ac;
reg ld_pc;
reg inc_pc;
reg halt;
reg data_e;
reg sel;
reg[2:0] nexstate;
reg[2:0] state;

always @(posedge clk or negedge rst_)

	if(!rst_) 
  	state <= 3'b000; 
	else
  	state <= nexstate;

always @ (opcode or state or zero) 

begin:blk 
	reg alu_op; 
	alu_op = opcode==`ADD||opcode==`AND||opcode==`XOR||opcode==`LDA; 
	nexstate <= state+3'b001;
	case (state)
		1:begin sel=1;rd=0;ld_ir=0;inc_pc=0;halt=0;ld_pc=0;data_e=0;ld_ac=0;wr=0; end
		2:begin sel=1;rd=1;ld_ir=0;inc_pc=0;halt=0;ld_pc=0;data_e=0;ld_ac=0;wr=0; end
		3:begin sel=1;rd=1;ld_ir=1;inc_pc=0;halt=0;ld_pc=0;data_e=0;ld_ac=0;wr=0; end
		4:begin sel=1;rd=1;ld_ir=1;inc_pc=0;halt=0;ld_pc=0;data_e=0;ld_ac=0;wr=0; end
		5:begin sel=0;rd=0;ld_ir=0;inc_pc=1;ld_pc=0;data_e=0;ld_ac=0;wr=0;
		if(opcode == `HLT)halt=1; else halt=0; end
		6:begin sel=0;rd=alu_op;ld_ir=0;inc_pc=0;halt=0;ld_pc=0;data_e=0;ld_ac=0;wr=0; end
		7:begin sel=0;rd=alu_op;ld_ir=0;halt=0;data_e=!alu_op;ld_ac=0;wr=0;
		if(opcode == `SKZ)inc_pc = zero;else inc_pc = 0;
		if(opcode == `JMP)ld_pc=1; else ld_pc=0; end
		0:begin sel=0;rd=alu_op;ld_ir=0;halt=0;data_e=!alu_op;ld_ac=alu_op;
		inc_pc=(opcode==`SKZ)&zero||(opcode==`JMP);
		if(opcode==`JMP)ld_pc=1; else ld_pc=0;
		if(opcode==`STO)wr=1; else wr=0; end
		default: begin sel=1'bZ;rd=1'bZ;ld_ir=1'bZ;inc_pc=1'bZ;halt=1'bZ;ld_pc=1'bZ;
		data_e=1'bZ;ld_ac=1'bZ;wr=1'bZ; end
	endcase
end
endmodule