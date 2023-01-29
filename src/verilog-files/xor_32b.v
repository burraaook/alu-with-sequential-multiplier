module xor_32b(i0, i1, out);
	input [31:0] i0, i1;
	output [31:0] out;
	
	xor xor1(out[0], i0[0], i1[0]);
	xor xor2(out[1], i0[1], i1[1]);
	xor xor3(out[2], i0[2], i1[2]);
	xor xor4(out[3], i0[3], i1[3]);
	xor xor5(out[4], i0[4], i1[4]);
	xor xor6(out[5], i0[5], i1[5]);
	xor xor7(out[6], i0[6], i1[6]);
	xor xor8(out[7], i0[7], i1[7]);
	xor xor9(out[8], i0[8], i1[8]);
	xor xor10(out[9], i0[9], i1[9]);
	xor xor11(out[10], i0[10], i1[10]);
	xor xor12(out[11], i0[11], i1[11]);
	xor xor13(out[12], i0[12], i1[12]);
	xor xor14(out[13], i0[13], i1[13]);
	xor xor15(out[14], i0[14], i1[14]);
	xor xor16(out[15], i0[15], i1[15]);
	xor xor17(out[16], i0[16], i1[16]);
	xor xor18(out[17], i0[17], i1[17]);
	xor xor19(out[18], i0[18], i1[18]);
	xor xor20(out[19], i0[19], i1[19]);
	xor xor21(out[20], i0[20], i1[20]);
	xor xor22(out[21], i0[21], i1[21]);
	xor xor23(out[22], i0[22], i1[22]);
	xor xor24(out[23], i0[23], i1[23]);
	xor xor25(out[24], i0[24], i1[24]);
	xor xor26(out[25], i0[25], i1[25]);
	xor xor27(out[26], i0[26], i1[26]);
	xor xor28(out[27], i0[27], i1[27]);
	xor xor29(out[28], i0[28], i1[28]);
	xor xor30(out[29], i0[29], i1[29]);
	xor xor31(out[30], i0[30], i1[30]);
	xor xor32(out[31], i0[31], i1[31]);	

endmodule
