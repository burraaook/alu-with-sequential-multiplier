module datapath(clk, rst, multiplicand, multiplier, shr, add, incr, write, less32, result);

input [31:0] multiplicand, multiplier;
input clk, rst, shr, add, incr;

output write, less32;
output reg [63:0] result;

wire cout, ovflw, cout2;
wire [63:0] tempProduct, shiftedProduct, lastProduct;
wire [31:0] add_value, addResult;

reg [63:0] product;
reg [5:0] counter;

wire [5:0] incremented, resCount;

initial begin
	counter <= 0;
	product <= 64'b0;
end

// add according to the add signal
mux_2x1_32b mux1(32'b0, multiplicand, add, add_value);
adder_32b add1(add_value, product[63:32], 1'b0, cout, addResult, ovflw);

// get addition result to the temporary product
or_32b or1(addResult, 32'b0, tempProduct[63:32]);
or_32b or2(product[31:0], 32'b0, tempProduct[31:0]);

// shift product right by one bit
or_32b or5(tempProduct[32:1], 32'b0, shiftedProduct[31:0]);
or_32b or6({1'b0, tempProduct[63:33]}, 32'b0, shiftedProduct[63:32]);

// get the last version of the product according to the shr signal
mux_2x1_32b mux2(tempProduct[63:32], shiftedProduct[63:32], shr, lastProduct[63:32]);
mux_2x1_32b mux3(tempProduct[31:0], shiftedProduct[31:0], shr, lastProduct[31:0]);

// return less32, and write
or or8(write, product[0], 1'b0);
nor nor1(less32, counter[5], 1'b0);

// increment counter
adder_6b incrG(counter, 6'b000001, 1'b0, cout2, incremented);
mux_2x1 muxc1(counter[5], incremented[5], incr, resCount[5]);
mux_2x1 muxc2(counter[4], incremented[4], incr, resCount[4]);
mux_2x1 muxc3(counter[3], incremented[3], incr, resCount[3]);
mux_2x1 muxc4(counter[2], incremented[2], incr, resCount[2]);
mux_2x1 muxc5(counter[1], incremented[1], incr, resCount[1]);
mux_2x1 muxc6(counter[0], incremented[0], incr, resCount[0]);
always@(posedge clk or posedge rst)
begin
	if (rst)
	begin
		product <= {32'b0, multiplier};
		counter <= 6'b0;
	end
	else begin
		product <= lastProduct;
		counter <= resCount;
		result <= lastProduct;
	end
end
endmodule
