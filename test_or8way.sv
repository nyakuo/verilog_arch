`include "or8way.sv"
module TestOr8way();
  reg [7:0] in;
  wire out;

  Or8way or8way(.IN(in), .OUT(out));

  localparam STEP = 50;

  initial begin
    $monitor($time, " IN=%8b OUT=%b", in, out);

    in = 8'h00;
    while (in != 8'hff) begin
      #STEP in = in + 1'b1;
    end
    $finish;
  end
endmodule
