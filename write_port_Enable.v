module write_port_Enable(ctrl_writeEnable, ctrl_writeReg, E);
 input ctrl_writeEnable;
 input wire[4:0] ctrl_writeReg;
 output wire[31:0] E;

 wire[31:0] temp_E;
 decoder_32 decode (ctrl_writeReg, temp_E);

 genvar i;
 generate
  for (i = 0; i < 32; i = i + 1) begin: find_address
   and and_gate(E[i], temp_E[i], ctrl_writeEnable);
  end
 endgenerate

endmodule