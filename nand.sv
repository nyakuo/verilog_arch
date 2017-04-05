`ifndef __NAND__
  `define __NAND__
// a, b out
// 0  0 1
// 0  1 1
// 1  0 1
// 1  1 0
module MyNand (
  input A, B,
  output OUT);
   assign OUT = ~(A & B);
endmodule // MyNand
`endif
