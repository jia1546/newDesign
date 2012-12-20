`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:25:46 12/19/2012 
// Design Name: 
// Module Name:    counter 
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
module counter(clk_h, clk_m, clk_s, reset, hour, minute, second, m_bit, s_bit);
input clk_s;
input clk_m;
input clk_h;
input reset;
output[7:0] hour;
output[7:0] minute;
output[7:0] second;
output m_bit;
output s_bit;

counter24 counter_h(.out(hour), .cbit(h_bit), .clk(clk_h), .reset(reset));
counter60 counter_m(.out(minute), .cbit(m_bit), .clk(clk_m), .reset(reset));
counter60 counter_s(.out(second), .cbit(s_bit), .clk(clk_s), .reset(reset));

endmodule
