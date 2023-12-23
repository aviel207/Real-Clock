`timescale 1ns / 1ps
 
module tb_top_clk_v5();
	
	reg  		tb_clk;
	reg  		tb_reset; 
	wire [3:0]	tb_left_seconds_out;  
	wire [3:0]	tb_right_seconds_out;
	wire [3:0]	tb_left_minutes_out;
	wire [3:0]	tb_right_minutes_out;
	wire [3:0]	tb_left_hours_out;
	wire [3:0]	tb_right_hours_out;

	initial 
	begin
		tb_clk = 1'b0;
		tb_reset = 1'b1;
		#100 
		tb_reset = 1'b0;
	end
 
	always
	begin
		#5 tb_clk = ~tb_clk; //100 MHz 
	end
  
	top_clk_v5 DUT 
	(
		tb_clk,
		tb_reset,
		tb_left_seconds_out,
		tb_right_seconds_out,
		tb_left_minutes_out,
		tb_right_minutes_out,
		tb_left_hours_out,
		tb_right_hours_out
	);
  
  
endmodule