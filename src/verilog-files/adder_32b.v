module adder_32b(i0, i1, cin, cout, sum, ovflw);

input [31:0] i0, i1;
input cin;

output [31:0] sum;
output cout, ovflw;

wire [3:0] w;

	adder_8b adder1(i0[7:0], i1[7:0], cin, w[0], sum[7:0]);
	adder_8b adder2(i0[15:8], i1[15:8], w[0], w[1], sum[15:8]);
	adder_8b adder3(i0[23:16], i1[23:16], w[1], w[2], sum[23:16]);
	adder_8b adder4(i0[31:24], i1[31:24], w[2], cout, sum[31:24]);
	xor V(ovflw, w[2], cout);

endmodule

