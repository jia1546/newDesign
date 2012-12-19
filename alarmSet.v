`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:00 12/19/2012 
// Design Name: 
// Module Name:    alarmSet 
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
module alarmSet(hour, minute, mode, turn, change, hourKeep, minuteKeep);
input[7:0] hour;
input[7:0] minute;
input[1:0] mode;
input turn;
input change;
output[7:0]hourKeep;
output[7:0] minuteKeep;
reg[7:0] hourKeep;
reg[7:0] minuteKeep;

initial begin
	hourKeep <= 0;
	minuteKeep <= 0;
end
	
always @(posedge change)begin
	if(mode == 2)begin
		if(turn == 1)
			hourKeep <= hourKeep + 1;
		if(turn == 0)
			minuteKeep <= minuteKeep + 1;
	end
end

endmodule
