`define DELAY 30
module mux_2x1_32b_tb();

reg [31:0] i0, i1;
reg select;

wire [31:0] out;

mux_2x1_32b mux(i0, i1, select, out);

initial begin

i0 = 0; i1 = 1; select = 1'b1;
#`DELAY;

i0 = 0; i1 = 1; select = 1'b0;
#`DELAY;
end

initial begin
$monitor("\ntime = %1d, i0 = %1d, i1 = %1d, select = %1b --> out = %1d",
 $time, i0, i1, select, out);
end
endmodule
