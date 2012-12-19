`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:50 12/18/2012
// Design Name:   mux2_1
// Module Name:   G:/kuaipan/Xilinx_Project/Project/NewDesign/mux2_1_test.v
// Project Name:  NewDesign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux2_1_test;

	// Inputs
	reg [1:0] mode;
	reg clk;
	reg change;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux2_1 uut (
		.mode(mode), 
		.clk(clk), 
		.change(change), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		mode = 0;
		clk = 0;
		change = 1;
		#2
		
		change = 0;
		#2
		
		mode = 1;
		#2 
		
		change = 1;
		#2
		
		mode = 0;
		#2 $stop;

	end
endmodule

