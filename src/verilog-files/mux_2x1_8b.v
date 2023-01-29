module mux_2x1_8b(i0, i1, s, out);
input [7:0] i0, i1;
input s;
output [7:0] out;


mux_2x1 mux_1(i0[0], i1[0], s, out[0]);
mux_2x1 mux_2(i0[1], i1[1], s, out[1]);
mux_2x1 mux_3(i0[2], i1[2], s, out[2]);
mux_2x1 mux_4(i0[3], i1[3], s, out[3]);
mux_2x1 mux_5(i0[4], i1[4], s, out[4]);
mux_2x1 mux_6(i0[5], i1[5], s, out[5]);
mux_2x1 mux_7(i0[6], i1[6], s, out[6]);
mux_2x1 mux_8(i0[7], i1[7], s, out[7]);

endmodule
