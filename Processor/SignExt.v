module SignExt(SEin, SEout);
	input [16:0] SEin;
	output reg [31:0] SEout;	
	
	initial begin
	   SEout=32'd0;
	end 
	
	always @(SEin) begin
		SEout[16:0] = SEin[16:0];
		if (SEin[16])begin
			SEout[31:17] <= 15'b111111111111111;
		end 
		else begin
			SEout[31:17] <= 15'b000000000000000;	
		end 
	end
	
endmodule