`include "xor.sv"
module TestMyXor();
  reg a, b;
  wire out;

  MyXor xor1(.A(a), .B(b), .OUT(out));

  localparam STEP = 50;

  initial begin
    $monitor($time, " a=%b b=%b out=%b", a, b, out);
    a = 0; b = 0;
    #STEP a = 0; b = 1;
    #STEP a = 1; b = 0;
    #STEP a = 1; b = 1;
    $finish;
  end
endmodule
