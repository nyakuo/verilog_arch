`include "or.sv"
// Orのテストベンチ
module TestOr();
  reg a, b;
  wire out;

  localparam STEP = 50;
  initial begin
    $monitor($time, " a=%b b=%b out=%b", a, b, out);
    a = 0; b = 0;
    #STEP a = 0; b = 1;
    #STEP a = 1; b = 0;
    #STEP a = 1; b = 1;
  end

endmodule
