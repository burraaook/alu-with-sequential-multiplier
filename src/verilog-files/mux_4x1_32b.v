module mux_4x1_32b(i0, i1, i2, i3, s0, s1, out);
input [31:0] i0, i1, i2, i3;
input s0, s1;
output [31:0] out;
wire [31:0] w1, w2;

mux_2x1_32b mux1(i0, i2, s0, w1);
mux_2x1_32b mux2(i1, i3, s0, w2);
mux_2x1_32b mux3(w1, w2, s1, out);

endmodule
