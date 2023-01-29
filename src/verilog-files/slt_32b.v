module slt_32b(i0, i1, out);
input [31:0] i0, i1;
output [31:0] out;
wire [31:0] sum;
wire cout, v, res;


sub_32b sub(i0, i1, cout, sum, v);

/*check overflow bit*/
xor xor1(res, sum[31], v);

or_32b result({31'b0, res}, 32'b0, out);


endmodule
