// A B X S C
// 0 0 0 0 0
// 0 0 1 1 0
// 0 1 0 1 0
// 0 1 1 0 1
// 1 0 0 1 0
// 1 0 1 0 1
// 1 1 0 0 1
// 1 1 1 1 1
module Fulladder(
  input wire A, B, X,
  output wire S, C
);
  wire tmp;

  Halfadder ha1(.A(A), .B(B), .S(tmp), .C(tmp));
  Halfadder ha2(.A(X), .B(tmp), .S(), .C(C));
endmodule
