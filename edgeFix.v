`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:23:27 12/20/2012 
// Design Name: 
// Module Name:    edgeFix 
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
module edgeFix(m_bit, second, m_bit_fix);
input m_bit;
input[7:0] second;
output m_bit_fix;

assign m_bit_fix = (m_bit == 1)?(second == 0?1:0):m_bit;

endmodule
