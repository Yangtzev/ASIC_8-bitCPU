/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : R-2020.09-SP4
// Date      : Fri Nov 28 18:13:34 2025
/////////////////////////////////////////////////////////////


module control_pad ( rst_, clk, zero, opcode, rd, wr, ld_ir, ld_ac, ld_pc, 
        inc_pc, halt, data_e, sel );
  input [2:0] opcode;
  input rst_, clk, zero;
  output rd, wr, ld_ir, ld_ac, ld_pc, inc_pc, halt, data_e, sel;
  wire   rd_pad, wr_pad, ld_ir_pad, ld_ac_pad, ld_pc_pad, inc_pc_pad, halt_pad,
         data_e_pad, zero_pad, clk_pad, rst_pad, n3, n5, n6, n7, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;
  wire   [2:0] opcode_pad;
  wire   [2:0] \i_control/state ;

  PI i_rst ( .PAD(rst_), .C(rst_pad) );
  PI i_clk ( .PAD(clk), .C(clk_pad) );
  PI i_zero ( .PAD(zero), .C(zero_pad) );
  PI i_opcode_0 ( .PAD(opcode[0]), .C(opcode_pad[0]) );
  PI i_opcode_1 ( .PAD(opcode[1]), .C(opcode_pad[1]) );
  PI i_opcode_2 ( .PAD(opcode[2]), .C(opcode_pad[2]) );
  PO8 i_rd ( .I(rd_pad), .PAD(rd) );
  PO8 i_wr ( .I(wr_pad), .PAD(wr) );
  PO8 i_ld_ir ( .I(ld_ir_pad), .PAD(ld_ir) );
  PO8 i_ld_ac ( .I(ld_ac_pad), .PAD(ld_ac) );
  PO8 i_ld_pc ( .I(ld_pc_pad), .PAD(ld_pc) );
  PO8 i_inc_pc ( .I(inc_pc_pad), .PAD(inc_pc) );
  PO8 i_halt ( .I(halt_pad), .PAD(halt) );
  PO8 i_data_e ( .I(data_e_pad), .PAD(data_e) );
  PO8 i_sel ( .I(n17), .PAD(sel) );
  OAI21XL U15 ( .A0(n5), .A1(n23), .B0(n15), .Y(n6) );
  NAND2BXL U18 ( .AN(n16), .B(opcode_pad[0]), .Y(n10) );
  DFFRXL \i_control/state_reg[1]  ( .D(n17), .CK(clk_pad), .RN(rst_pad), .Q(
        \i_control/state [1]), .QN(n22) );
  AND2XL U12 ( .A(opcode_pad[2]), .B(opcode_pad[1]), .Y(n3) );
  NOR2XL U13 ( .A(opcode_pad[2]), .B(opcode_pad[1]), .Y(n12) );
  NOR2XL U14 ( .A(n3), .B(n12), .Y(n15) );
  NOR3BXL U26 ( .AN(n15), .B(\i_control/state [2]), .C(n14), .Y(ld_ac_pad) );
  NAND3XL U17 ( .A(opcode_pad[2]), .B(opcode_pad[1]), .C(n13), .Y(n16) );
  NOR3XL U27 ( .A(\i_control/state [2]), .B(opcode_pad[0]), .C(n16), .Y(wr_pad) );
  NAND4XL U20 ( .A(n13), .B(opcode_pad[0]), .C(n12), .D(zero_pad), .Y(n9) );
  OAI211XL U22 ( .A0(\i_control/state [2]), .A1(n10), .B0(n9), .C0(n11), .Y(
        inc_pc_pad) );
  NOR2XL U25 ( .A(n15), .B(n14), .Y(data_e_pad) );
  OAI211XL U16 ( .A0(\i_control/state [2]), .A1(n22), .B0(n7), .C0(n6), .Y(
        rd_pad) );
  NOR3BXL U23 ( .AN(n12), .B(opcode_pad[0]), .C(n11), .Y(halt_pad) );
  INVXL U19 ( .A(n10), .Y(ld_pc_pad) );
  DFFRXL \i_control/state_reg[0]  ( .D(n19), .CK(clk_pad), .RN(rst_pad), .Q(
        \i_control/state [0]), .QN(n23) );
  DFFRXL \i_control/state_reg[2]  ( .D(n18), .CK(clk_pad), .RN(rst_pad), .Q(
        \i_control/state [2]), .QN(n21) );
  NOR2X2 U28 ( .A(n22), .B(\i_control/state [0]), .Y(ld_ir_pad) );
  NOR2X2 U29 ( .A(n20), .B(n13), .Y(n17) );
  NOR2XL U30 ( .A(\i_control/state [1]), .B(\i_control/state [0]), .Y(n13) );
  NOR2XL U31 ( .A(n23), .B(n21), .Y(n20) );
  INVXL U32 ( .A(ld_ir_pad), .Y(n7) );
  INVXL U33 ( .A(n13), .Y(n14) );
  NOR2XL U34 ( .A(\i_control/state [1]), .B(n21), .Y(n5) );
  NAND3XL U35 ( .A(\i_control/state [1]), .B(\i_control/state [0]), .C(
        \i_control/state [2]), .Y(n11) );
  AOI2BB1XL U36 ( .A0N(n22), .A1N(\i_control/state [2]), .B0(n5), .Y(n19) );
  NAND2BXL U37 ( .AN(n20), .B(n7), .Y(n18) );
endmodule

