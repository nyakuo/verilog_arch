`include "multiplexer.sv"
module TestMultiplexer();
  reg a, b, sel;
  wire out;

  Multiplexer mux(.A(a), .B(b), .SEL(sel), .OUT(out));

  localparam STEP = 50;
  integer i;
  initial begin
    $monitor($time, "  a=%b b=%b sel=%b out=%b", a, b, sel, out);
    a = 0; b = 0; sel = 0;
    for (i=0; i<8; i=i+1) begin
      #STEP {a, b, sel} = i;
    end
    $finish;
  end
endmodule
