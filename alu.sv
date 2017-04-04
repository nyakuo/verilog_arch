module ALU(
  input [15:0] X, Y,
  input ZX, // 入力Xをゼロに
  input ZY, // 入力Yをゼロに
  input NX, // 入力Xを反転
  input NY, // 入力Yを反転
  input F,  // 関数コード: if 1 then ADD elseif 0 AND
  input NO, // 出力OUtを反転
  output [15:0] OUT,
  output [15:0] NG,  // ~OUT
  output ZR // OUT==0
);
  wire [15:0] tmp_x, tmp_y;

  assign tmp_x = (NX==1'b1) ? ~X
    : (ZX==1'b1) ? 16'h0000 : X;
  assign tmp_y = (NY==1'b1) ? ~Y
    : (ZY==1'b1) ? 16'h0000 : Y;
  assign OUT = (F==1'b1) ? tmp_x + tmp_y : tmp_x & tmp_y;
  assign NG = ~OUT;
  assign ZR = (OUT == 16'h0000);
endmodule
