// Name file: bcd_to_ssd
// Update date: 27/08/2023

module bcd_to_ssd (
    input wire [3:0] bcd,
    output reg [6:0] ssd
);


always @(bcd)
begin
    case(bcd)
        4'd0: ssd  = 7'b0000001;
		4'd1: ssd  = 7'b1001111;
		4'd2: ssd  = 7'b0010010;
		4'd3: ssd  = 7'b0000110;
		4'd4: ssd  = 7'b1001100;
		4'd5: ssd  = 7'b0100100;
		4'd6: ssd  = 7'b0100000;
		4'd7: ssd  = 7'b0001111;
		4'd8: ssd  = 7'b0000000;
		4'd9: ssd  = 7'b0000100;
        default: ssd = 7'bXXXXXXX;	
    endcase
end
endmodule
