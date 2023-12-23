// name file: top_clk_v2
// update date: 27/08/2023

module top_clk_v2
(
	input  wire 		clk,    		
	input  wire 		reset,  		
	output wire [5:0]	seconds_out   	
);
	wire tc_time_base_wire;
	
	time_base T1 
	(
		.clk(clk),
		.reset(reset),
		.tc_time_base(tc_time_base_wire)
	);
	
	seconds T2 
	(
		.clk(clk),
		.reset(reset),
		.tc_time_base(tc_time_base_wire),
		.q_seconds(seconds_out)
	);

endmodule

