`timescale 1ns / 1ps
 
module tb_bin_to_bcd();
	
	reg  [5:0] tb_bin;
	wire [3:0] tb_left_digit; 
	wire [3:0] tb_right_digit;
 
	initial 
	begin
		tb_bin = 6'b000000;
        #10
        tb_bin = 6'b000001;
        #10
        tb_bin = 6'b000010;
        #10
        tb_bin = 6'b000100;
        #10
        tb_bin = 6'b011001;
	end
    

	bin_to_bcd DUT 
	(
		tb_bin,
		tb_left_digit,
		tb_right_digit
	);
  
  
endmodule