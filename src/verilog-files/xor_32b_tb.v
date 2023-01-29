`define DELAY 30
module xor_32b_tb();

reg [31:0] i0, i1;

wire [31:0] result;

xor_32b xor_g(i0, i1, result);

initial begin

i0 = 32'b00000000000000000000000000000000;    
i1 = 32'b11111111111111111111111111111111; 
#`DELAY; 

i0 = 32'b11111111111111111111111111111111;    
i1 = 32'b11111111111111111111111111111111; 
#`DELAY; 

i0 = 32'b00000000000000000000000000000000; 	     
i1 = 32'b00000000000000000000000000000000;
#`DELAY; 

i0 = 32'b01010100000000000001000000000000; 
i1 = 32'b11100000000000000001111111111111; 
#`DELAY;
end

initial begin
$monitor("time = %1d\ni0 = %32b\ni1 = %32b\nresult = %32b\n", $time, i0, i1, result);
end

endmodule
