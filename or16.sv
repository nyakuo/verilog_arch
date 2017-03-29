`include "or.sv"

`ifndef __OR16__
  `define __OR16__
module Or16 (
  input [15:0] A, B,
  output [15:0] OUT);

  generate
    genvar i;
    for (i=0; i<16; i=i+1) begin
      Or or1(.A(A[i]), .B(B[i]), .OUT(OUT[i]));
    end
  endgenerate
endmodule // or16
`endif
