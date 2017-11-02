module dflipflop(d,clock,qn,q);
input d,clock;
output q,qn;
reg q,qn;
always @(posedge clock)
begin
	q <= d;
	qn <= ~d;
end
endmodule
