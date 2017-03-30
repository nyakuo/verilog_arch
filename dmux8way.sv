`ifndef __DMUX8WAY__
`define __DMUX8WAY__
module Dmux8way (
  input A, B, C, D, E, F, G, H,
  input [2:0] SEL,
  output OUT
);
   assign OUT = (SEL == 3'b000) ? A
   : (SEL == 3'b001) ? B
   : (SEL == 3'b010) ? C
   : (SEL == 3'b011) ? D
   : (SEL == 3'b100) ? E
   : (SEL == 3'b101) ? F
   : (SEL == 3'b110) ? G
   : (SEL == 3'b111) ? H
   : 1'bx;
 endmodule
 `endif
