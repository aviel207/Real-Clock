`timescale 1ns / 1ps
 
module tb_top_clk_v1();
	
	reg  tb_clk;
	reg  tb_reset; 
	wire tb_tc_time_base;
 
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
  
	top_clk_v1 DUT 
	(
		tb_clk  ,
		tb_reset,
		tb_tc_time_base
	);
  
  
endmodule