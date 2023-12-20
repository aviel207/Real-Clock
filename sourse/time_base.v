// name file: time_base
// update date: 27/08/2023

module time_base
#(parameter tc_mode = 99999999)
(
	input wire clk,    		
	input wire reset,  		
	output reg tc_time_base   	
);
	reg [26:0] q_time_base;

	always@(posedge clk)
	begin
		if(reset == 1'b1) begin
			q_time_base <= 27'd0;
			tc_time_base <= 1'b0;
		end
		else begin
			if(q_time_base < tc_mode) begin
				q_time_base <= q_time_base + 27'd1; 
				tc_time_base <= 1'b0;
			end
			else begin
				q_time_base <= 27'd0; 
				tc_time_base <= 1'b1;
			end
		end
	end

endmodule
