`define DELAY 30
module adder_8b_tb();

reg signed [7:0] i0, i1;
reg cin;

wire signed [7:0] sum;
wire cout;

adder_8b adder(i0, i1, cin, cout, sum);

initial begin

i0 = 8'd10;
i1 = 8'd15;
cin = 1'b1;	 
#`DELAY;

i0 = 8'b00000001;    
i1 = 8'b00001111; 
cin = 1'b1; 
#`DELAY; 

i0 = 8'b00000001; 	     
i1 = 8'b00101111;
cin = 1'b0;
#`DELAY; 

i0 = 8'd5; 
i1 = 8'd9; 
cin = 1'b0;
#`DELAY;
end

initial begin
$monitor("\ntime = %1d\ni0 = %8b (decimal= %1d)\ni1 = %8b (decimal= %1d)\ncin = %1b\nsum = %8b (decimal= %1d)\ncout = %1b",
 $time, i0, i0, i1, i1, cin, sum, sum, cout);
end
endmodule
