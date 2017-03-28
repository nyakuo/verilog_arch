module testbench ();
   reg a, b, c, d, e, f, g, h, sel;
   reg [15:0] a16, b16, c16, d16, e16, f16, g16, h16;
   reg [7:0]  in;
   reg [2:0]  sel3;
   reg [1:0]  sel2;

   integer i;

   wire [15:0] out16_not, out16_and, out16_or, out16_m4w16, out16_m8w16;
   wire out_nand, out_and, out_or, out_xor, out_not, out_mux, out_a, out_b,
        out_or8way, out_dm4w;

   nand_gate nand_1(.a(a), .b(b), .out(out_nand));
   and_gate and_1(.a(a), .b(b), .out(out_and));
   or_gate or_1(.a(a), .b(b), .out(out_or));
   xor_gate xor_1(.a(a), .b(b), .out(out_xor));
   not_gate not_1(.in(a), .out(out_not));

   multiplexor mux(.a(a), .b(b), .sel(sel), .out(out_mux));
   demultiplexor dmux(.in(out_nand), .sel(sel), .a(out_a), .b(out_b));

   not16 n16(.in(a16), .out(out16_not));
   and16 and16_0(.a(a16), .b(b16), .out(out16_and));
   or16 o16(.a(a16), .b(b16), .out(out16_or));

   or8way o8w(.in(in), .out(out_or8way));
   mux4way16 m4w16(.a(a16), .b(b16), .c(c16), .d(d16), .sel(sel2), .out(out16_m4w16));
   mux8way16 m8x16(.a(a16), .b(b16), .c(c16), .d(d16), .e(e16), .f(f16), .g(g16), .h(h16), .sel(sel3), .out(out16_m8w16));
   dmux4way dm4w(.a(a), .b(b), .c(c), .d(d), .sel(sel2), .out(out_dm4w));

   parameter CLK_PERIOD = 10;

   initial begin
      $dumpfile("wave.vcd");
      $dumpvars;
      {a, b, sel} = 0;
      a16 = 16'b0;
      b16 = 16'b0;

      for (i=0; i<=3; i = i+1) begin
         {a, b} = i;
         #CLK_PERIOD          sel = b;
      end
      #CLK_PERIOD a16 = 16'b0;
      // todo: 追加した回路のテストベンチを追記
      $finish;
   end
endmodule
