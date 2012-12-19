`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:49:42 12/18/2012 
// Design Name: 
// Module Name:    clk_1Hz 
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
module clk_1Hz(clk_50MHz, reset, clk_1Hz);
input clk_50MHz;
input reset;
output clk_1Hz;
reg clk_1Hz;
reg[24:0] count;
always @(posedge clk_50MHz or posedge reset)begin
	if(reset == 1)begin
		clk_1Hz <= 0;
		count <= 0;
	end
	else begin
		if(count == 25000000)begin
			clk_1Hz <= ~ clk_1Hz;
			count <= 0;
		end
		else
			count <= count + 1;
	end
end
endmodule
