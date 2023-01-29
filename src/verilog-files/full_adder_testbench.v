`define DELAY 30
module full_adder_testbench();

reg a, b, c;
wire result, c_out;

full_adder adder_1bit(.i0(a), .i1(b), .cin(c), .cout(c_out), .sum(result));

initial begin

a = 1'b0; b = 1'b0; c = 1'b0;
#`DELAY;

a = 1'b0; b = 1'b0; c = 1'b1;
#`DELAY;

a = 1'b0; b = 1'b1; c = 1'b0;
#`DELAY;

a = 1'b0; b = 1'b1; c = 1'b1;
#`DELAY;

a = 1'b1; b = 1'b0; c = 1'b0;
#`DELAY;

a = 1'b1; b = 1'b0; c = 1'b1;
#`DELAY;

a = 1'b1; b = 1'b1; c = 1'b0;
#`DELAY;

a = 1'b1; b = 1'b1; c = 1'b1;
#`DELAY;

end

initial begin
	$monitor("time = %2d, i0 = %1b, i1 = %1b, cin = %1b, sum = %1b, cout = %1b", $time, a, b, c, result, c_out);
end

endmodule
