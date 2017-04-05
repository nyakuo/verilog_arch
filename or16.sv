`ifndef __OR16__
`define __OR16__
`include "or.sv"
module MyOr16 (
  input [15:0] A, B,
  output [15:0] OUT);

  generate
    genvar i;
    for (i=0; i<16; i=i+1) begin : or16_loop
      MyOr or1(.A(A[i]), .B(B[i]), .OUT(OUT[i]));
    end
  endgenerate
endmodule // or16
`endif
