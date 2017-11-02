/*
	Generate Binary Sequence using T-FlipFlop : 0,8,5,3,7,2
	Dataflow Modelling
	16CO125
*/
module sequence_generator(Yt,Yt1,clock);
	
	input clock;
	output [3:0]Yt,Yt1;
	output w0,w1,w2,w3;
	tflipflop a3(.Yt(w3),.Yt1(Yt[3]),.clock(clock));
	tflipflop a2(.Yt(w2),.Yt1(Yt[2]),.clock(clock));
	tflipflop a1(.Yt(w1),.Yt1(Yt[1]),.clock(clock));
	tflipflop a0(.Yt(w0),.Yt1(Yt[0]),.clock(clock));
	
	assign w3=((~Yt[0])&(~Yt[1]));
	assign w2=(Yt[3] | Yt[0]);
	assign w1=(Yt[1]^Yt[0]);
	assign w0= (Yt[3] | (Yt[2]&Yt[1]));
	
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