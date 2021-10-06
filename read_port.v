/*module read_port(Q, sel, out);
 input wire[1023:0] Q;
 input wire[4:0] sel;
 output wire[31:0] out;

 wire[31:0] E;
 decoder_32 decode(sel, E);

 genvar i;
 genvar j;
 generate
  for (i = 0; i < 32; i = i + 1) begin: for_i
   for (j = 0; j < 32; j = j + 1) begin: for_j
    bufif1 tri_state(out[j], Q[i * 32 + j], E[i]);
   end
  end
 endgenerate

endmodule*/

module read_port(Q, sel, out);
 input wire[1023:0] Q;
 input wire[4:0] sel;
 output wire[31:0] out;

 wire[31:0] E;
 decoder_32 decode(sel, E);

 genvar i;
 generate
  for (i = 0; i < 32; i = i + 1) begin: tri_32
   tri_state_32 tri_32_gate (out, Q[(i + 1) * 32 - 1 : i * 32], E[i]);
  end
 endgenerate

endmodule