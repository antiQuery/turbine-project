module bin_to_7seg
(
	bin_in,
	dig_o
);

	input [3:0] bin_in;
	output [6:0] dig_o;
	
	wire dig_a;
	wire dig_b;
	wire dig_c;
	wire dig_d;
	wire dig_e;
	wire dig_f;
	wire dig_g;
	
	assign dig_o[0] = dig_a;
	assign dig_o[1] = dig_b;
	assign dig_o[2] = dig_c;
	assign dig_o[3] = dig_d;
	assign dig_o[4] = dig_e;
	assign dig_o[5] = dig_f;
	assign dig_o[6] = dig_g;
	
	// 0 1 2 3 4 5 6 7 8 9
	assign dig_a = (bin_in == 0) |
	               (bin_in == 2) |
					   (bin_in == 3) |
						(bin_in == 5) |
						(bin_in == 6) |
						(bin_in == 7) |
						(bin_in == 8) |
						(bin_in == 9);
					
	assign dig_b = (bin_in == 0) |
	               (bin_in == 1) |
					   (bin_in == 2) |
						(bin_in == 3) |
						(bin_in == 4) |
						(bin_in == 7) |
						(bin_in == 8) |
						(bin_in == 9);
	
	assign dig_c = (bin_in == 0) |
	               (bin_in == 1) |
	               (bin_in == 3) |
					   (bin_in == 4) |
						(bin_in == 5) |
						(bin_in == 6) |
						(bin_in == 7) |
						(bin_in == 8) |
						(bin_in == 9);
						
	assign dig_d = (bin_in == 0) |
	               (bin_in == 2) |
	               (bin_in == 3) |
					   (bin_in == 5) |
						(bin_in == 6) |
						(bin_in == 8) |
						(bin_in == 9);
						
	assign dig_e = (bin_in == 0) |
	               (bin_in == 2) |
						(bin_in == 6) |
						(bin_in == 8);

	assign dig_f = (bin_in == 0) |
	               (bin_in == 4) |
						(bin_in == 5) |
						(bin_in == 6) |
						(bin_in == 8) |
						(bin_in == 9);
						
	assign dig_g = (bin_in == 2) |
					   (bin_in == 3) |
						(bin_in == 4) |
						(bin_in == 5) |
						(bin_in == 6) |
						(bin_in == 8) |
						(bin_in == 9);

endmodule
