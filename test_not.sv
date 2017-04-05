`include "not.sv"
// MyNotのテストベンチ
module TestMyNot();
  reg in;
  wire out;

  MyNot not1(.IN(in), .OUT(out));

  localparam STEP = 50;
  initial begin
    $monitor($time, " in=%b out=%b", in, out);
    in = 0;
    #STEP in = 1;
    $finish;
  end
endmodule
