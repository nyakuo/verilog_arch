`include "or.sv"

`ifndef __OR8WAY__
  `define __OR8WAY__
module Or8way (
  input [7:0] IN,
  output OUT
);
  wire [5:0] tmp;

  generate
    genvar i;
    for (i=0; i<4; i=i+1) begin
      Or or0(.A(IN[i<<1]), .B(IN[(i<<1)+1]), .OUT(tmp[i]));
    end

    for (i=0; i<2; i=i+1) begin
      Or or1(.A(tmp[i<<1]), .B(tmp[(i<<1)+1]), .OUT(tmp[4+i]));
    end

    Or or_last(.A(tmp[4]), .B(tmp[5]), .OUT(OUT));
  endgenerate

endmodule // or8way
`endif
