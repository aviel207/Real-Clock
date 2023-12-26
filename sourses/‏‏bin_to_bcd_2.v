// Name file: bin_to_bcd_2
// Update date: 27/08/2023

module bin_to_bcd_2 (
    input wire [4:0] bin,
    output reg [3:0] left_digit,
    output reg [3:0] right_digit
);

always @(bin)
begin
    case(bin)
        5'b00000: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd0;
		end
		5'b00001: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd1;
		end
		5'b00010: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd2;
		end
		5'b00011: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd3;
		end
		5'b00100: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd4;
		end
		5'b00101: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd5;
		end
		5'b00110: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd6;
		end
		5'b00111: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd7;
		end
		5'b01000: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd8;
		end
		5'b01001: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd9;
		end
		5'b01010: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd0;
		end
		5'b01011: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd1;
		end
		5'b01100: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd2;
		end
		5'b01101: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd3;
		end
		5'b01110: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd4;
		end
		5'b01111: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd5;
		end
		5'b10000: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd6;
		end
		5'b10001: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd7;
		end
		5'b10010: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd8;
		end
		5'b10011: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd9;
		end
		5'b10100: 
		begin
			left_digit  = 4'd2;
			right_digit = 4'd0;
		end
		5'b10101: 
		begin
			left_digit  = 4'd2;
			right_digit = 4'd1;
		end
		5'b10110: 
		begin
			left_digit  = 4'd2;
			right_digit = 4'd2;
		end
		5'b10111: 
		begin
			left_digit  = 4'd2;
			right_digit = 4'd3;
		end

        default: 
		begin
			left_digit  = 4'dX;
			right_digit = 4'dX;
		end		
    endcase
end

endmodule
