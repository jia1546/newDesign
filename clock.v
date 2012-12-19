`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:39:30 12/18/2012 
// Design Name: 
// Module Name:    clock 
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
module clock(clk, reset, mode, turn, change, reset1, hour, minute, second, alert);
input clk;
input reset;
input[1:0] mode;
input turn;
input change;
input reset1;
output[7:0] hour;
output[7:0] minute;
output[7:0] second;
output alert;
wire mbit;
wire sbit;
wire clk_h;
wire clk_m;
wire clk_s;
wire rst;

counter a_counter(.clk_h(clk_h), .clk_m(clk_m), .clk_s(clk_s), .reset(rst), 
						.hour(hour), .minute(minute), .second(second),
						.mbit(mbit), .sbit(sbit));

control a_contorl(.clk(clk), .reset(reset), .mode(mode), 
						.turn(turn), .change(change), .reset1(reset1),
						.hour(hour), .minute(minute), .second(second),
						.mbit(mbit), .sbit(sbit),
						.rst(rst), .clk_h(clk_h), .clk_m(clk_m), .clk_s(clk_s), .alert(alert));

endmodule
