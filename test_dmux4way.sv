`include "dmux4way.sv"
module TestDmux4way();
  reg a, b, c, d;
  reg [1:0] sel;
  wire out;

  Dmux4way dmux4way(.A(a), .B(b), .C(c), .D(d), .SEL(sel), .OUT(out));

  localparam STEP = 50;
  integer i;
  initial begin
    $monitor($time, " a=%b b=%b c=%b d=%b sel=%2b out=%b", a, b, c, d, sel, out);
    for (i=0; i<7'h40; i=i+1) begin
      #STEP {a, b, c, d, sel} = i;
    end
    $finish;
  end
endmodule
