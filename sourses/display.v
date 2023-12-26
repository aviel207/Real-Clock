// name file: top_clk_v6
// update date: 23/12/2023

module display
(
	input  wire 		clk,    		
	input  wire 		reset,	
	input  wire			mode,
	input  wire [6:0]	left_seconds_ssd,   
	input  wire [6:0]	right_seconds_ssd,
	input  wire [6:0]	left_minutes_ssd,
	input  wire [6:0]	right_minutes_ssd,
	input  wire [6:0]	left_hours_ssd,
	input  wire [6:0]	right_hours_ssd,
	output reg 	[3:0]	basys_anode,
	output reg 	[6:0]	display_ssd
);
	reg [19:0] refresh_counter;
	reg [1:0]  inner_counter;
	
	
	always@(posedge clk)
	begin
		if(reset == 1'b1) begin
			refresh_counter <= 20'b0;
		end	
		else begin
			refresh_counter <= refresh_counter + 20'b1;
			inner_counter <= refresh_counter[19:18];
		end
	end
	
	always@(inner_counter,mode,left_seconds_ssd,right_seconds_ssd,left_minutes_ssd,right_minutes_ssd,left_hours_ssd,right_hours_ssd)
	begin	
		if(mode == 1'b0) begin
			case(inner_counter)
				2'b00: 
				begin
					basys_anode  <= 4'b0111;
					display_ssd <= left_minutes_ssd;
				end 
				2'b01: 
				begin
					basys_anode  <= 4'b1011;
					display_ssd <= right_minutes_ssd;
				end 
				2'b10: 
				begin
					basys_anode  <= 4'b1101;
					display_ssd <= left_seconds_ssd;
				end 
				2'b11: 
				begin
					basys_anode  <= 4'b1110;
					display_ssd <= right_seconds_ssd;
				end 
				default:
				begin
					basys_anode  <= 4'bXXXX;
					display_ssd <= 7'bXXXXXXX;
				end
			endcase
		end
		else begin 
			case(inner_counter[0])
				1'b0: 
				begin
					basys_anode  <= 4'b0111;
					display_ssd <= left_hours_ssd;
				end 
				1'b1: 
				begin
					basys_anode  <= 4'b1011;
					display_ssd <= right_hours_ssd;
				end 
				default:
				begin
					basys_anode  <= 4'bXXXX;
					display_ssd <= 7'bXXXXXXX;
				end
			endcase
		end
	end
endmodule