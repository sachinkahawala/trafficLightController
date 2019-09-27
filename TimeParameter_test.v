`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:53:39 06/29/2019
// Design Name:   TimeParameter
// Module Name:   F:/HDL_Project/trafficLightController/TimeParameter_test.v
// Project Name:  trafficLightController
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TimeParameter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TimeParameter_test;

	// Inputs
	reg [1:0] Selector;
	reg [3:0] Time_value;
	reg Prog_Sync;
	reg [1:0] interval;
	reg clk;

	// Outputs
	wire [3:0] value;

	// Instantiate the Unit Under Test (UUT)
	TimeParameter uut (
		.Selector(Selector), 
		.Time_value(Time_value), 
		.Prog_Sync(Prog_Sync), 
		.interval(interval), 
		.clk(clk), 
		.value(value)
	);

	initial begin
		// Initialize Inputs
		Selector = 2'b00;
		Time_value = 4'b0000;
		Prog_Sync = 0;
		interval = 2'b00;
		
		// Wait 100 ns for global reset to finish
		#100	 
       Selector = 2'b00; 
		 interval = 2'b01;

		#10 
		 Selector = 2'b01;
		 interval =2'b00;
		 
		#10
		Prog_Sync = 1; // here it will assign the previous assigned Time_value to value   
		
		#10
		Selector = 2'b01;
		Time_value = 4'b1111;
		interval =2'b00;
	end
	
	initial begin
	clk = 0;
	forever begin
	 #5 clk = ~clk;
	end 
	end
      
endmodule


