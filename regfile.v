module regfile (
    clock,
    ctrl_writeEnable,
    ctrl_reset, ctrl_writeReg,
    ctrl_readRegA, ctrl_readRegB, data_writeReg,
    data_readRegA, data_readRegB
);

   input clock, ctrl_writeEnable, ctrl_reset;
   input [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
   input [31:0] data_writeReg;

   output [31:0] data_readRegA, data_readRegB;

   /* YOUR CODE HERE */
   wire[31:0] E;
   write_port_Enable wpe(ctrl_writeEnable, ctrl_writeReg, E);

   wire[1023:0] Q;
   genvar i;
   generate
     for (i = 0; i < 32; i = i + 1) begin: build_reg
       if (i != 0)
          Reg_32 regi(Q[(i + 1) * 32 - 1 : i * 32], data_writeReg, clock, E[i], ctrl_reset);
       else
          Reg_32 regi(Q[(i + 1) * 32 - 1 : i * 32], 32'b0, clock, E[i], ctrl_reset);
     end
   endgenerate
	
	read_port read_A(Q, ctrl_readRegA, data_readRegA);
   read_port read_B(Q, ctrl_readRegB, data_readRegB);

endmodule