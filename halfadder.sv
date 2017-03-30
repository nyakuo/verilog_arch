`ifndef __HALFADDER__
`define __HALFADDER__
`include "and.sv"
`include "xor.sv"
module HalfAdder(
  input wire A, B,
  output wire S, C
);
  And and1(.A(A), .B(B), .OUT(C));
  Xor xor1(.A(A), .B(B), .OUT(S));
endmodule
`endif
