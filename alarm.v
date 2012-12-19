`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:03:41 12/19/2012 
// Design Name: 
// Module Name:    alarm 
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
module alarm(mode, hour, minute, turn, change, hourKeep, minuteKeep);
input[1:0] mode;
input[7:0] hour;
input[7:0] minute;
input turn;
input change;
output hourKeep;
output minuteKeep;
reg hourKeep;
reg minuteKeep;

always @(mode, hour, minute)begin
	if(mode == 2)begin
		hourKeep <= hour;
		minuteKeep <= minute;
	end
end

always @(posedge change)begin
	if(turn == 1)
		hourKeep <= hourKeep + 1;
	if(turn == 0)
		minuteKeep <= minuteKeep + 1;
end

endmodule
