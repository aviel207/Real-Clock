// name file: minutes
// update date: 27/08/2023

module minutes
(
	input wire 			clk,    		
	input wire 			reset,  		
	input wire 			tc_time_base,
	input wire 			load,
	input wire [1:0]	addrs,
	input wire [5:0]	data_in,
 	input wire [5:0]	q_seconds,
	output reg [5:0]	q_minutes   	
);
	
	always@(posedge clk)
	begin
		if(reset == 1'b1) 
			q_minutes <=6'd0;
		else
		begin
			if(load == 1'b1 && addrs == 2'b01)
				q_minutes <= data_in;
			else
			begin
				if((tc_time_base == 1'b1)&(q_seconds == 6'd59))
				begin
					if(q_minutes < 6'd59)
						q_minutes <= q_minutes + 6'd1;
					else
						q_minutes <= 6'd0;
				end
			end
		end
	end

endmodule