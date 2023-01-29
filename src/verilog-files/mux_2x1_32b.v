module mux_2x1_32b(i0, i1, s, out);
input [31:0] i0, i1;
input s;
output [31:0] out;


mux_2x1_8b mux_1(i0[7:0], i1[7:0], s, out[7:0]);
mux_2x1_8b mux_2(i0[15:8], i1[15:8], s, out[15:8]);
mux_2x1_8b mux_3(i0[23:16], i1[23:16], s, out[23:16]);
mux_2x1_8b mux_4(i0[31:24], i1[31:24], s, out[31:24]);

endmodule
