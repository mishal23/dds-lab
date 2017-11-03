/*
	PIPO Shift Register
	DataFlow Modelling
	16CO125
*/
module pipo(data,dataout,clock,reset);
input reset,clock;
	input[3:0] data;
	output[3:0] dataout;

	d_flip_flop o1(data[0],clock,reset,dataout[0]);
	d_flip_flop o2(data[1],clock,reset,dataout[1]);
	d_flip_flop o3(data[2],clock,reset,dataout[2]);
	d_flip_flop o4(data[3],clock,reset,dataout[3]);

endmodule

module d_flip_flop(d,clock,reset,q);
    output q;
    input d,clock,reset;
    wire w1,w2,w3,w4,w1n,w2n,w3n,w4n;

    assign w1 = ~(d & clock);
    assign w1n = ~(~d & clock);
    assign w2 = ~( w1 & w2n);
    assign w2n = ~(~reset & w1n & w2);
    assign w3 = ~(~clock & w2);
    assign w3n = ~(~clock & w2n);
    assign w4 = ~(w4n & w3);
    assign w4n = ~(w4 & w3n);
    assign q=w4;
    
endmodule