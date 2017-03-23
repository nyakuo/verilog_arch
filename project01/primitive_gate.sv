// a, b out
// 0  0 1
// 0  1 1
// 1  0 1
// 1  1 0
module nand_gate (input a, b,
                  output out);
   assign out = ~(a & b);
endmodule // nand_gate

// in out
// 0  1
// 1  0
module not_gate (input in,
                 output out);
   nand_gate nand_1(.a(in), .b(in), .out(out));
endmodule // not_gate

// a, b out
// 0  0 0
// 0  1 0
// 1  0 0
// 1  1 1
module and_gate (input a, b,
                 output out);
   wire                 tmp;
   nand_gate nand_1(a, b, tmp);
   not_gate not_1(tmp, out);
endmodule // and_gate

// a, b out
// 0  0 0
// 0  1 1
// 1  0 1
// 1  1 1
module or_gate (input a, b,
                output out);
   wire                not_a, not_b, tmp;
   not_gate not_1(a, not_a);
   not_gate not_2(b, not_b);
   and_gate and_1(not_a, not_b, tmp);
   not_gate not_3(tmp, out);
endmodule // or_gate

module xor_gate (input a, b,
                 output out);
   wire                 w_nand, w_or;

   nand_gate nand_1(.a(a), .b(b), .out(w_nand));
   or_gate or_1(.a(a), .b(b), .out(w_or));
   and_gate and_1(.a(w_nand), .b(w_or), .out(out));
endmodule // xor_gate

