`include "fulladder.sv"
module TestFullAdder();
  reg a, b, x;
  wire s, c;

  FullAdder fa(.A(a), .B(b), .X(x), .S(s), .C(c));

  localparam STEP = 10;
  integer i=0;
  initial begin
    $monitor($time, " a=%b, b=%b x=%b s=%b, c=%b", a, b, x, s, c);
    a = 0;
    b = 0;
    x = 0;
    for (i=0; i<4'b1000; i=i+1) begin
      #STEP {a, b, x} = i;
    end
    $finish;
  end
endmodule
