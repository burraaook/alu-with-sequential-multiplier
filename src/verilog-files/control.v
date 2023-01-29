module control(clk, rst, wrt, less32, add, shr, incr);

input clk, rst, wrt, less32;
output add, shr, incr;

reg [1:0] p_state;
wire [1:0] n_state;

initial begin
	p_state = 2'b00;
end

// define next states according to the truth table
assign n_state[1] = (~p_state[1] & ~p_state[0] & ~wrt) | (~p_state[1] & p_state[0]) | (p_state[1] & ~p_state[0] & ~less32);
assign n_state[0] = (~p_state[1] & ~p_state[0] & wrt) | (p_state[1] & ~p_state[0] & ~less32);

// get signal results
assign add = ~p_state[1] & p_state[0];
assign shr = p_state[1] & ~p_state[0];
assign incr = p_state[1] & ~p_state[0];

always @(posedge clk or posedge rst)
begin
	if(rst)
		p_state <= 2'b00;
	else
		p_state <= n_state;
end
	
endmodule

