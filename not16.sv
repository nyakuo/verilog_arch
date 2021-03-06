`ifndef __NOT16__
`define __NOT16__
`include "not.sv"
module MyNot16 (input [15:0] IN,
              output [15:0] OUT);
  generate
    genvar i;
    for (i=0; i<16; i=i+1) begin : not_loop
     MyNot n0(.IN(IN[i]), .OUT(OUT[i]));
    end
  endgenerate
endmodule
`endif
