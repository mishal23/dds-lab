module dflipflop(D,Clock,Q,Qn);
   output Q,Qn;
   input Clock,D;
   wire Cn; 
   wire Cnn; 
   wire DQ;   
   wire DQn;  
   
   not(Cn,Clock);
   not(Cnn,Cn);   
   d_latch dl(DQ,DQn,Cn,D);
   sr_latch_gated sr(Q,Qn,Cnn,DQ,DQn);   
endmodule 

// D-Latch
module d_latch(Q,Qn,G,D);
   output Q,Qn;
   input G,D;   
   
   wire Dn,D1,Dn1; 
   
   not(Dn,D);   
   and(D1,G, D);
   and(Dn1,G, Dn);   
   nor(Qn,D1,Q);
   nor(Q,Dn1,Qn);
endmodule

// SR-Latch
module sr_latch_gated(Q,Qn,G,S,R);
   output Q,Qn;
   input G,S,R;   
   
   wire S1,R1;
   
   and(S1,G,S);
   and(R1,G,R);   
   nor(Qn,S1,Q);
   nor(Q,R1,Qn);
endmodule
