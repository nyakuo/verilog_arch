`ifndef __MUX4WAY16__
`define __MUX4WAY16__
module Mux4way16 (
  input [15:0] A, B, C, D,
  input [1:0]   SEL,
  output [15:0] OUT
);
  assign OUT = (SEL == 2'B00) ? A
  : (SEL == 2'B01) ? B
  : (SEL == 2'B10) ? C
  : (SEL == 2'B11) ? D
  : 16'bx;
endmodule // mux4way16
`endif
