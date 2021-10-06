module Reg_32(q, d, clk, en, clr);
 input clk, en, clr;
 input wire[31:0] d;
 output wire[31:0] q;

 genvar i;
 generate
  for (i = 0; i < 32; i = i + 1) begin: reg_32
   dffe_ref regi(q[i], d[i], clk, en, clr);
  end
 endgenerate
 
endmodule

