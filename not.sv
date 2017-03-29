`include "nand.sv"
// in out
// 0  1
// 1  0
module Not (
  input IN,
  output OUT);
   Nand nand1(.A(IN), .B(IN), .OUT(OUT));
endmodule // Not

