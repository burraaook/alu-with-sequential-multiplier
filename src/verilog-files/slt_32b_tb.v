`define DELAY 30
module slt_32b_tb();

reg signed [31:0] i0, i1;

wire signed [31:0] result;

slt_32b slt(i0, i1, result);

initial begin

i0 = 10;
i1 = 15; 
#`DELAY;

i0 = -30;
i1 = -50; 
#`DELAY;

i0 = 32'b10000000000000000000000000000000;    
i1 = 32'b00000000000000000000000000010000; 
#`DELAY; 

i0 = 32'b00000000000000010001010001000001; 	     
i1 = 32'b00010000000010111110111111101111;
#`DELAY; 

i0 = 32'b01111111111111111111111111111111; 
i1 = 32'b01111111111111111111111111111111; 
#`DELAY; 

i0 = -100; 
i1 = -50; 
#`DELAY;
end

initial begin
$monitor("time = %1d\ni0 = %32b (decimal= %1d)\ni1 = %32b (decimal= %1d)\nresult = %32b (decimal= %1d)",
 $time, i0, i0, i1, i1, result, result);
end
endmodule
