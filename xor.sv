`include "nand.sv"
`include "or.sv"
`include "and.sv"

`ifndef __XOR__
  `define __XOR__
module Xor (
  input A, B,
  output OUT);
   wire                 w_nand, w_or;

   Nand nand_1(.A(A), .B(B), .OUT(W_nand));
   Or or_1(.A(A), .B(B), .OUT(w_or));
   And and_1(.A(W_nand), .B(w_or), .OUT(OUT));
endmodule // xOr
`endif
