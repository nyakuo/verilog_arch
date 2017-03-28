module Demultiplexor(input in, sel,
                     output a, b);
   function [1:0] dmux;
      input                 in, sel;
      if (sel == 1'b0) begin
         dmux = {in, 1'b0};
      end
      else begin
         dmux = {1'b0, in};
      end
   endfunction // if

   assign {a,b} = dmux(in, sel);

endmodule // demultiplexor
