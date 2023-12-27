// name file: top_clk_v2
// update date: 27/08/2023

module top_clk_v2
(
	input  wire 		clk,    		
	input  wire 		reset, 
	input  wire		load,
	input  wire [1:0]	addrs,
	input  wire [5:0]	data_in,
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
		.load(load),
		.addrs(addrs),
		.data_in(data_in),
		.q_seconds(seconds_out)
	);

endmodule

