module alu_with_mult(clk, rst, a, b, aluop, result);
input clk, rst;
input [31:0] a, b;
input [2:0] aluop;
output [31:0] result;


wire cout, v, cin, sub_select, w1, w2, w3;
wire not_op2and1, not_op0, slt_res;

wire [31:0] sum_w, sub_w1, xor_w, and_w, or_w, slt_w, nor_w;
wire [63:0] mult_w;
wire [31:0] rval;

// decide sub or add

and and1(w1, aluop[2], aluop[1]);

// not aluop2 and aluop1
not not1(not_op2and1, w1);

// not aluop0
not not2(not_op0, aluop[0]);

and and2(w2, w1, not_op0);
and and3(w3, not_op2and1, aluop[0]);
or or1(sub_select, w2, w3);

// make substraction with one adder
not_32b onescomp(b, sub_w1);
mux_2x1_32b sub_add_mux(b, sub_w1, sub_select, rval);
mux_2x1 cin_val(1'b0, 1'b1, aluop[0], cin);

adder_32b adder(a, rval, cin, cout, sum_w, v);

/*check overflow bit*/
xor xor1(slt_res, sum_w[31], v);
// set slt result
or_32b slt_g({31'b0, slt_res}, 32'b0, slt_w);

mult32 mult_g(clk, rst, a, b, mult_w);
xor_32b xorg(a, b, xor_w);
and_32b andg(a, b, and_w);
or_32b org(a, b, or_w);
// slt_32b slt(a, b, slt_w);
nor_32b norg(a, b, nor_w);

mux_8x1_32b mux(sum_w, sum_w, mult_w[31:0], xor_w, and_w, or_w, slt_w, nor_w, aluop[2], aluop[1], aluop[0], result);

endmodule

