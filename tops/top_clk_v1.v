// name file: top_clk_v1
// update date: 27/08/2023

module top_clk_v1
(
	input  wire clk,    		
	input  wire reset,  		
	output wire tc_time_base
);
	
	time_base T1 
	(
		.clk(clk),
		.reset(reset),
		.tc_time_base(tc_time_base)
	);
	
endmodule

