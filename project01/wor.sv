module Xor (
  input a, b,
  output out);
   wire                 w_nand, w_or;

   nand_gate nand_1(.a(a), .b(b), .out(w_nand));
   or_gate or_1(.a(a), .b(b), .out(w_or));
   and_gate and_1(.a(w_nand), .b(w_or), .out(out));
endmodule // xor_gate
