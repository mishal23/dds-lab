`timescale 1ns/1ps
module testbench();
reg d;
reg clock;
wire q,qn;

dflipflop in(d,clock,q,qn);

initial begin
	clock=0;
		forever #100 clock=~clock;
end
initial begin
		$dumpfile("16CO125-V3.vcd");   
		$dumpvars(0, in);
	end
initial begin
		d=0;
		$display("clock=%b d=%b q=%b",clock,d,q);
	#100;
		d=1;
		$display("clock=%b d=%b q=%b",clock,d,q);
	#100;
		d=1;
		$display("clock=%b d=%b q=%b",clock,d,q);
	#100;
		d=0;
		$display("clock=%b d=%b q=%b",clock,d,q);
	#100;
		d=1;
		$display("clock=%b d=%b q=%b",clock,d,q);
	#100;
		d=1;
		$display("clock=%b d=%b q=%b",clock,d,q);
end
initial #600 $finish;
endmodule
		