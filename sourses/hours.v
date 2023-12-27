// name file: hours
// update date: 27/08/2023

module hours
(
	input wire 			clk,    		
	input wire 			reset,  		
	input wire 			tc_time_base,
	input wire 			load,
	input wire 	[1:0]	addrs,
	input wire 	[5:0]	data_in,
 	input wire  [5:0]	q_seconds,
	input  wire [5:0]	q_minutes,
	output reg  [4:0]   q_hours
);
	
	always@(posedge clk)
	begin
		if(reset == 1'b1) 
			q_hours <=5'd0;
		else
		begin
			if(load == 1'b1 && addrs == 2'b10)
				q_hours <= data_in[4:0];
			else
			begin
				if((tc_time_base == 1'b1)&(q_seconds == 6'd59)&(q_minutes == 6'd59))
				begin
					if(q_hours < 5'd23)
						q_hours <= q_hours + 5'd1;
					else
						q_hours <= 5'd0;
				end
			end
		end
	end

endmodule