/*
	PIPO Shift Register
	TestBench
	16CO125
*/
`timescale 1ns/1ps
module testbench;
	reg[3:0] data;
	wire[3:0] dataout;
	reg clock,reset;
	
	pipo f1(data,dataout,clock,reset);
	initial begin
		$dumpfile("16CO125-V5.vcd");
		$dumpvars(0,testbench);
	end
	
	always
		begin
			#10 clock=~clock;
		end
	
	initial begin
		$monitor("clock=%b  data=%b  dataout=%b",clock,data,dataout);
	end
	initial begin
		reset=0;
		clock=1;
		data=4'b0000;
		
		#20
			data=4'b0001;
		#20
			data=4'b0010;
		#20
			data=4'b0011;
		#20
			data=4'b0100;
		#20
			data=4'b0101;
		#20
			data=4'b0110;
		#20
			data=4'b0111;		
		#20
			data=4'b1000;
		#20
			data=4'b1001;
		#20
			data=4'b1010;
		#20
			data=4'b1011;
		#20
			data=4'b1100;
		#20
			data=4'b1110;
		#20
			data=4'b1111;
		
		$finish;
	end
endmodule