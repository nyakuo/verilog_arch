`include "mux8way16.sv"
module TestMux8way();
  reg [15:0] a, b, c, d, e, f, g, h;
  reg [2:0] sel;
  wire [15:0] out;
  Mux8way16 mux8way16(.A(a), .B(b), .C(c), .D(d), .E(e), .F(f), .G(g), .H(h), .SEL(sel), .OUT(out));

  localparam STEP = 50;
  integer i;
  initial begin
    $monitor($time, " a=%b b=%b c=%b d=%b e=%b f=%b g=%b h=%b sel=%3b out=%b", a, b, c, d, e, f, g, h, sel, out);
    sel = 0;
    a = 16'b00000000_00000001;
    b = 16'b00000000_00000010;
    c = 16'b00000000_00000100;
    d = 16'b00000000_00001000;
    e = 16'b00000000_00010000;
    f = 16'b00000000_00100000;
    g = 16'b00000000_01000000;
    h = 16'b00000000_10000000;
    for (i=0; i<4'h8; i=i+1) begin
      #STEP sel = i;
    end
    $finish;
  end

endmodule
