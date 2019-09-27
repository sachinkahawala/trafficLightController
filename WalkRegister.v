`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:43:52 06/29/2019 
// Design Name: 
// Module Name:    WalkRegister 
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
module WalkRegister(
    input WR_Sync,
    input WR_Reset,
    output reg WR
    );
	 
	 always@(posedge WR_Sync or posedge WR_Reset) begin
	 if (WR_Sync) begin
			WR = 1;
		end
	 if (WR_Reset)begin
			WR = 0;
		end
	end

endmodule
