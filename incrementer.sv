module Inc16(
  input wire [15:0] in,
  output wire [15:0] out
);

  wire c;
  Add16 add16(.A(in), .B(16'b1), .S(out), .C(c));
  assign out = (c == 1'b1) ? 16'b0 :;

endmodule


module TestIncrementer();
  reg [15:0j
  Incrementer inc(.in(), .out());
