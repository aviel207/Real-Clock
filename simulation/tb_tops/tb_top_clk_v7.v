`timescale 1ns / 1ps
 
module tb_top_clk_v7();
	
	reg  		tb_clk;
	reg  		tb_reset; 
	reg		tb_mode;
	reg 		tb_load;
	reg  [1:0]	tb_addrs;
	reg  [5:0]	tb_data_in;
	wire [3:0]	tb_basys_anode;
	wire [6:0]	tb_display_ssd;

	initial 
	begin
		tb_clk = 1'b0;
		tb_reset = 1'b1;
		tb_load = 1'b0;
		tb_addr = 2'b00;
		tb_data_in = 6'd40;
		#100 
		tb_reset = 1'b0;
		#500
		tb_load = 1'b1;
		tb_load = 1'b0;
		tb_mode  = 1'b0;
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
		tb_load,
		tb_addrs,
		tb_data_in,
		tb_basys_anode,
		tb_display_ssd
	);
  
  
endmodule
