module decoder_32(sel, out);

  input wire[4:0] sel;
  output wire [31:0] out;
  
  wire s0_not,s1_not,s2_not,s3_not,s4_not;
  
  not not0(s0_not,sel[0]);
  not not1(s1_not,sel[1]);
  not not2(s2_not,sel[2]);
  not not3(s3_not,sel[3]);
  not not4(s4_not,sel[4]);
  
  and and0(out[0],s0_not,s1_not,s2_not,s3_not,s4_not); //00000
  and and1(out[1],sel[0],s1_not,s2_not,s3_not,s4_not); //00001
  and and2(out[2],s0_not,sel[1],s2_not,s3_not,s4_not); //00010
  and and3(out[3],sel[0],sel[1],s2_not,s3_not,s4_not); //00011
  and and4(out[4],s0_not,s1_not,sel[2],s3_not,s4_not); //00100
  and and5(out[5],sel[0],s1_not,sel[2],s3_not,s4_not); //00101
  and and6(out[6],s0_not,sel[1],sel[2],s3_not,s4_not); //00110
  and and7(out[7],sel[0],sel[1],sel[2],s3_not,s4_not); //00111
  and and8(out[8],s0_not,s1_not,s2_not,sel[3],s4_not); //01000
  and and9(out[9],sel[0],s1_not,s2_not,sel[3],s4_not); //01001
  and and10(out[10],s0_not,sel[1],s2_not,sel[3],s4_not); //01010
  and and11(out[11],sel[0],sel[1],s2_not,sel[3],s4_not); //01011
  and and12(out[12],s0_not,s1_not,sel[2],sel[3],s4_not); //01100
  and and13(out[13],sel[0],s1_not,sel[2],sel[3],s4_not); //01101
  and and14(out[14],s0_not,sel[1],sel[2],sel[3],s4_not); //01110
  and and15(out[15],sel[0],sel[1],sel[2],sel[3],s4_not); //01111 
  and and16(out[16],s0_not,s1_not,s2_not,s3_not,sel[4]); //10000
  and and17(out[17],sel[0],s1_not,s2_not,s3_not,sel[4]); //10001
  and and18(out[18],s0_not,sel[1],s2_not,s3_not,sel[4]); //10010
  and and19(out[19],sel[0],sel[1],s2_not,s3_not,sel[4]); //10011
  and and20(out[20],s0_not,s1_not,sel[2],s3_not,sel[4]); //10100
  and and21(out[21],sel[0],s1_not,sel[2],s3_not,sel[4]); //10101
  and and22(out[22],s0_not,sel[1],sel[2],s3_not,sel[4]); //10110
  and and23(out[23],sel[0],sel[1],sel[2],s3_not,sel[4]); //10111
  and and24(out[24],s0_not,s1_not,s2_not,sel[3],sel[4]); //11000
  and and25(out[25],sel[0],s1_not,s2_not,sel[3],sel[4]); //11001
  and and26(out[26],s0_not,sel[1],s2_not,sel[3],sel[4]); //11010
  and and27(out[27],sel[0],sel[1],s2_not,sel[3],sel[4]); //11011
  and and28(out[28],s0_not,s1_not,sel[2],sel[3],sel[4]); //11100
  and and29(out[29],sel[0],s1_not,sel[2],sel[3],sel[4]); //11101
  and and30(out[30],s0_not,sel[1],sel[2],sel[3],sel[4]); //11110
  and and31(out[31],sel[0],sel[1],sel[2],sel[3],sel[4]); //11111
  
endmodule
