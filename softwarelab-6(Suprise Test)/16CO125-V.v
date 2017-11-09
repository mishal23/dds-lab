/*
	Mod6 Counter
	TestBench
	16CO125
*/
`timescale 1ns/1ps
module testbench;
	reg clock;
	wire[3:0] Yt,Yt1;
	
	sequence_generator f(clock,Yt,Yt1);
	
	initial begin
		$dumpfile("16CO125-V.vcd");
		$dumpvars(0,testbench);
	end
	initial begin
		clock=1'b0;
	end
	always #10 clock=~clock;
	initial begin
		$display("clock count(d) count(b)");
	end
	initial begin
		$monitor("%b      %d       %b",clock,Yt1,Yt1);
	end
	initial #500 $finish;
endmodule
