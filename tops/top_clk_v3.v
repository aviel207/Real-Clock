// name file: top_clk_v3
// update date: 27/08/2023

module top_clk_v3
(
	input  wire 		clk,    		
	input  wire 		reset,  		
	input  wire 		load,  		
	input wire  [1:0] 	addrs,
	input wire  [5:0]	data_in,
	output wire [5:0]	seconds_out,   
	output wire [5:0]	minutes_out	
);
	wire tc_time_base_wire;
	wire [5:0] q_seconds_wire;
	wire [5:0] q_minutes_wire;
	
	assign seconds_out = q_seconds_wire; 
	assign minutes_out = q_minutes_wire;
	
	time_base T1 
	(
		.clk(clk),
		.reset(reset),
		.load(load),
		.addrs(addrs),
		.data_in(data_in),
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
		.q_seconds(q_seconds_wire)
	);

	minutes T3 
	(
		.clk(clk),
		.reset(reset),
		.tc_time_base(tc_time_base_wire),
		.load(load),
		.addrs(addrs),
		.data_in(data_in),
		.q_seconds(q_seconds_wire)
		.q_minutes(q_minutes_wire)
	);


endmodule

