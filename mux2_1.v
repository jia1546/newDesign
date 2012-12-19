`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:48:02 12/18/2012 
// Design Name: 
// Module Name:    mux2_1 
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
module mux2_1(mode, clk, change, out);
input[1:0]mode;
input clk;
input change;
output out;
reg out;

always @(mode, clk, change)begin
	case(mode)
		0: out = clk;
		1: out = change;
		2: out = clk;
		default: out = clk;
	endcase
end
		
//assign out = (mode == 0)?clk:change;
	
endmodule
