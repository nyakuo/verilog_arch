`ifndef __MULTIPLEXER__
`define __MULTIPLEXER__
`include "not.sv"
`include "or.sv"
`include "and.sv"
// A B SEL OUT
// 0 0  x   0
// 1 0  0   1
// 1 0  1   0
// 0 1  1   1
// 0 1  0   0
// 1 1  x   1
// A*~SEL + B*SEL
module Multiplexer(
  input A, B, SEL,
  output OUT);
  wire not_sel, preout_a, preout_b;

  Not not1(.IN(SEL), .OUT(not_sel));
  And and1(.A(A), .B(not_sel), .OUT(preout_a));
  And and2(.A(B), .B(SEL), .OUT(preout_b));
  Or or1(.A(preout_a), .B(preout_b), .OUT(OUT));
endmodule

//module Multiplexer(
//  input A, B, SEL,
//  output OUT);
//
//  assign out = (sel == 1'b0) ? a : b;
//endmodule
`endif
