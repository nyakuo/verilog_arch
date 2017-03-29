`ifndef __NAND__
  `define __NAND__
`endif
// a, b out
// 0  0 1
// 0  1 1
// 1  0 1
// 1  1 0
module Nand (
  input A, B,
  output OUT);
   assign OUT = ~(A & B);
endmodule // Nand

