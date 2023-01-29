module mux_8x1_32b(i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2, out);
input [31:0] i0, i1, i2, i3, i4, i5, i6, i7;
input s0, s1, s2;
output [31:0] out;
wire [31:0] w1, w2;

mux_4x1_32b mux1(i0, i2, i4, i6, s0, s1, w1);
mux_4x1_32b mux2(i1, i3, i5, i7, s0, s1, w2);
mux_2x1_32b mux3(w1, w2, s2, out);

endmodule
