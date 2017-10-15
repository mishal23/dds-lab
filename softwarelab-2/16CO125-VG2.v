// gate level modelling

module comparator(A,B,C2,C1,C0);

   output C2,C1,C0;                 // C2= (A=B),  C1= (A>B), C0= (A<B)
   input [3:0]A;
   input [3:0]B;   
   wire x0,x1,x2,x3,w4;

   xnor(x0,A[0],B[0]);       
   xnor(x1,A[1],B[1]);
   xnor(x2,A[2],B[2]);
   xnor(x3,A[3],B[3]);

   and(C2,x0,x1,x2,x3);   // C2= x0x1x2x3
   
   not(w4,B[3]);         // w4=B3'
   and(w5,A[3],w4);      // w5=A3w4
   not(w6,B[2]);         // w6=B2'
   and(w7,A[2],w6,x3);   // w7=A2w6x3
   not(w8,B[1]);         // w8=B1'
   and(w9,A[1],w8,x3,x2); // w9=A1w8x3x2
   not(w10,B[0]);         // w10=B0'
   and(w11,A[0],w10,x3,x2,x1);  //w11=A0w10x3x2x1
   or(C1,w5,w7,w9,w11);       // C1=w5w7w9w11

   nor(C0,C2,C1);            // C0= ~(C2 | C1)
endmodule
