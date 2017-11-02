/*
	Generate Binary Sequence using T-FlipFlop : 0,8,5,3,7,2
	TestBench
	16CO125
*/
`timescale 1ns/1ps
module testbench;
	reg clock;
	wire[3:0] Yt,Yt1;
	sequence_generator f(Yt,Yt1,clock);
	initial begin
		$dumpfile("16CO125-V4.vcd");
		$dumpvars(0,testbench);
	end

	initial begin
		clock=1'b0;
		repeat(60)
			#2 clock=~clock;	
	end
	
	initial begin
		$monitor("clock=%b , count=%d",clock,Yt);
	end
	initial #200 $finish;
endmodule