`include "nand.sv"
`include "or.sv"
`include "and.sv"

`ifndef __XOR__
`define __XOR__
module MyXor (
  input A, B,
  output OUT);
   wire                 w_nand, w_or;

   MyNand nand_1(.A(A), .B(B), .OUT(w_nand));
   MyOr or_1(.A(A), .B(B), .OUT(w_or));
   MyAnd and_1(.A(w_nand), .B(w_or), .OUT(OUT));
endmodule
`endif
