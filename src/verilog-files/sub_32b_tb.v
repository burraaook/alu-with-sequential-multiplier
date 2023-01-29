`define DELAY 30
module sub_32b_tb();

reg signed [31:0] i0, i1;

wire signed [31:0] sum;
wire cout;
wire ovflw;

sub_32b sub(i0, i1, cout, sum, ovflw);

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

i0 = 229; 
i1 = 114; 
#`DELAY;
end

initial begin
$monitor("time = %1d\ni0 = %32b (decimal= %1d)\ni1 = %32b (decimal= %1d)\nsum = %32b (decimal= %1d) \ncout = %1b overflow = %1b",
 $time, i0, i0, i1, i1, sum, sum, cout, ovflw);
end
endmodule
