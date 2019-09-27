`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:55:28 06/29/2019
// Design Name:   WalkRegister
// Module Name:   F:/HDL_Project/trafficLightController/WalkRegister_test.v
// Project Name:  trafficLightController
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: WalkRegister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module WalkRegister_test;

	// Inputs
	reg WR_Sync;
	reg WR_Reset;

	// Outputs
	wire WR;

	// Instantiate the Unit Under Test (UUT)
	WalkRegister uut (
		.WR_Sync(WR_Sync), 
		.WR_Reset(WR_Reset),  
		.WR(WR)
	);

	initial begin
		// Initialize Inputs
		WR_Sync = 0;
		WR_Reset = 0;
		// Wait 100 ns for global reset to finish
		
		#100;
      WR_Sync = 1;
		#10;
		WR_Sync = 0;
		#100;
		WR_Reset = 1;
		
		// Add stimulus here

	end
      
endmodule

