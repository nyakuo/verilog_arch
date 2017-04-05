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
  wire [14:0] tmp;

  HalfAdder ha1(.A(A[0]), .B(B[0]), .S(S[0]), .C(tmp[0]));
  generate
    genvar i;
    for (i=1; i<15; i=i+1) begin : fa_loop
      FullAdder fa(.A(A[i]), .B(B[i]), .X(tmp[i-1]), .S(S[i]), .C(tmp[i]));
    end
    FullAdder fa15(.A(A[15]), .B(B[15]), .X(tmp[14]), .S(S[15]), .C(C));
  endgenerate

endmodule
`endif
