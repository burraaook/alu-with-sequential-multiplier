module sub_32b(i0, i1, cout, sum, ovflw);
	input [31:0] i0, i1;
	output [31:0] sum;
	output cout, ovflw;
	wire [31:0] w1;
	
	not_32b ones_comp(i1, w1);
	
	adder_32b twos_com(i0, w1, 1'b1, cout, sum, ovflw);
endmodule
