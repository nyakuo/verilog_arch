`include "alu.sv"
module TestALU();
  reg [15:0] x, y;
  reg zx, zy, nx, ny, f, no;
  wire [15:0] out, ng;
  wire zr;

  ALU alu(.X(x), .Y(y), .ZX(zx), .ZY(zy), .NX(nx), .NY(ny), .F(f), .NO(no), .OUT(out), .NG(ng), .ZR(zr));

  parameter STEP = 10;
  initial begin
    $monitor($time, " x=%4h y=%4h zx=%b zy=%b nx=%b ny=%b f=%b no=%b out=%4h ng=%4h zr=%b",
    x, y, zx, zy, nx, ny, f, no, out, ng, zr);
    x = 16'h0000;
    y = 16'h0000;
    zx = 1'b0;
    zy = 1'b0;
    nx = 1'b0;
    ny = 1'b0;
    f = 1'b0;
    no = 1'b0;
    #STEP x = 16'h1234;
    y = 16'h4321;

    #STEP zx = 1'b1;
    #STEP zy = 1'b1;
    #STEP zx = 1'b0; nx=1'b1;
    #STEP zy = 1'b0; ny=1'b1;
    #STEP f = 1'b1;

    #STEP zx = 1'b1;
    #STEP zy = 1'b1;
    #STEP zx = 1'b0; nx=1'b1;
    #STEP zy = 1'b0; ny=1'b1;
    #STEP no = 1'b1;

    $finish;
  end
endmodule
