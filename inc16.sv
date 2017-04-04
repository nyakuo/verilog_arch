`ifndef __INC16__
`define __INC16__
`include "add16.sv"
module Inc16(
  input wire [15:0] IN,
  output wire [15:0] OUT
);
  Add16 add16(.A(IN), .B(16'h0001), .S(OUT));//, .C(1'bz));

endmodule
`endif
