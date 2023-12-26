`timescale 1ns / 1ps
 
module tb_bcd_to_ssd();
	
	reg  [3:0] tb_bcd;
	wire [6:0] tb_ssd; 
 
	initial 
	begin
		tb_bcd = 4'd0;
        #10
        tb_bcd = 4'd2;
        #10
        tb_bcd = 4'd4;
        #10
        tb_bcd = 4'd6;
        #10
        tb_bcd = 4'd8;
		#10
        tb_bcd = 4'd9;
		#10
        tb_bcd = 4'd7;
		#10
        tb_bcd = 4'd5;
		#10
        tb_bcd = 4'd3;
		#10
        tb_bcd = 4'd1;
		
	end
    

	bcd_to_ssd DUT 
	(
		tb_bcd,
		tb_ssd
	);
  
  
endmodule