`include "halfadder.sv"
module TestHalfAdder();
  HalfAdder ha(.A(a), .B(b), .S(s), .C(c));

  reg a, b;
  wire s, c;

  localparam STEP = 10;

  initial begin
    a = 0;
    b = 0;
    $monitor($time, " a=%b, b=%b S=%b, C=%b", a, b, s, c);
    #STEP a=0; b=1;
    #STEP a=1; b=0;
    #STEP a=1; b=1;
    $finish;
  end
endmodule
