/*
	Generate Binary Sequence using T-FlipFlop : 0,8,5,3,7,2
	Gate Level Modelling
	16CO125
*/
module sequence_generator(Yt,Yt1,clock);
	
	input clock;
	output [3:0]Yt,Yt1;
	wire w1,w2,w3,w4;
	
	tflipflop a3(w3,Yt[3],clock);
	tflipflop a2(w2,Yt[2],clock);
	tflipflop a1(w1,Yt[1],clock);
	tflipflop a0(w0,Yt[0],clock);
	
	nor(w3,Yt[0],Yt[1]);
	or(w2,Yt[3],Yt[0]);
	xor(w1,Yt[1],Yt[0]);
	and(w4,Yt[2],Yt[1]);
	or(w0,Yt[3],w4);
endmodule

module tflipflop(Yt,Yt1,clock);
	input Yt;
	input clock;
	output Yt1;
	reg Yt1,Yt1c;
	initial begin
		Yt1=0;
		Yt1c=1;
	end
	always @(posedge clock)
	begin
		if(Yt==1'b1) 
			begin
				Yt1=(~Yt1);
				Yt1c=(~Yt1c);
			end
		else if(Yt==1'b0)
			begin
				Yt1=Yt1;
				Yt1c=Yt1c;
			end
	end
endmodule