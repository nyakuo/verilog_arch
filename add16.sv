`ifndef __ADD16__
`define __ADD16__
`include "halfadder.sv"
`include "fulladder.sv"
// 16bit加算器
module Add16(
  input wire [15:0] A, B,
  output wire [15:0] S,
  output wire C
);
  wire [15:0] tmp;

  HalfAdder ha1(.A(A[0]), .B(B[0]), .S(S[0]), .C(tmp[0]));
  generate
    genvar i;
    for (i=0; i<15; i=i+1) begin
      FullAdder fa(.A(A[i]), .B(B[i]), .X(tmp[i]), .S(S[i]), .C(tmp[i+1]));
    end
    FullAdder fa15(.A(A[15]), .B(B[15]), .X(tmp[15]), .S(S[15]), .C(C));
  endgenerate

endmodule
`endif
