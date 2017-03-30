`ifndef __AND16__
  `define __AND16__
`include "and.sv"
// 16bit and
module And16 (
  input [15:0] A, B,
  output [15:0] OUT
);
  generate
  genvar i;
    for (i=0; i<16; i=i+1) begin
     And and0(.A(A[i]), .B(B[i]), .OUT(OUT[i]));
   end
  endgenerate
endmodule // and16
`endif
