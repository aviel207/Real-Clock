// Name file: bin_to_bcd
// Update date: 27/08/2023

module bin_to_bcd (
    input wire [5:0] bin,
    output reg [3:0] left_digit,
    output reg [3:0] right_digit
);

always @(bin)
begin
    case(bin)
        6'b000000: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd0;
		end
		6'b000001: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd1;
		end
		6'b000010: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd2;
		end
		6'b000011: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd3;
		end
		6'b000100: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd4;
		end
		6'b000101: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd5;
		end
		6'b000110: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd6;
		end
		6'b000111: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd7;
		end
		6'b001000: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd8;
		end
		6'b001001: 
		begin
			left_digit  = 4'd0;
			right_digit = 4'd9;
		end
		6'b001010: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd0;
		end
		6'b001011: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd1;
		end
		6'b001100: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd2;
		end
		6'b001101: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd3;
		end
		6'b001110: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd4;
		end
		6'b001111: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd5;
		end
		6'b010000: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd6;
		end
		6'b010001: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd7;
		end
		6'b010010: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd8;
		end
		6'b010011: 
		begin
			left_digit  = 4'd1;
			right_digit = 4'd9;
		end
		6'b010100: 
		begin
			left_digit  = 4'd2;
			right_digit = 4'd0;
		end
		6'b010101: 
		begin
			left_digit  = 4'd2;
			right_digit = 4'd1;
		end
		6'b010110: 
		begin
			left_digit  = 4'd2;
			right_digit = 4'd2;
		end
		6'b010111: 
		begin
			left_digit  = 4'd2;
			right_digit = 4'd3;
		end
		6'b011000: 
		begin
			left_digit  = 4'd2;
			right_digit = 4'd4;
		end
		6'b011001: 
		begin
			left_digit  = 4'd2;
			right_digit = 4'd5;
		end
		6'b011010: 
		begin
			left_digit  = 4'd2;
			right_digit = 4'd6;
		end
		6'b011011: 
		begin
			left_digit  = 4'd2;
			right_digit = 4'd7;
		end
		6'b011100: 
		begin
			left_digit  = 4'd2;
			right_digit = 4'd8;
		end
		6'b011101: 
		begin
			left_digit  = 4'd2;
			right_digit = 4'd9;
		end
		6'b011110: 
		begin
			left_digit  = 4'd3;
			right_digit = 4'd0;
		end
		6'b011111: 
		begin
			left_digit  = 4'd3;
			right_digit = 4'd1;
		end
		6'b100000: 
		begin
			left_digit  = 4'd3;
			right_digit = 4'd2;
		end
		6'b100001: 
		begin
			left_digit  = 4'd3;
			right_digit = 4'd3;
		end
		6'b100010: 
		begin
			left_digit  = 4'd3;
			right_digit = 4'd4;
		end
		6'b100011: 
		begin
			left_digit  = 4'd3;
			right_digit = 4'd5;
		end
		6'b100100: 
		begin
			left_digit  = 4'd3;
			right_digit = 4'd6;
		end
		6'b100101: 
		begin
			left_digit  = 4'd3;
			right_digit = 4'd7;
		end
		6'b100110: 
		begin
			left_digit  = 4'd3;
			right_digit = 4'd8;
		end
		6'b100111: 
		begin
			left_digit  = 4'd3;
			right_digit = 4'd9;
		end
		6'b101000: 
		begin
			left_digit  = 4'd4;
			right_digit = 4'd0;
		end
		6'b101001: 
		begin
			left_digit  = 4'd4;
			right_digit = 4'd1;
		end
		6'b101010: 
		begin
			left_digit  = 4'd4;
			right_digit = 4'd2;
		end
		6'b101011: 
		begin
			left_digit  = 4'd4;
			right_digit = 4'd3;
		end
		6'b101100: 
		begin
			left_digit  = 4'd4;
			right_digit = 4'd4;
		end
		6'b101101: 
		begin
			left_digit  = 4'd4;
			right_digit = 4'd5;
		end
		6'b101110: 
		begin
			left_digit  = 4'd4;
			right_digit = 4'd6;
		end
		6'b101111: 
		begin
			left_digit  = 4'd4;
			right_digit = 4'd7;
		end
		6'b110000: 
		begin
			left_digit  = 4'd4;
			right_digit = 4'd8;
		end
		6'b110001: 
		begin
			left_digit  = 4'd4;
			right_digit = 4'd9;
		end
		6'b110010: 
		begin
			left_digit  = 4'd5;
			right_digit = 4'd0;
		end
		6'b110011: 
		begin
			left_digit  = 4'd5;
			right_digit = 4'd1;
		end
		6'b110100: 
		begin
			left_digit  = 4'd5;
			right_digit = 4'd2;
		end
		6'b110101: 
		begin
			left_digit  = 4'd5;
			right_digit = 4'd3;
		end
		6'b110110: 
		begin
			left_digit  = 4'd5;
			right_digit = 4'd4;
		end
		6'b110111: 
		begin
			left_digit  = 4'd5;
			right_digit = 4'd5;
		end
		6'b111000: 
		begin
			left_digit  = 4'd5;
			right_digit = 4'd6;
		end
		6'b111001: 
		begin
			left_digit  = 4'd5;
			right_digit = 4'd7;
		end
		6'b111010: 
		begin
			left_digit  = 4'd5;
			right_digit = 4'd8;
		end
		6'b111011: 
		begin
			left_digit  = 4'd5;
			right_digit = 4'd9;
		end
        default: 
		begin
			left_digit  = 4'dX;
			right_digit = 4'dX;
		end		
    endcase
end

endmodule
