module mux_2x1(i0, i1, s, out);
	input i0, i1, s;
	output out;
	
	wire w1, w2, w3;
	
	not not_s(w1, s);
	and and1(w2, w1, i0);
	and and2(w3, s, i1);
	or out_gate(out, w2, w3);
endmodule