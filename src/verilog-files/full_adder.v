module full_adder(i0, i1, cin, cout, sum);
	input i0, i1, cin;
	output cout, sum;
	wire w1, w2, w3;
	
	xor sum_input(w1, i0, i1);
	
	xor sum_result(sum, w1, cin);
	
	and carry_first(w2, w1, cin);
	
	and carry_second(w3, i0, i1);
	
	or carry_out(cout, w2, w3); 
endmodule
