`ifndef __HALFADDER__
`define __HALFADDER__
`include "and.sv"
`include "xor.sv"
module HalfAdder(
  input wire A, B,
  output wire S, C
);
  MyAnd and1(.A(A), .B(B), .OUT(C));
  MyXor xor1(.A(A), .B(B), .OUT(S));
endmodule
`endif
