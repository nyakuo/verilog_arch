module Halfadder(
  input wire A, B,
  output wire S, C
);
  And and1(.a(A), .b(B), .out(C));
  Xor xor1(.a(A), .b(B), .out(S));
endmodule
