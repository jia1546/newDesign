module counter24(out, cbit, clk, reset);
input clk;
input reset;
output[7:0] out;
output cbit;
reg[7:0] out;
reg cbit;

always @(posedge clk or posedge reset)begin
	if(reset)begin
		out <= 0;
		cbit <= 0;
	end
 	else begin
		if(out == 'd23)begin
			out <= 0;
			cbit <= 1;
		end
		else begin
			out <= out + 1;
			cbit <= 0;
		end
	end
end

endmodule
