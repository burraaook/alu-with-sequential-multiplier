module datapath2_tb();

reg clk, shr, add, incr, rst;
reg [31:0] multiplicand, multiplier;

wire write, less32;
wire [63:0] result;

datapath2 dp(clk, rst, multiplicand, multiplier, shr, add, incr, write, less32, result);

initial begin
	clk = 0;
	rst = 0;
	#4;
	multiplicand = 11;
	multiplier = 14;
	rst = 1;
	#4;
	rst = 0;
	shr = 0;
	add = 0;
	incr = 0;
	#4 shr = 1; add = 0; incr = 1;
	
	#4 shr = 0; add = 1; incr = 1;

	#4 shr = 1; add = 0; incr = 0;
	
	#4 rst = 1; rst = 0;

	
	#10
	$stop;
end


always
begin
	#2 clk = ~clk;
end

initial begin
$monitor("\ntime = %1d, clk = %1b, rst = %1b\nmultiplicand = %32b\nmultiplier = %32b\ncount = %6b\nshr = %1b, add = %1b, incr = %1b\nresults:\nproduct = %64b\nresult = %64b\nwrite = %1b, less32 = %1b",
 $time, clk, rst, multiplicand, multiplier, dp.counter, shr, add, incr, dp.product, result, write, less32);
end
endmodule

