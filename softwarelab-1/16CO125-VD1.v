// data flow modelling

module complement(a,b,c,d,w,x,y,z);
	input a,b,c,d;
	output w,x,y,z;
	wire w1,w2,w3,w4;	
	
	assign w1 = ~a;
	assign w2 = ~b;
	assign w3 = w1&w2;
	assign w4 = ~c;
	assign w = w3&w4;
	assign x = b^c;
	assign y = c;
	assign z= ~d;

endmodule
