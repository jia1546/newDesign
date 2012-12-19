`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:59:58 12/18/2012
// Design Name:   clk_1Hz
// Module Name:   G:/kuaipan/Xilinx_Project/Project/NewDesign/clk_1Hz_test.v
// Project Name:  NewDesign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clk_1Hz
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clk_1Hz_test;

	// Inputs
	reg clk_50MHz;
	reg reset;

	// Outputs
	wire clk_1Hz;

	// Instantiate the Unit Under Test (UUT)
	clk_1Hz uut (
		.clk_50MHz(clk_50MHz), 
		.reset(reset), 
		.clk_1Hz(clk_1Hz)
	);

	initial begin
		// Initialize Inputs
		clk_50MHz = 0;
		reset = 1;
		#2
		reset = 0;
		#2
		reset = 1;
	end
	
	always #10 clk_50MHz = ~clk_50MHz;
      
endmodule

