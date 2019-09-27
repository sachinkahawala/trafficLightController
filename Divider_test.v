`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:45:17 06/29/2019
// Design Name:   Divider
// Module Name:   F:/HDL_Project/trafficLightController/Divider_test.v
// Project Name:  trafficLightController
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Divider_test;

	// Inputs
	reg clk;
	reg rst;
	
	// Outputs
	wire oneHz_enable;

	// Instantiate the Unit Under Test (UUT)
	Divider uut (
		.rst(rst),
		.clk(clk), 
		.oneHz_enable(oneHz_enable)
	);


	initial begin 
	clk=0;
	rst=0;
	#10;
	rst=1;
	#10;
	rst=0;
	end
	
	initial begin
	forever begin
	 #10 clk = ~clk;
	end 
	end
      
endmodule


