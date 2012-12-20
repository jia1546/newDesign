`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:51:01 12/18/2012 
// Design Name: 
// Module Name:    control 
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
module control(clk, reset, mode, turn, change, reset1, hour, minute, second, m_bit, s_bit, rst, clk_h, clk_m, clk_s, alert);
input clk;
input reset;
input[1:0] mode;
input turn;
input change;
input reset1;
input[7:0]hour;
input[7:0]minute;
input[7:0]second;
input m_bit;
input s_bit;
output rst;
output clk_h;
output clk_m;
output clk_s;
output alert;

//wire clk_1Hz;
wire[7:0] hourKeep;
wire[7:0] minuteKeep;
wire m_bit_fix;

//edgeFix a_edgeFix(.m_bit(m_bit), .second(second), .m_bit_fix(m_bit_fix));

alarmSet a_alarmSet(.hour(hour), .minute(minute), .mode(mode), .turn(turn), .change(change), 
							.hourKeep(hourKeep), .minuteKeep(minuteKeep));

ring a_ring(.hour(hour), .minute(minute), .hourKeep(hourKeep), .minuteKeep(minuteKeep), .reset1(reset1), .alert(alert));

countFix a_countFix(.mode(mode), .turn(turn), .change(change), 
							.clk(clk), .m_bit(m_bit), .s_bit(s_bit), 
							.clk_h(clk_h), .clk_m(clk_m), .clk_s(clk_s));

//clk_1Hz a_clk_1Hz(.clk_50MHz(clk), .reset(reset), .clk_1Hz(clk_1Hz));

assign rst = reset;

endmodule
