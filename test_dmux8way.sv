`include "dmux8way.sv"
module TestDmux8way();
  reg a, b, c, d, e, f, g, h;
  reg [2:0] sel;
  wire out;
  Dmux8way dmux8way(.A(a), .B(b), .C(c), .D(d), .E(e), .F(f), .G(g), .H(h), .SEL(sel), .OUT(out));

  localparam STEP = 50;
  integer i;
  initial begin
    $monitor($time, " a=%b b=%b c=%b d=%b e=%b f=%b g=%b h=%b sel=%3b out=%b", a, b, c, d, e, f, g, h, sel, out);
    for (i=0; i<12'h800; i=i+1) begin
      #STEP {a, b, c, d, e, f, g, h, sel} = i;
    end
    $finish;
  end
endmodule
