`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:01:36 12/18/2012 
// Design Name: 
// Module Name:    mux2_2 
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
module mux2_2(turn, change, m_out, s_out, out2mux_h, out2mux_m);
input turn;
input change;
input m_out;
input s_out;
output out2mux_h;
output out2mux_m;
reg out2mux_h;
reg out2mux_m;

always@(turn or change or m_out or s_out)begin
	if(turn == 1)begin
		out2mux_h = change;
		out2mux_m = s_out;
	end
	if(turn == 0)begin
		out2mux_h = m_out;
		out2mux_m = change;
	end
end


endmodule
