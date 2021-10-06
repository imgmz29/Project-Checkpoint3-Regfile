# Project Checkpoint3 Regfile
## Contributors
Xueqian Hu NetID: xh110

Minzhi Guo NetID: mg516
## Design Description
### D-Latch and DFF
We used the provided dffe_ref.v.
### Reg_32
We used 32 DFFs to build a 32-bit register. Each DFF stores ont bit of data. If the enable is 1, data is stored or renewed. If reset is 1, data becomes 32-bit zeroes.
### Decoder
We used 32 and gates to calculate the 32-bit output. Each and gate has 5 inputs which are 5 bits of select signal. For example, if the select signal is 10101, then the and gate's inputs are sel[4], sel[3]', sel[2], sel[1]', sel[0]. 
### Tri-State Gate
For the Tri-State Gate, if enable == 1, then the output is the input, otherwise, the output is high-resistance state Z. By using assign output = E ? Q : 32'bZ, we achieved it.
### Read Port
Because there are 32 32-bit registers, the total number of data (Q) wires is 32x32 = 1024. There is also a decoder, selecting the register which we are going to read from. Then, we have 32 Tri-State Gates, if the enable signal (which is th output of decoder) is 1, then we begin to read data from the register we have chosen, otherwise, we don't read data.
### Write Port Enable
For the write port, the outputs are 32 enable signals which select the register we want to write data into. We first used a decoder to generate 32 temporary enable signals (we named them temp_E).  And then, we used 32 and gates which inputs are each bit of temp_E and ctrl_writeEnable (write data when it is 1) to generate 32 real enable signals for the 32 register. Only one register will be enabled and it is exactly the one we want to write data into.
