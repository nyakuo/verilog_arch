`ifndef __DMUX4WAY__
`define __DMUX4WAY__
module Dmux4way (
  input A, B, C, D,
  input [1:0] SEL,
  output      OUT);
   assign OUT = (SEL == 2'b00) ? A
   : (SEL == 2'B01) ? B
   : (SEL == 2'B10) ? C
   : (SEL == 2'B11) ? D
   : 1'bx;
endmodule // dmux4way
`endif
