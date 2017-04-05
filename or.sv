`ifndef __OR__
`define __OR__
`include "not.sv"
`include "and.sv"
// a, b out
// 0  0 0
// 0  1 1
// 1  0 1
// 1  1 1
module MyOr(
    input A, B,
    output OUT);
  wire not_a, not_b, tmp;

  MyNot not_1(A, not_a);
  MyNot not_2(B, not_b);
  MyAnd and_1(not_a, not_b, tmp);
  MyNot not_3(tmp, OUT);
endmodule // MyOr
`endif
