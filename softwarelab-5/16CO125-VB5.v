/*
	PIPO Shift Register
	Behavorial Modelling
	16CO125
*/
module pipo(data,dataout,clock,reset);
	output reg[3:0] dataout;
	input[3:0] data;
	input clock;
	input reset;
	always @(negedge clock)
		begin
			if(reset)
				dataout<=4'b0000;
			else
				dataout<=data;
		end
endmodule
