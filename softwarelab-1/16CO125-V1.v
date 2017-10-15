`timescale 1ns/1ps
module inp;
	reg a,b,c,d;
	wire w,x,y,z;
	complement out(.a(a),.b(b),.c(c),.d(d),.w(w),.x(x),.y(y),.z(z));
	
	initial
	begin
		$monitor("w x y z\n");
		$dumpfile("16CO125-V1.vcd");
		$dumpvars(0, inp);

		
		a=1'b0;
		b=1'b0;
		c=1'b0;
		d=1'b0;
		$monitor(w,x,y,z,"\n");
		
#10;
		a=1'b0;
		b=1'b0;
		c=1'b0;
		d=1'b1;
		$monitor(w,x,y,z,"\n");

#10;
		a=1'b0;
		b=1'b0;
		c=1'b1;
		d=1'b0;
		$monitor(w,x,y,z,"\n");

#10;		
		a=1'b0;
		b=1'b0;
		c=1'b1;
		d=1'b1;
		$monitor(w,x,y,z,"\n");

#10;		
		a=1'b0;
		b=1'b1;
		c=1'b0;
		d=1'b0;
		$monitor(w,x,y,z,"\n");

#10;
		a=1'b0;
		b=1'b1;
		c=1'b0;
		d=1'b1;
		$monitor(w,x,y,z,"\n");

#10;
		a=1'b0;
		b=1'b1;
		c=1'b1;
		d=1'b0;
		$monitor(w,x,y,z,"\n");

#10;
		a=1'b0;
		b=1'b1;
		c=1'b1;
		d=1'b1;
		$monitor(w,x,y,z,"\n");

#10;
		a=1'b1;
		b=1'b0;
		c=1'b0;
		d=1'b0;
		$monitor(w,x,y,z,"\n");

#10;
		a=1'b1;
		b=1'b0;
		c=1'b0;
		d=1'b1;
		$monitor(w,x,y,z,"\n");
	end
	initial #300 $finish;
endmodule
