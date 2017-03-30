`include "mux4way16.sv"
module TestMux4way16();
  reg [15:0] a, b, c, d;
  reg [1:0] sel;
  wire [15:0] out;

  Mux4way16 mux4way16(.A(a), .B(b), .C(c), .D(d), .SEL(sel), .OUT(out));

  localparam STEP = 50;
  integer i;
  initial begin
    $monitor($time, " a=%4h b=%4h c=%4h d=%4h sel=%2b out=%4h", a, b, c, d, sel, out);
    sel=0;
    a = 1;
    b = 2;
    c = 4;
    d = 8;
    for (i=0; i<4; i=i+1) begin
      #STEP sel = i;
    end
    $finish;
  end
endmodule
