// name file: seconds
// update date: 27/08/2023

module seconds
(
	input wire 			clk,    		
	input wire 			reset,  		
	input wire 			tc_time_base,
	output reg [5:0]	q_seconds   	
);
	
	always@(posedge clk)
	begin
		if(reset == 1'b1) 
			q_seconds <=6'd0;
		else
		begin
			if(tc_time_base == 1'b1)
			begin
				if(q_seconds < 6'd59)
					q_seconds = q_seconds + 6'd1;
				else
					q_seconds = 6'd0;
			end
		end
	end

endmodule