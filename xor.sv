module Xor (
  input a, b,
  output out);
   wire                 w_nand, w_or;

   Nand nand_1(.a(a), .b(b), .out(w_nand));
   Or or_1(.a(a), .b(b), .out(w_or));
   And and_1(.a(w_nand), .b(w_or), .out(out));
endmodule // xOr
