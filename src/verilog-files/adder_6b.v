module adder_6b(i0, i1, cin, cout, sum);

input [5:0] i0, i1;
input cin;

output [5:0] sum;
output cout;

wire [5:0] w;

	full_adder adder1(.i0(i0[0]), .i1(i1[0]), .cin(cin), .cout(w[0]), .sum(sum[0]));
	full_adder adder2(.i0(i0[1]), .i1(i1[1]), .cin(w[0]), .cout(w[1]), .sum(sum[1]));
	full_adder adder3(.i0(i0[2]), .i1(i1[2]), .cin(w[1]), .cout(w[2]), .sum(sum[2]));
	full_adder adder4(.i0(i0[3]), .i1(i1[3]), .cin(w[2]), .cout(w[3]), .sum(sum[3]));
	full_adder adder5(.i0(i0[4]), .i1(i1[4]), .cin(w[3]), .cout(w[4]), .sum(sum[4]));
	full_adder adder6(.i0(i0[5]), .i1(i1[5]), .cin(w[4]), .cout(cout), .sum(sum[5]));

endmodule
