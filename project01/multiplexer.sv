module Multiplexor(input a, b, sel,
                   output out);
   assign out = (sel == 1'b0) ? a : b;
endmodule
