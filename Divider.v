`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:19:11 06/29/2019 
// Design Name: 
// Module Name:    Divider 
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
module Divider(
    input clk,
	 input rst,
    output reg oneHz_enable
    );
	 
	 localparam [24:0] constant = 25'd5;
	 reg [24:0]countdown = constant;
	 always@(posedge clk)
		begin
			if (rst) countdown = constant;
			else begin
				countdown = countdown - 1;
				oneHz_enable = (countdown == 0);
				if (!countdown) countdown = constant;
			end
		end


endmodule