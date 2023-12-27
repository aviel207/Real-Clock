// name file: top_clk_v5
// update date: 23/012/2023

module top_clk_v5
(
	input  wire 		clk,    		
	input  wire 		reset,
	input  wire		load,
	input  wire [1:0]	addrs,
	input  wire [5:0]	data_in,
	output wire [3:0]	left_seconds_out,   
	output wire [3:0]	right_seconds_out,
	output wire [3:0]	left_minutes_out,
	output wire [3:0]	right_minutes_out,
	output wire [3:0]	left_hours_out,
	output wire [3:0]	right_hours_out
);
	wire tc_time_base_wire;
	wire [5:0] q_seconds_wire;
	wire [5:0] q_minutes_wire;
	wire [4:0] q_hours_wire;
	
	wire [3:0] left_digit_seconds_wire;
	wire [3:0] right_digit_seconds_wire;
	wire [3:0] left_digit_minutes_wire;
	wire [3:0] right_digit_minutes_wire;
	wire [3:0] left_digit_hours_wire;
	wire [3:0] right_digit_hours_wire;	
	
	assign left_seconds_out  = left_digit_seconds_wire;
	assign right_seconds_out = right_digit_seconds_wire;	
	assign left_minutes_out  = left_digit_minutes_wire;
	assign right_minutes_out = right_digit_minutes_wire;
	assign left_hours_out    = left_digit_hours_wire;
	assign right_hours_out   = right_digit_hours_wire;
	
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
		.q_seconds(q_seconds_wire),
		.q_minutes(q_minutes_wire)
	);


	hours T4 
	(
		.clk(clk),
		.reset(reset),
		.tc_time_base(tc_time_base_wire),
		.load(load),
		.addrs(addrs),
		.data_in(data_in),
		.q_seconds(q_seconds_wire),
		.q_minutes(q_minutes_wire),
		.q_hours(q_hours_wire)
	);

	bin_to_bcd T5
	(
		.bin(q_seconds_wire),	
		.left_digit(left_digit_seconds_wire),
		.right_digit(right_digit_seconds_wire)
	);
	
	bin_to_bcd T6
	(
		.bin(q_minutes_wire),	
		.left_digit(left_digit_minutes_wire),
		.right_digit(right_digit_minutes_wire)
	);
	
	bin_to_bcd_2 T7
	(
		.bin(q_hours_wire),	
		.left_digit(left_digit_hours_wire),
		.right_digit(right_digit_hours_wire)
	);
endmodule

