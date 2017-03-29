`include "or16.sv"

module TestOr16();
  reg [15:0] a, b;
  wire [15:0] out;

  Or16 or16(.A(a), .B(b), .OUT(out));

  localparam STEP = 50;
  reg [16:0] i, k;

  initial begin
    $monitor($time, " A=%16b B=%16b OUT=%16b", a, b, out);

    for (i=0; i<=16'hffff; i=i+1) begin
      a = i;
      b = 16'h0000;
      for (k=0; k<=16'hffff; k=k+1) begin
        #STEP b = k;
      end
    end
    $finish;
  end
endmodule
