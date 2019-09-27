`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:40:12 06/29/2019 
// Design Name: 
// Module Name:    Timer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Timer(
    input [3:0] Value,
    input oneHz_enable,
    input start_timer,
	 input clk,
	 input Reset_Sync,
    output reg expired
    );
		 

	 reg [3:0] time_remain;
	 reg new =1; 
	 
	always@(posedge clk) begin
		
		if (!new) begin
			new = 1;
			time_remain = Value-1;
		end
			
		if (Reset_Sync)begin
			new = 0;
		end			
		if (start_timer) begin
			new =0;
		end
		expired = 0;
		
		if (oneHz_enable) begin
			if (!time_remain) begin
				expired = 1;
				end
	
			else begin
			time_remain = time_remain - 1;
			end
		end
				
																		
	end



endmodule