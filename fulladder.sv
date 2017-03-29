// A B X  S C
// 0 0 0  0 0
// 0 0 1  1 0
// 0 1 0  1 0
// 0 1 1  0 1
// 1 0 0  1 0
// 1 0 1  0 1
// 1 1 0  0 1
// 1 1 1  1 1
module FullAdder(
  input wire A, B, X,
  output wire S, C
);
  wire tmp, C1, C2;

  HalfAdder ha1(.A(A), .B(B), .S(tmp), .C(C1));
  HalfAdder ha2(.A(X), .B(tmp), .S(S), .C(C2));

  Or or1(.a(C1), .b(C2), .out(C));
endmodule
// A B S X C1 C2
// 1 1 0 0 1  0
// 1 0 1 1 0  1
// 0 1 1 1 0  1



