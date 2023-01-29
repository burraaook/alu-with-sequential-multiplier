module mult32(clk, rst, a, b, result);

input [31:0] a, b;
input clk, rst;
output [63:0] result;
wire write, less32, add, shr, incr;

initial begin
	
end

// call controller and datapath
control ctrl(clk, rst, write, less32, add, shr, incr);
datapath dp(clk, rst, a, b, shr, add, incr, write, less32, result);

always@(posedge clk)
begin
//	if(!less32)
//	begin
//		finish <= 1;
//	end
//	else
//	begin
//		finish <= 0;
//	end
end
endmodule
