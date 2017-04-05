`include "nand.sv"
`include "not.sv"

`ifndef __AND__
  `define __AND__
// a, b out
// 0  0 0
// 0  1 0
// 1  0 0
// 1  1 1
module MyAnd (input A, B,
                 output OUT);
   wire tmp;

   MyNand nand_1(A, B, tmp);
   MyNot not_1(tmp, OUT);
endmodule // MyAnd
`endif
