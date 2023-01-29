`define DELAY 30
module alu32_tb1();

reg signed [31:0] a, b;
reg [2:0] aluop;
reg clk, rst;

wire signed [31:0] result;

alu32 alu(clk, rst, a, b, aluop, result);

initial begin

a = 12;
b = 8;

aluop[2] = 0;	aluop[1] = 0; aluop[0] = 0;	 
#`DELAY;

aluop[2] = 0;	aluop[1] = 0; aluop[0] = 1;	 
#`DELAY;

aluop[2] = 0;	aluop[1] = 1; aluop[0] = 0;
a = 12;
b = 8;
clk = 1'b0;
rst = 1;
#4
rst = 0;
#230	 
#`DELAY;

aluop[2] = 0;	aluop[1] = 1; aluop[0] = 1;	 
#`DELAY;

aluop[2] = 1;	aluop[1] = 0; aluop[0] = 0;	 
#`DELAY;

aluop[2] = 1;	aluop[1] = 0; aluop[0] = 1;	 
#`DELAY;

aluop[2] = 1;	aluop[1] = 1; aluop[0] = 0;	 
#`DELAY;

aluop[2] = 1;	aluop[1] = 1; aluop[0] = 1;	 
#`DELAY;

end

always
	begin
		#2 clk = ~clk;
	end
 
initial begin
$monitor("\ntime = %1d\nALUOP = %3b (decimal= %1d)\na = %32b (decimal= %1d)\nb = %32b (decimal= %1d) \nresult = %32b (decimal = %1d)",
 $time, aluop, aluop, a, a, b, b, result, result);
end
endmodule