module multiplexor(input a, b, sel,
                   output out);
   assign out = (sel == 1'b0) ? a : b;
endmodule

module demultiplexor(input in, sel,
                     output a, b);
   function [1:0] dmux;
      input                 in, sel;
      if (sel == 1'b0) begin
         dmux = {in, 1'b0};
      end
      else begin
         dmux = {1'b0, in};
      end
   endfunction // if

   assign {a,b} = dmux(in, sel);

endmodule // demultiplexor

module not16 (input [15:0] in,
              output [15:0] out);
   not_gate n0(.in(in[0]), .out(out[0]));
   not_gate n1(.in(in[1]), .out(out[1]));
   not_gate n2(.in(in[2]), .out(out[2]));
   not_gate n3(.in(in[3]), .out(out[3]));
   not_gate n4(.in(in[4]), .out(out[4]));
   not_gate n5(.in(in[5]), .out(out[5]));
   not_gate n6(.in(in[6]), .out(out[6]));
   not_gate n7(.in(in[7]), .out(out[7]));
   not_gate n8(.in(in[8]), .out(out[8]));
   not_gate n9(.in(in[9]), .out(out[9]));
   not_gate n10(.in(in[10]), .out(out[10]));
   not_gate n11(.in(in[11]), .out(out[11]));
   not_gate n12(.in(in[12]), .out(out[12]));
   not_gate n13(.in(in[13]), .out(out[13]));
   not_gate n14(.in(in[14]), .out(out[14]));
   not_gate n15(.in(in[15]), .out(out[15]));
endmodule

module and16 (input [15:0] a, b,
              output [15:0] out);
   and_gate and0 (.a(a[0 ]), .b(b[0 ]), .out(out[0 ]));
   and_gate and1 (.a(a[1 ]), .b(b[1 ]), .out(out[1 ]));
   and_gate and2 (.a(a[2 ]), .b(b[2 ]), .out(out[2 ]));
   and_gate and3 (.a(a[3 ]), .b(b[3 ]), .out(out[3 ]));
   and_gate and4 (.a(a[4 ]), .b(b[4 ]), .out(out[4 ]));
   and_gate and5 (.a(a[5 ]), .b(b[5 ]), .out(out[5 ]));
   and_gate and6 (.a(a[6 ]), .b(b[6 ]), .out(out[6 ]));
   and_gate and7 (.a(a[7 ]), .b(b[7 ]), .out(out[7 ]));
   and_gate and8 (.a(a[8 ]), .b(b[8 ]), .out(out[8 ]));
   and_gate and9 (.a(a[9 ]), .b(b[9 ]), .out(out[9 ]));
   and_gate and10(.a(a[10]), .b(b[10]), .out(out[10]));
   and_gate and11(.a(a[11]), .b(b[11]), .out(out[11]));
   and_gate and12(.a(a[12]), .b(b[12]), .out(out[12]));
   and_gate and13(.a(a[13]), .b(b[13]), .out(out[13]));
   and_gate and14(.a(a[14]), .b(b[14]), .out(out[14]));
   and_gate and15(.a(a[15]), .b(b[15]), .out(out[15]));
endmodule // and16

module or16 (input [15:0] a, b,
             output [15:0] out);
   or_gate or0  (.a(a[0 ]), .b(b[0 ]), .out(out[0 ]));
   or_gate or1  (.a(a[1 ]), .b(b[1 ]), .out(out[1 ]));
   or_gate or2  (.a(a[2 ]), .b(b[2 ]), .out(out[2 ]));
   or_gate or3  (.a(a[3 ]), .b(b[3 ]), .out(out[3 ]));
   or_gate or4  (.a(a[4 ]), .b(b[4 ]), .out(out[4 ]));
   or_gate or5  (.a(a[5 ]), .b(b[5 ]), .out(out[5 ]));
   or_gate or6  (.a(a[6 ]), .b(b[6 ]), .out(out[6 ]));
   or_gate or7  (.a(a[7 ]), .b(b[7 ]), .out(out[7 ]));
   or_gate or8  (.a(a[8 ]), .b(b[8 ]), .out(out[8 ]));
   or_gate or9  (.a(a[9 ]), .b(b[9 ]), .out(out[9 ]));
   or_gate or10 (.a(a[10]), .b(b[10]), .out(out[10]));
   or_gate or11 (.a(a[11]), .b(b[11]), .out(out[11]));
   or_gate or12 (.a(a[12]), .b(b[12]), .out(out[12]));
   or_gate or13 (.a(a[13]), .b(b[13]), .out(out[13]));
   or_gate or14 (.a(a[14]), .b(b[14]), .out(out[14]));
   or_gate or15 (.a(a[15]), .b(b[15]), .out(out[15]));
endmodule // or16

module or8way (input [7:0] in,
               output out);
   wire [5:0]         tmp;

   or_gate or0 (.a(in[0]), .b(in[1]), .out(tmp[0]));
   or_gate or1 (.a(in[2]), .b(in[3]), .out(tmp[1]));
   or_gate or2 (.a(in[4]), .b(in[5]), .out(tmp[2]));
   or_gate or3 (.a(in[6]), .b(in[7]), .out(tmp[3]));
   or_gate or4 (.a(tmp[0]), .b(tmp[1]), .out(tmp[4]));
   or_gate or5 (.a(tmp[2]), .b(tmp[3]), .out(tmp[5]));
   or_gate or6 (.a(tmp[4]), .b(tmp[5]), .out(out));

endmodule // or8way

module mux4way16 (input [15:0] a, b, c, d,
                  input [1:0]   sel,
                  output [15:0] out);
   assign out = (sel == 2'b00) ? a
                : (sel == 2'b01) ? b
                : (sel == 2'b10) ? c
                : (sel == 2'b11) ? d
                : 16'bx;
endmodule // mux4way16

module mux8way16 (input [15:0] a, b, c, d, e, f, g, h,
                  input [2:0]   sel,
                  output [15:0] out);

   assign out = (sel == 3'b000) ? a
                : (sel == 3'b001) ? b
                : (sel == 3'b010) ? c
                : (sel == 3'b011) ? d
                : (sel == 3'b100) ? e
                : (sel == 3'b101) ? f
                : (sel == 3'b110) ? g
                : (sel == 3'b111) ? h
                : 16'bx;
endmodule // mux8way16

module dmux4way (input a, b, c, d,
                 input [1:0] sel,
                 output      out);
   assign out = (sel == 2'b00) ? a
                : (sel == 2'b01) ? b
                : (sel == 2'b10) ? c
                : (sel == 2'b11) ? d
                : 1'bx;
endmodule // dmux4way

module dmux8way (input a, b, c, d, e, f, g, h,
                 input [2:0] sel,
                 output      out);
   assign out = (sel == 3'b000) ? a
                : (sel == 3'b001) ? b
                : (sel == 3'b010) ? c
                : (sel == 3'b011) ? d
                : (sel == 3'b100) ? e
                : (sel == 3'b101) ? f
                : (sel == 3'b110) ? g
                : (sel == 3'b111) ? h
                : 1'bx;
endmodule

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
