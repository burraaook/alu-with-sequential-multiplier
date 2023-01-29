`define DELAY 30
module mux_2x1_8b_tb();

reg [7:0] i0, i1;
reg select;

wire [7:0] out;

mux_2x1_8b mux(i0, i1, select, out);

initial begin

i0 = 8'b0; i1 = 8'b1; select = 1'b1;
#`DELAY;

i0 = 8'b0; i1 = 8'b1; select = 1'b0;
#`DELAY;
end

initial begin
$monitor("\ntime = %1d, i0 = %8b, i1 = %8b, select = %1b --> out = %8b",
 $time, i0, i1, select, out);
end
endmodule
