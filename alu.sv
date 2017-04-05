`ifndef __ALU__
`define __ALU__
module ALU(
  input [15:0] x, y,
  input zx, // 入力xをゼロに
  input zy, // 入力yをゼロに
  input nx, // 入力xを反転
  input ny, // 入力yを反転
  input f,  // 関数コード: if 1 then add elseif 0 and
  input no, // 出力outを反転
  output [15:0] out,
  output [15:0] ng,  // ~out
  output zr // out==0
);
  wire [15:0] tmp_x, tmp_y;

  assign tmp_x = (nx==1'b1) ? ~x
    : (zx==1'b1) ? 16'h0000 : x;
  assign tmp_y = (ny==1'b1) ? ~y
    : (zy==1'b1) ? 16'h0000 : y;
  assign out = (f==1'b1) ? tmp_x + tmp_y : tmp_x & tmp_y;
  assign ng = ~out;
  assign zr = (out == 16'h0000);
endmodule
`endif