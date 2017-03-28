module Dmux4way (input a, b, c, d,
                 input [1:0] sel,
                 output      out);
   assign out = (sel == 2'b00) ? a
                : (sel == 2'b01) ? b
                : (sel == 2'b10) ? c
                : (sel == 2'b11) ? d
                : 1'bx;
endmodule // dmux4way
