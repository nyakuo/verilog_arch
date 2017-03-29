`include "not.sv"
`include "and.sv"

`ifndef __OR__
  `define __OR__
`endif
// a, b out
// 0  0 0
// 0  1 1
// 1  0 1
// 1  1 1
module Or(
    input A, B,
    output OUT);
  wire not_a, not_b, tmp;

  Not not_1(A, not_a);
  Not not_2(B, not_b);
  And and_1(not_a, not_b, tmp);
  Not not_3(tmp, OUT);
endmodule // Or
