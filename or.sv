`include "not.sv"
`include "and.sv"
// a, b out
// 0  0 0
// 0  1 1
// 1  0 1
// 1  1 1
module Or(
    input a, b,
    output out);
  wire                not_a, not_b, tmp;

  Not not_1(a, not_a);
  Not not_2(b, not_b);
  And and_1(not_a, not_b, tmp);
  Not not_3(tmp, out);
endmodule // Or
