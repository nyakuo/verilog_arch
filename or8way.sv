module Or8way (input [7:0] in,
               output out);
   wire [5:0]         tmp;

   Or or0 (.a(in[0]), .b(in[1]), .out(tmp[0]));
   Or or1 (.a(in[2]), .b(in[3]), .out(tmp[1]));
   Or or2 (.a(in[4]), .b(in[5]), .out(tmp[2]));
   Or or3 (.a(in[6]), .b(in[7]), .out(tmp[3]));
   Or or4 (.a(tmp[0]), .b(tmp[1]), .out(tmp[4]));
   Or or5 (.a(tmp[2]), .b(tmp[3]), .out(tmp[5]));
   Or or6 (.a(tmp[4]), .b(tmp[5]), .out(out));
endmodule // or8way
