`define DELAY 30
module adder_32b_tb();

reg signed [31:0] i0, i1;
reg cin;

wire signed [31:0] sum;
wire cout;
wire ovflw;

adder_32b adder(i0, i1, cin, cout, sum, ovflw);

initial begin

i0 = 10;
i1 = 15;
cin = 1'b1;	 
#`DELAY;

i0 = 32'b00000000000000000000000000000001;    
i1 = 32'b11111111111111111111111111111111; 
cin = 1'b1; 
#`DELAY; 

i0 = 32'b00000000000000010001010001000001; 	     
i1 = 32'b00010000000010111110111111101111;
cin = 1'b0;
#`DELAY; 

i0 = 32'b01111111111111111111111111111111; 
i1 = 32'b01111111111111111111111111111111; 
cin = 1'b1;
#`DELAY; 

i0 = 114; 
i1 = 229; 
cin = 1'b0;
#`DELAY;
end

initial begin
$monitor("time = %1d\ni0 = %32b (decimal= %1d)\ni1 = %32b (decimal= %1d)\ncin = %1b\nsum = %32b (decimal= %1d) \ncout = %1b overflow = %1b",
 $time, i0, i0, i1, i1, cin, sum, sum, cout, ovflw);
end
endmodule
