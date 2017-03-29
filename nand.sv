// a, b out
// 0  0 1
// 0  1 1
// 1  0 1
// 1  1 0
module Nand (input a, b,
                  output out);
   assign out = ~(a & b);
endmodule // Nand

