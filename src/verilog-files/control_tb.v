module control_tb();

reg clk, rst, wrt, less32;
wire add, shr, incr;
	
control c_gt(clk, rst, wrt, less32, add, shr, incr);

initial begin
	clk = 1'b0;
	rst = 1'b1;
	wrt = 1'b0; less32 = 1'b0;
	
	#4 rst = 1'b1; 
	#4 rst = 1'b0; wrt = 1'b0; less32 = 1'b0; // 00 -> 10
	#4 wrt = 1'b0; less32 = 1'b0; // 10 -> 11
	#4 wrt = 1'b0; less32 = 1'b0;	// 11 -> 00
	#4 wrt = 1'b1; less32 = 1'b0; // 00 -> 01
	#4 wrt = 1'b1; less32 = 1'b0; // 01 -> 10
	#4 wrt = 1'b0; less32 = 1'b1; // 10 -> 00
	#4 wrt = 1'b0; less32 = 1'b0; // 00 -> 10
	#4 wrt = 1'b0; less32 = 1'b1; // 10 -> 00
	#4 wrt = 1'b1; less32 = 1'b0;	// 00 -> 01
	#4 wrt = 1'b0; less32 = 1'b0;	// 01 -> 10
	#4 wrt = 1'b0; less32 = 1'b0; // 10 -> 11
//	#2 wrt = 1'b1; less32 = 1'b1;
//	#2 wrt = 1'b1; less32 = 1'b0;	
	$stop;
end

always
begin
	#2 clk = ~clk;
end

initial begin
	$monitor("\ntime = %2d, clk = %1b p_state = %2b, n_state = %2b\nrst = %1b, wrt = %1b, less32 = %1b --> add = %1b, shr = %1b, incr = %1b",
						$time, clk, c_gt.p_state, c_gt.n_state, rst, wrt, less32, add, shr, incr);
end

endmodule
