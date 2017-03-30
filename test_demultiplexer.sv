`include "demultiplexer.sv"
module TestDemultiplexer();
  reg in, sel;
  wire a, b;

  Demultiplexer dmux(.IN(in), .SEL(sel), .A(a), .B(b));

  localparam STEP = 50;
  initial begin
    $monitor($time, " in=%b sel=%b a=%b b=%b", in, sel, a, b);
    in = 0; sel = 0;
    #STEP in = 0; sel = 1;
    #STEP in = 1; sel = 0;
    #STEP in = 1; sel = 1;
    $finish;
  end
endmodule
