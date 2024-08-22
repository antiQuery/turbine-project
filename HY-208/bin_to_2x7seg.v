module bin_to_2x7seg
(
	bin_in,
	dig_high_o,
	dig_low_o
);
	
	input [6:0] bin_in;
	output [6:0] dig_high_o;
	output [6:0] dig_low_o;
		
	wire [3:0] bin_dig_low = bin_in % 10;
	wire [3:0] bin_dig_high = bin_in / 10;
	
	bin_to_7seg dig_high
(
	.bin_in(bin_dig_high),
	.dig_o(dig_high_o)
);

	bin_to_7seg dig_low
(
	.bin_in(bin_dig_low),
	.dig_o(dig_low_o)
);


endmodule
