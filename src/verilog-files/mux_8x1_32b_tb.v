`define DELAY 30
module mux_8x1_32b_tb();
reg [31:0] i0, i1, i2, i3, i4, i5, i6, i7;
reg s0, s1, s2;

wire [31:0] out;

mux_8x1_32b mux(i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2, out);

initial begin

i0 = 32'b0; i1 = 32'b1;
i2 = 8;		i3 = 16;
i4 = 32;		i5 = 64;
i6 = 128;   i7 = 256;

s0 = 1'b0;	s1 = 1'b0; s2 = 1'b0;
#`DELAY;

s0 = 1'b0;	s1 = 1'b0; s2 = 1'b1;
#`DELAY;

s0 = 1'b0;	s1 = 1'b1; s2 = 1'b0;
#`DELAY;

s0 = 1'b0;	s1 = 1'b1; s2 = 1'b1;
#`DELAY;

s0 = 1'b1;	s1 = 1'b0; s2 = 1'b0;
#`DELAY;

s0 = 1'b1;	s1 = 1'b0; s2 = 1'b1;
#`DELAY;

s0 = 1'b1;	s1 = 1'b1; s2 = 1'b0;
#`DELAY;

s0 = 1'b1;	s1 = 1'b1; s2 = 1'b1;
#`DELAY;

end

initial begin
$monitor("\ntime = %1d, i0 = %1d, i1 = %1d, i2 = %1d, i3 = %1d, i4 = %1d, i5 = %1d, i6 = %1d, i7 = %1d\ns0 = %1b, s1 = %1b, s2 = %1b --> out = %1d",
 $time, i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2, out);
end

endmodule
