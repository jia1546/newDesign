`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:05:53 12/18/2012 
// Design Name: 
// Module Name:    ring 
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
module ring(hour, minute, hourKeep, minuteKeep, reset1, alert);
input[7:0] hour;
input[7:0] minute;
input[7:0]hourKeep;
input[7:0]minuteKeep;
input reset1;
output alert;
reg alert;


always@(minute)begin
	if(minute == 0 || (minute == minuteKeep && hour == hourKeep && reset1))
		alert = 1;
	else
		alert = 0;
end

endmodule
