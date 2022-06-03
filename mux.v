module mux(
	input [2:0] rgb_o1,
	input [2:0] rgb_o2,
	input select,
	output [2:0] rgb_o
);

assign rgb_o = (select) ? rgb_o1 : rgb_o2;

endmodule