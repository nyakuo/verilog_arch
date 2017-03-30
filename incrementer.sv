`ifndef __INC16__
`define __INC16__
module Inc16(
  input wire [15:0] IN,
  output wire [15:0] OUT
);
  wire c;
  Add16 add16(.A(IN), .B(16'h0001), .S(OUT), .C(c));
  assign OUT = (c == 1'b1) ? 16'h0000 : OUT;

endmodule
`endif
