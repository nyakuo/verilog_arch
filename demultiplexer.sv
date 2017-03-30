`ifndef __DEMULTIPLEXER__
  `define __DEMULTIPLEXER__
`include "not.sv"
`include "and.sv"
//module Demultiplexer(
//  input IN, SEL,
//  output A, B
//);
//   function [1:0] dmux;
//      input                 in, sel;
//      if (sel == 1'b0) begin
//         dmux = {in, 1'b0};
//      end
//      else begin
//         dmux = {1'b0, in};
//      end
//   endfunction // if
//
//   assign {a,b} = dmux(in, sel);
//
//endmodule // demultiplexor

// IN SEL A B
// 1   0  1 0
// 0   0  0 0
// 1   1  0 1
// 0   1  0 0
module Demultiplexer(
  input IN, SEL,
  output A, B
);
  wire tmp;

  Not not1(.IN(SEL), .OUT(tmp));
  And and1(.A(IN), .B(tmp), .OUT(A));
  And and2(.A(IN), .B(SEL), .OUT(B));
endmodule // demultiplexer
`endif
