`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:58 06/29/2019 
// Design Name: 
// Module Name:    TimeParameter 
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
module TimeParameter(
    input [1:0] Selector,
    input [3:0] Time_value,
    input Prog_Sync,
	 input [1:0] interval,
	 input clk,
    output reg [3:0] value
    );
	 
	 reg[3:0] tBase = 4'b0110, // interval value = 00
				 tExt = 4'b0011, // interval value = 01
				 tYel = 4'b0010; // interval value = 10
	     
						 
	always@(posedge clk) begin
	
	case (interval)
		
		2'b00: value = tBase;
		2'b01: value = tExt;
		2'b10: value = tYel;
		2'b11: value = 2*tBase;
	
	endcase
	// Times resets when the selector input is 00. Otherwise the values are seted respectively
	
	if (Prog_Sync) begin
		case (Selector) 
			2'b00: begin
						tBase = 4'b0110; 
						tExt = 4'b0011; 
						tYel = 4'b0010; 
					 end
			2'b01: tBase = Time_value;
			2'b10: tExt = Time_value;
			2'b11: tYel = Time_value;
		endcase
	end
		
	end

	

endmodule
