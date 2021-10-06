/*module tri_state_32(out, Q, E);
 input wire[31:0] Q;
 input E;
 output wire[31:0] out;

 genvar i;
 generate
  for (i = 0; i < 32; i = i + 1) begin: tri_state
   bufif1 tri_gate(out[i], Q[i], E);
  end
 endgenerate
endmodule*/

module tri_state_32(out,Q,E);
 input wire E;
 input wire [31:0] Q;
 output wire [31:0] out;

 assign out = E ? Q : 32'bZ;

endmodule