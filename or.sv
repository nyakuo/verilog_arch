// a, b out
// 0  0 0
// 0  1 1
// 1  0 1
// 1  1 1
module Or(
    input a, b,
    output out);
  wire                not_a, not_b, tmp;

  not_gate not_1(a, not_a);
  not_gate not_2(b, not_b);
  and_gate and_1(not_a, not_b, tmp);
  not_gate not_3(tmp, out);
endmodule // or_gate
