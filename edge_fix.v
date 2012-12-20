`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:17:58 12/20/2012 
// Design Name: 
// Module Name:    edge_fix 
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
module edge_fix(m_bit, second, m_bit_fix);
input m_bit;
input[7:0] second;
output m_bit_fix;
reg m_bit_fix;

always @(m_bit)begin
	if(m_bit == 1)begin
		if(second > 1)//hold the logical "1" for 1 seconds
			m_bit_fix <= 0;
	end
	else
		m_bit_fix <= m_bit;
end

endmodule
