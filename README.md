# Project Checkpoint3 Regfile
## Contributors
Xueqian Hu NetID: xh110

Minzhi Guo NetID: mg516
## Design Description
### D-Latch and DFF
We used the provided dffe_ref.v.
### Decoder
We used 32 and gates to calculate the 32-bit output. Each and gate had 5 inputs which were 5 bits of select signal. For example, if the select signal is 10101, then the and gate's inputs are sel[4], sel[3]', sel[2], sel[1]', sel[0]. 
### Tri-State Gate
For the Tri-State Gate, if enable == 1, then the output is the input, otherwise, the output is high-resistance state Z. By using assign output = E ? Q : 32'bZ, we achieved it.
### Read Port

### Write Port Enable
### Regfile
