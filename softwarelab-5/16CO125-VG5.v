/*
	PIPO Shift Register
	Gate Modelling
	16CO125
*/
module pipo(data,dataout,clock,reset);
	input reset,clock;
	input[3:0] data;
	output[3:0] dataout;

	d_flip_flop o0(data[0],clock,reset,dataout[0]);
	d_flip_flop o1(data[1],clock,reset,dataout[1]);
	d_flip_flop o2(data[2],clock,reset,dataout[2]);
	d_flip_flop o3(data[3],clock,reset,dataout[3]);

endmodule

module d_flip_flop(d,clock,reset,q);
    output q;
    input d,clock,reset;
    wire dn,resetn,clockn,w1,w2,w3,w4,w1n,w2n,w3n,w4n;

	nand (w1,d,clock);
    not (dn,d);
	nand (w1n,dn,clock);
	not (resetn,reset);
    nand (w2,w1,w2n);
	nand (w2n,resetn,w1n,w2);
	not (clockn,clock);
	nand (w3,clockn,w2);
	nand (w3n,clockn,w2n);
    nand (w4,w4n,w3);
    nand (w4n,w4,w3n);
    buf (q,w4);
   
endmodule