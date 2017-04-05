`include "not16.sv"
// MyNot16のテストベンチ
module TestMyNot16();
  reg [15:0] in;
  wire [15:0] out;

  MyNot16 not16(.IN(in), .OUT(out));

  localparam STEP = 50;

  initial begin
    $monitor($time, " in=%16b out=%16b", in, out);

    in = 16'h0000;
    while (in != 16'hffff) begin
      #STEP in = in + 1;
    end
    $finish;
  end
endmodule
