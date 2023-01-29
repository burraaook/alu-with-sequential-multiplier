`define DELAY 30
module mux_2x1_tb();

reg i0, i1;
reg select;

wire out;

mux_2x1 mux(i0, i1, select, out);

initial begin

i0 = 1'b0; i1 = 1'b1; select = 1'b1;
#`DELAY;

i0 = 1'b0; i1 = 1'b1; select = 1'b0;
#`DELAY;
end

initial begin
$monitor("\ntime = %1d, i0 = %1b, i1 = %1b, select = %1b --> out = %1b",
 $time, i0, i1, select, out);
end
endmodule
