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
module control(clk, reset, mode, turn, change, reset1, hour, minute, second, mbit, sbit, rst, clk_h, clk_m, clk_s, alert);
input clk;
input reset;
input[1:0] mode;
input turn;
input change;
input reset1;
input[7:0]hour;
input[7:0]minute;
input[7:0]second;
input mbit;
input sbit;
output rst;
output clk_h;
output clk_m;
output clk_s;
output alert;
wire out2mux_h;
wire out2mux_m;
//wire clk_1Hz;
wire[7:0] hourKeep;
wire[7:0] minuteKeep;

alarmSet a_alarmSet(.hour(hour), .minute(minute), .mode(mode), .turn(turn), .change(change), 
							.hourKeep(hourKeep), .minuteKeep(minuteKeep));

ring a_ring(.hour(hour), .minute(minute), .hourKeep(hourKeep), .minuteKeep(minuteKeep), .reset1(reset1), .alert(alert));

//clk_1Hz a_clk_1Hz(.clk_50MHz(clk), .reset(reset), .clk_1Hz(clk_1Hz));

mux2_2 amux2_2(.turn(turn), .change(change), .m_out(mbit), .s_out(sbit), .out2mux_h(out2mux_h), .out2mux_m(out2mux_m));

mux2_1 mux2_1_h(.mode(mode), .clk(mbit), .change(out2mux_h), .out(clk_h));
mux2_1 mux2_1_m(.mode(mode), .clk(sbit), .change(out2mux_m), .out(clk_m));
//mux2_1 mux2_1_s(.mode(mode), .clk(clk_1Hz), .change(1'b0), .out(clk_s));
mux2_1 mux2_1_s(.mode(mode), .clk(clk), .change(1'b0), .out(clk_s));

assign rst = reset;

endmodule
