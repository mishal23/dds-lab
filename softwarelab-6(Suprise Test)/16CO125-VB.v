/*
	Mod6 Counter
	Behavorial  Modelling
	16CO125
*/
module sequence_generator(clock,Yt,Yt1);
	input clock;
	output [3:0] Yt,Yt1;
	reg[3:0] Yt,Yt1;
	
	initial begin
		Yt=3'b101;
	end
	always @(negedge clock)
		begin
			case(Yt)
				3'b000:
					begin
						Yt=3'b001;
					end
				3'b001:
					begin
						Yt=3'b010;
					end
				3'b010:
					begin
						Yt=3'b011;
					end
				3'b011:
					begin
						Yt=3'b100;
					end
				3'b100:
					begin
						Yt=3'b101;
					end
				3'b101:
					begin
						Yt=3'b000;
					end
			endcase
			Yt1<=Yt;
		end
endmodule
		
