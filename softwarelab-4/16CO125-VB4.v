/*
	Generate Binary Sequence using T-FlipFlop : 0,8,5,3,7,2
	Behavorial Modelling
	16CO125
*/
module sequence_generator(Yt,Yt1,clock);
	input clock;
	output[3:0] Yt,Yt1;
	reg[3:0] Yt,Yt1;
	
	initial begin
		Yt=4'b0010;
	end
	always @(posedge clock)
		begin
			case (Yt)		
				4'b0000:	
					begin
						Yt1=4'b1000;
					end
				4'b1000:
					begin
						Yt1=4'b0101;
					end
				4'b0101:
					begin
						Yt1=4'b0011;
					end
				4'b0011:
					begin
						Yt1=4'b0111;
					end
				4'b0111:
					begin
						Yt1=4'b0010;
					end
				4'b0010:
					begin
						Yt1=4'b0000;
					end
			endcase
			Yt<=Yt1;
		end
endmodule
					