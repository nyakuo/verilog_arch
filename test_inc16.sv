`include "inc16.sv"
module TestInc16;
  reg [15:0] in;
  wire [15:0] out;
  Inc16 inc16(.IN(in), .OUT(out));

  localparam STEP = 10;
  initial begin
    $monitor($time, " in=%4h out=%4h", in, out);
    in = 0;
    for (int i=0; in<16'hffff; i=i+1) begin
      #STEP in = i;
    end
    $finish;
  end

endmodule
