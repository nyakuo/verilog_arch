// a, b out
// 0  0 0
// 0  1 0
// 1  0 0
// 1  1 1
module And (input a, b,
                 output out);
   wire                 tmp;
   nand_gate nand_1(a, b, tmp);
   not_gate not_1(tmp, out);
endmodule // and_gate

