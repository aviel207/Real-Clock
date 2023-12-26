`timescale 1ns / 1ps
 
module tb_display();
	
 	reg 		tb_clk;  		
	reg 		tb_reset;	
	reg			tb_mode;
	reg  [6:0]	tb_left_seconds_ssd;   
	reg  [6:0]	tb_right_seconds_ssd;
	reg  [6:0]	tb_left_minutes_ssd;
	reg  [6:0]	tb_right_minutes_ssd;
	reg  [6:0]	tb_left_hours_ssd;
	reg  [6:0]	tb_right_hours_ssd;
	wire [3:0]	tb_basys_anode;
	wire [6:0]	tb_display_ssd;
	
	initial 
	begin
		tb_clk   = 1'b0;
		tb_reset = 1'b1;
		tb_mode  = 1'b0;
		
		tb_left_seconds_ssd  = 7'd5;
		tb_right_seconds_ssd = 7'd0;
		
		tb_left_minutes_ssd  = 7'd3;
		tb_right_minutes_ssd = 7'd0;
		
		tb_left_hours_ssd    = 7'd1;
		tb_right_hours_ssd   = 7'd8;
		
		#100 
		tb_reset = 1'b0;
		#500
		tb_mode = 1'b1;
	end
 
	always
	begin
		#5 tb_clk = ~tb_clk; //100 MHz 
	end
  

	display DUT 
	(
		tb_clk,		
		tb_reset,	
		tb_mode,
		tb_left_seconds_ssd,   
		tb_right_seconds_ssd,
		tb_left_minutes_ssd,
		tb_right_minutes_ssd,
		tb_left_hours_ssd,
		tb_right_hours_ssd,
		tb_basys_anode,
		tb_display_ssd
	);
  
  
endmodule