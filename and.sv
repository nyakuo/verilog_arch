`include "nand.sv"
`include "not.sv"

`ifndef __AND__
  `define __AND__
// a, b out
// 0  0 0
// 0  1 0
// 1  0 0
// 1  1 1
module And (input A, B,
                 output OUT);
   wire tmp;

   Nand nand_1(A, B, tmp);
   Not not_1(tmp, OUT);
endmodule // And
`endif
