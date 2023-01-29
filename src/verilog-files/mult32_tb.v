`define DELAY 20
module mult32_tb(); 
	reg [31:0] a, b;
	wire [63:0] res;
	reg clk, rst;
	mult32 gt(clk, rst, a, b, res);

	initial begin
	clk = 1'b0;
	a = 12;
	b = 6;
	rst = 1;
	#4
	rst = 0;
	#270 $stop;
	end
	
	always
		begin
			#2 clk = ~clk;
		end
 

	initial
		begin
			$monitor("\ntime = %2d, a =%1d, b =%1d, product = %64b\nresult = %2d\nless32 = %1b, shr = %1b, add = %1b, write = %1b",
				$time, gt.a, gt.b, gt.dp.result, res[31:0], gt.less32, gt.shr, gt.add, gt.write);
		end
 
endmodule