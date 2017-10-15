// Gate Modeling (9's complement of BCD 4 digit)

module complement(a,b,c,d,w,x,y,z);
	
	input a,b,c,d;
	output w,x,y,z;
	wire w1,w2,w3,w4;
	
	not(w1,a);  		// w1 = a`
	not(w2,b);			// w2 = b`
	not(w4,c);			// w4 = c`
	and(w3,w1,w2);		// w3 = w1.w2 = (a`.b`)
	and(w,w3,w4);		// w = w3.w4 = (a`.b`.c`)
	xor(x,b,c);			// x = (b xor c)
	buf(y,c);			// y = c
	not(z,d);			// z = d`
	
endmodule
	
 
