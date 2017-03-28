// in out
// 0  1
// 1  0
module Not (input in,
                 output out);
   nand_gate nand_1(.a(in), .b(in), .out(out));
endmodule // not_gate

