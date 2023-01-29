module adder_8b(i0, i1, cin, cout, sum);

input [7:0] i0, i1;
input cin;

output [7:0] sum;
output cout;

wire [7:0] w;

	full_adder adder1(.i0(i0[0]), .i1(i1[0]), .cin(cin), .cout(w[0]), .sum(sum[0]));
	full_adder adder2(.i0(i0[1]), .i1(i1[1]), .cin(w[0]), .cout(w[1]), .sum(sum[1]));
	full_adder adder3(.i0(i0[2]), .i1(i1[2]), .cin(w[1]), .cout(w[2]), .sum(sum[2]));
	full_adder adder4(.i0(i0[3]), .i1(i1[3]), .cin(w[2]), .cout(w[3]), .sum(sum[3]));
	full_adder adder5(.i0(i0[4]), .i1(i1[4]), .cin(w[3]), .cout(w[4]), .sum(sum[4]));
	full_adder adder6(.i0(i0[5]), .i1(i1[5]), .cin(w[4]), .cout(w[5]), .sum(sum[5]));
	full_adder adder7(.i0(i0[6]), .i1(i1[6]), .cin(w[5]), .cout(w[6]), .sum(sum[6]));
	full_adder adder8(.i0(i0[7]), .i1(i1[7]), .cin(w[6]), .cout(cout), .sum(sum[7]));

endmodule
