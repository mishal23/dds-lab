// data flow modelling

module complement(a,b,c,d,w,x,y,z);
	input a,b,c,d;
	output reg w,x,y,z;	

always @(a,b,c,d)
begin	
	assign w = (~a) & (~b) & (~c);
	assign x = b^c;
	assign y = c;
	assign z = ~d;
end
endmodule
