`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:16:27 06/30/2019
// Design Name:   TrafficControllerMain
// Module Name:   F:/HDL_Project/trafficLightController/TrafficControllerMain_test.v
// Project Name:  trafficLightController
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TrafficControllerMain
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TrafficControllerMain_test;

	// Inputs
	reg Reset;
	reg Sensor;
	reg Walk_Request;
	reg Reprogram;
	reg [1:0] Time_Parameter_Selector;
	reg [3:0] Time_Value;
	reg clk;

	// Outputs
	
	//For visualization pourpose only
	wire [6:0] LEDs;
	wire expired;
	wire oneHz_enable;
	wire [3:0] value;
	wire [1:0] interval;
	
	
	// Instantiate the Unit Under Test (UUT)
	TrafficControllerMain uut (
		.Reset(Reset), 
		.Sensor(Sensor), 
		.Walk_Request(Walk_Request), 
		.Reprogram(Reprogram), 
		.Time_Parameter_Selector(Time_Parameter_Selector), 
		.Time_Value(Time_Value), 
		.clk(clk), 
		.LEDs(LEDs), //For visualization pourpose only
		.expired(expired),
		.oneHz_enable(oneHz_enable),
		.value(value),
		.interval(interval)
	);

	initial begin
		// Initialize Inputs
		Reset = 0;
		Sensor = 0;
		Walk_Request = 0;
		Reprogram = 0;
		Time_Parameter_Selector = 0;
		Time_Value = 0;
		clk = 0;
		#20
		// Wait 100 ns for global reset to finish
		#5
		Reset = 1;
		#5
		Reset = 0;
		#50
		//walk request
		Walk_Request = 1;
		#20
	   Walk_Request = 0;
		// Vehicle sensor request
		//Sensor = 1;
		
		

        
		// Add stimulus here

	end
	
	initial begin
	forever begin
	 #5 clk = ~clk;
	end 
	end
	
      
endmodule
