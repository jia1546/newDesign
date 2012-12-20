`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:47:04 12/19/2012
// Design Name:   clock
// Module Name:   G:/kuaipan/Xilinx_Project/Project/newDesign/clock_test.v
// Project Name:  aclk
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clock_test;

	// Inputs
	reg clk;
	reg reset;
	reg [1:0] mode;
	reg turn;
	reg change;
	reg reset1;

	// Outputs
	wire [7:0] hour;
	wire [7:0] minute;
	wire [7:0] second;
	wire alert;

	// Instantiate the Unit Under Test (UUT)
	clock uut (
		.clk(clk), 
		.reset(reset), 
		.mode(mode), 
		.turn(turn), 
		.change(change), 
		.reset1(reset1), 
		.hour(hour), 
		.minute(minute), 
		.second(second), 
		.alert(alert)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		mode = 0;
		turn = 0;
		change = 0;
		reset1 = 0;
		#2
		
		reset = 1;
		#2
		reset = 0;
		#200
		
		//调整小时
		mode = 1;
		#1
		turn = 1;
		#1
		change = 1;
		#2
		change = 0;
		#2
		change = 1;
		#2
		change = 0;
		#1
		
		//正常计数
		mode = 0;
		#200
		
		//调整分钟
		mode = 1;
		#1
		turn = 0;
		#1
		change = 1;
		#2
		change = 0;
		#2
		change = 1;
		#2
		change = 0;
		#1
		
		//正常计数
		mode = 0;
		#200
		
		//设置闹钟(03:02:XX)
		mode = 2;
		#1
		turn = 1;
		#1
		change = 1;
		#2
		change = 0;
		#2
		change = 1;
		#2
		change = 0;
		#2
		change = 1;
		#2
		change = 0;
		#2
		turn = 0;
		change = 1;
		#2
		change = 0;
		#2
		change = 1;
		#2
		change = 0;
		#2
		reset1 = 1;
	end
	
	always #2 clk = ~clk;
      
endmodule

