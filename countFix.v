`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:34:07 12/20/2012 
// Design Name: 
// Module Name:    countFix 
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
module countFix(mode, turn, change, clk, m_bit, s_bit, clk_h, clk_m, clk_s);
input[1:0] mode;
input turn;
input change;
input clk;
input m_bit;
input s_bit;
output clk_h;
output clk_m;
output clk_s;
wire out2mux_h;
wire out2mux_m;

mux2_2 amux2_2(.turn(turn), .change(change), .m_bit(m_bit), .s_bit(s_bit), .out2mux_h(out2mux_h), .out2mux_m(out2mux_m));

mux2_1 mux2_1_h(.mode(mode), .clk(m_bit), .change(out2mux_h), .out(clk_h));
mux2_1 mux2_1_m(.mode(mode), .clk(s_bit), .change(out2mux_m), .out(clk_m));
mux2_1 mux2_1_s(.mode(mode), .clk(clk), .change(1'b0), .out(clk_s));

endmodule
