`include "and16.sv"
// And16のテストベンチ
module TestAnd16();
  reg [15:0] a, b;
  wire [15:0] out;


  And16 a16(.A(a), .B(b), .OUT(out));

  localparam STEP = 50;
  reg [16:0] i, k;

  initial begin
    $monitor($time, " a=%16b b=%16b out=%16b", a, b, out);

    for (i=0; i<=16'hffff; i=i+1) begin
      a=i;
      b=16'h0000;
      for (k=0; k<=16'hffff; k=k+1) begin
        #STEP b=k;
      end
    end
    $finish;
  end
endmodule
