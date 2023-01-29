`define DELAY 30
module mux_4x1_32b_tb();
reg [31:0] i0, i1, i2, i3;
reg s0, s1;

wire [31:0] out;

mux_4x1_32b mux(i0, i1, i2, i3, s0, s1, out);

initial begin

i0 = 0; 		i1 = 1;
i2 = 8;		i3 = 16;

s0 = 1'b0;	s1 = 1'b0;
#`DELAY;

i0 = 0; 		i1 = 1;
i2 = 8;		i3 = 16;

s0 = 1'b0;	s1 = 1'b1;
#`DELAY;

i0 = 0; 		i1 = 1;
i2 = 8;		i3 = 16;

s0 = 1'b1;	s1 = 1'b0;
#`DELAY;

i0 = 0; 		i1 = 1;
i2 = 8;		i3 = 16;

s0 = 1'b1;	s1 = 1'b1;
#`DELAY;

end

initial begin
$monitor("\ntime = %1d, i0 = %1d, i1 = %1d, i2 = %1d, i3 = %1d\ns0 = %1b, s1 = %1b --> out = %1d",
 $time, i0, i1, i2, i3, s0, s1, out);
end

endmodule
