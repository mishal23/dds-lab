module dflipflop(D,Clock,Q,Qn);
   output Q,Qn;
   input Clock,D;
   wire Cn;   
   wire Cnn;  
   wire DQ;   
   wire DQn;  
   
   assign Cn = ~Clock;
   assign Cnn = ~Cn;
   d_latch dl(DQ,DQn,Cn,D);
   sr_latch_gated sr(Q,Qn,Cnn,DQ,DQn);   
endmodule 

// D-Latch
module d_latch(Q,Qn,G,D);
   output Q,Qn;
   input G,D;   
   
   wire Dn,D1,Dn1; 
   
   assign Dn=~D;
   assign D1 = G & D;
   assign Dn1 = G & Dn;
   assign Qn = ~(D1|Q);
   assign Q = ~(Dn1|Qn);
endmodule

// SR-Latch
module sr_latch_gated(Q,Qn,G,S,R);
   output Q,Qn;
   input G,S,R;   
   
   wire S1,R1;
 
	assign S1 = G & S;
	assign R1 = G & R;
	assign Qn = ~(S1|Q);
	assign Q = ~(R1|Qn);

endmodule