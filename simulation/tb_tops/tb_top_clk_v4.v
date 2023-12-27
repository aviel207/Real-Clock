`timescale 1ns / 1ps
 
module tb_top_clk_v4();
	
	reg  		tb_clk;
	reg  		tb_reset; 
	reg 		tb_load;
	reg  [1:0]	tb_addrs;
	reg  [5:0]	tb_data_in;
	wire [5:0]  tb_seconds_out;
	wire [5:0]	tb_minutes_out;	
 	wire [4:0]	tb_hours_out;

	initial 
	begin
		tb_clk = 1'b0;
		tb_reset = 1'b1;
		tb_load = 1'b0;
		tb_addr = 2'b10;
		tb_data_in = 6'd17;
		#100 
		tb_reset = 1'b0;
		#500
		tb_load = 1'b1;
		tb_load = 1'b0;
	end
 
	always
	begin
		#5 tb_clk = ~tb_clk; //100 MHz 
	end
  
	top_clk_v4 DUT 
	(
		tb_clk  ,
		tb_reset,
		tb_load,
		tb_addrs,
		tb_data_in,
		tb_seconds_out,
		tb_minutes_out,
		tb_hours_out
	);
  
  
endmodule
