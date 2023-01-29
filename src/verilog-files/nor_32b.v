module nor_32b(i0, i1, out);
	input [31:0] i0, i1;
	output [31:0] out;
	
	nor nor1(out[0], i0[0], i1[0]);
	nor nor2(out[1], i0[1], i1[1]);
	nor nor3(out[2], i0[2], i1[2]);
	nor nor4(out[3], i0[3], i1[3]);
	nor nor5(out[4], i0[4], i1[4]);
	nor nor6(out[5], i0[5], i1[5]);
	nor nor7(out[6], i0[6], i1[6]);
	nor nor8(out[7], i0[7], i1[7]);
	nor nor9(out[8], i0[8], i1[8]);
	nor nor10(out[9], i0[9], i1[9]);
	nor nor11(out[10], i0[10], i1[10]);
	nor nor12(out[11], i0[11], i1[11]);
	nor nor13(out[12], i0[12], i1[12]);
	nor nor14(out[13], i0[13], i1[13]);
	nor nor15(out[14], i0[14], i1[14]);
	nor nor16(out[15], i0[15], i1[15]);
	nor nor17(out[16], i0[16], i1[16]);
	nor nor18(out[17], i0[17], i1[17]);
	nor nor19(out[18], i0[18], i1[18]);
	nor nor20(out[19], i0[19], i1[19]);
	nor nor21(out[20], i0[20], i1[20]);
	nor nor22(out[21], i0[21], i1[21]);
	nor nor23(out[22], i0[22], i1[22]);
	nor nor24(out[23], i0[23], i1[23]);
	nor nor25(out[24], i0[24], i1[24]);
	nor nor26(out[25], i0[25], i1[25]);
	nor nor27(out[26], i0[26], i1[26]);
	nor nor28(out[27], i0[27], i1[27]);
	nor nor29(out[28], i0[28], i1[28]);
	nor nor30(out[29], i0[29], i1[29]);
	nor nor31(out[30], i0[30], i1[30]);
	nor nor32(out[31], i0[31], i1[31]);	

endmodule
