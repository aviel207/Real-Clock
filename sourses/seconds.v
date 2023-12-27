// name file: seconds
// update date: 27/08/2023

module seconds
(
	input wire 			clk,    		
	input wire 			reset,
	input wire 			tc_time_base,
	input wire 			load,
	input wire [1:0]	addrs,
	input wire [5:0]	data_in,
	output reg [5:0]	q_seconds   	
);
	
	always@(posedge clk)
	begin
		if(reset == 1'b1) 
			q_seconds <= 6'd0;
		else
		begin
			if(load == 1'b1 && addrs == 2'b00)
				q_seconds <= data_in;
			else
			begin
				if(tc_time_base == 1'b1)
				begin
					if(q_seconds < 6'd59)
						q_seconds <= q_seconds + 6'd1;
					else
						q_seconds <= 6'd0;
				end
			end
		end
	end
endmodule