`ifndef __MUX8WAY16__
`define __MUX8WAY16__
module Mux8way16 (
  input [15:0] A, B, C, D, E, F, G, H,
  input [2:0]   SEL,
  output [15:0] OUT);

   assign OUT = (SEL == 3'b000) ? A
   : (SEL == 3'b001) ? B
   : (SEL == 3'b010) ? C
   : (SEL == 3'b011) ? D
   : (SEL == 3'b100) ? E
   : (SEL == 3'b101) ? F
   : (SEL == 3'b110) ? G
   : (SEL == 3'b111) ? H
   : 16'bx;
endmodule // mux8way16
`endif
