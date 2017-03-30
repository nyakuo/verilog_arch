`include "add16.sv"
// Add16のテストベンチ
module TestAdd16();
  reg [15:0] a, b;
  wire [15:0] s;
  wire c;

  Add16 add16(.A(a), .B(b), .S(s), .C(c));

  localparam STEP = 50;
  integer i;
  initial begin
    $monitor($time, " A=%4h B=%4h S=%4h C=%b", a, b, s, c);
    #STEP a = 16'hffff;
    b = 16'hffff;
    for (i=0; i<33'h100000000; i=i+1) begin
      #STEP {a, b} = i;
    end
    $finish;
  end
endmodule
