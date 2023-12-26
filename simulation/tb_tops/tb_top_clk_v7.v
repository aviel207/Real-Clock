`timescale 1ns / 1ps
 
module tb_top_clk_v7();
	
	reg  		tb_clk;
	reg  		tb_reset; 
	reg			tb_mode;
	wire [3:0]	tb_basys_anode;
	wire [6:0]	tb_display_ssd;

	initial 
	begin
		tb_clk   = 1'b0;
		tb_reset = 1'b1;
		tb_mode  = 1'b0;
		#100 
		tb_reset = 1'b0;
		#500
		tb_mode  = 1'b1;
	end
 
	always
	begin
		#5 tb_clk = ~tb_clk; //100 MHz 
	end
  
	top_clk_v7 DUT 
	(
		tb_clk,
		tb_reset,
		tb_mode,
		tb_basys_anode,
		tb_display_ssd
	);
  
  
endmodule