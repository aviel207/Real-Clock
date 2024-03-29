// name file: top_clk_v7
// update date: 23/12/2023

module real_clk
(
	input  wire 		clk,    		
	input  wire 		reset,
	input  wire 		mode,
	input wire 			load,
	input wire 	[1:0]	addrs,
	input wire 	[5:0]	data_in,
	output wire [3:0]	basys_anode,   
	output wire [6:0]	display_ssd

);
	wire tc_time_base_wire;
	wire [5:0] q_seconds_wire;
	wire [5:0] q_minutes_wire;
	wire [4:0] q_hours_wire;
	
	wire [3:0] left_digit_seconds_bcd;
	wire [3:0] right_digit_seconds_bcd;
	wire [3:0] left_digit_minutes_bcd;
	wire [3:0] right_digit_minutes_bcd;
	wire [3:0] left_digit_hours_bcd;
	wire [3:0] right_digit_hours_bcd;	

	wire [6:0] left_digit_seconds_ssd;
	wire [6:0] right_digit_seconds_ssd;
	wire [6:0] left_digit_minutes_ssd;
	wire [6:0] right_digit_minutes_ssd;
	wire [6:0] left_digit_hours_ssd;
	wire [6:0] right_digit_hours_ssd;	
	
		
//time_base
	time_base T1 
	(
		.clk(clk),
		.reset(reset),
		.tc_time_base(tc_time_base_wire)
	);
	
//seconds
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

//minutes
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

//hours
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

//seconds
	bin_to_bcd T5
	(
		.bin(q_seconds_wire),	
		.left_digit(left_digit_seconds_bcd),
		.right_digit(right_digit_seconds_bcd)
	);

//minutes
	bin_to_bcd T6
	(
		.bin(q_minutes_wire),	
		.left_digit(left_digit_minutes_bcd),
		.right_digit(right_digit_minutes_bcd)
	);

//hours	
	bin_to_bcd_2 T7
	(
		.bin(q_hours_wire),	
		.left_digit(left_digit_hours_bcd),
		.right_digit(right_digit_hours_bcd)
	);

//seconds - left_digit
	bcd_to_ssd T8
	(
		.bcd(left_digit_seconds_bcd),	
		.ssd(left_digit_seconds_ssd)
	);

//seconds - right_digit
	bcd_to_ssd T9
	(
		.bcd(right_digit_seconds_bcd),	
		.ssd(right_digit_seconds_ssd)
	);

//minutes - left_digit
	bcd_to_ssd T10
	(
		.bcd(left_digit_minutes_bcd),	
		.ssd(left_digit_minutes_ssd)
	);
	
//minutes - right_digit
	bcd_to_ssd T11
	(
		.bcd(right_digit_minutes_bcd),	
		.ssd(right_digit_minutes_ssd)
	);
	
//hours - left_digit
	bcd_to_ssd T12
	(
		.bcd(left_digit_hours_bcd),	
		.ssd(left_digit_hours_ssd)
	);

//hours - right_digit
	bcd_to_ssd T13
	(
		.bcd(right_digit_hours_bcd),	
		.ssd(right_digit_hours_ssd)
	);
	
//display
	display T14
	(
		.clk(clk),    		
		.reset(reset),	
		.mode(mode),
		.left_seconds_ssd(left_digit_seconds_ssd), 
		.right_seconds_ssd(right_digit_seconds_ssd),
		.left_minutes_ssd(left_digit_minutes_ssd),
		.right_minutes_ssd(right_digit_minutes_ssd),
		.left_hours_ssd(left_digit_hours_ssd),
		.right_hours_ssd(right_digit_hours_ssd),
		.basys_anode(basys_anode),
		.display_ssd(display_ssd)
	);
endmodule

