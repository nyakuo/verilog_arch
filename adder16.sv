module Add16(
  input wire [15:0] A, B,
  output wire [15:0] S,
  output wire C
);

  wire [15:0] tmp;

  HalfAdder ha1(.A(A[0]), .B(B[0]), .S(out[0]), .C(tmp[0]));
  generate
    for (genvar i=0; i<14; i=i+1) begin
      FullAdder fa(.A(A[i]), .B(B[i]), .X(tmp[i]), .S(out[i]), .C(tmp[i]));
    end
  endgenerate

  assign C = tmp[15];

endmodule
